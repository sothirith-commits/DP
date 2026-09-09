.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

.field public static final onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnWallpaperChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    sget-object v4, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_RES:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    const/4 v5, 0x0

    const v6, 0x7f100030

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->resolveWallpaperType(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_RES:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    goto :goto_0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->copy$default(Lcom/deepalhome/launcher/wallpaper/Wallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILjava/lang/Object;)Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaper(Lcom/deepalhome/launcher/wallpaper/Wallpaper;)V

    return-object v1

    :cond_2
    return-object v2
.end method

.method public static resetToDefault$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaper(Lcom/deepalhome/launcher/wallpaper/Wallpaper;)V

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;-><init>(Lcom/deepalhome/launcher/wallpaper/Wallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resolveWallpaperType(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperType;
    .locals 3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-object p0

    :cond_0
    const-string v0, "content://"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "file://"

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const-string v0, "video/"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-object p0

    :cond_4
    const/16 v0, 0x2e

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3f

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoExtension(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    :goto_2
    return-object p0
.end method

.method public static setWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V
    .locals 9

    const-string v0, "filePath"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "direction"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->resolveWallpaperType(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v7

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, v8

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v8}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaper(Lcom/deepalhome/launcher/wallpaper/Wallpaper;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    invoke-direct {v0, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;-><init>(Lcom/deepalhome/launcher/wallpaper/Wallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->onWallpaperChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    return-void
.end method

.method public static switchWallpaper(Z)V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move v4, v6

    :goto_4
    const/4 v0, 0x1

    if-gez v4, :cond_8

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    goto :goto_5

    :cond_8
    if-eqz p0, :cond_9

    move v6, v0

    :cond_9
    add-int/2addr v4, v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int v3, v0, v2

    :goto_5
    if-ltz v3, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_b

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionMath;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_a

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->RIGHT_TO_LEFT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    goto :goto_6

    :cond_a
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;->LEFT_TO_RIGHT:Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;

    :goto_6
    invoke-static {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper(Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperTransitionDirection;)V

    :cond_b
    return-void
.end method
