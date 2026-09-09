.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

.field public final cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance p1, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/deepalhome/launcher/wallpaper/cache/FileWallpaperListCache;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->cache:Lcom/deepalhome/launcher/wallpaper/cache/WallpaperListCache;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;->activeRequests:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final access$parseOpenListWallpapers(Lcom/deepalhome/launcher/wallpaper/WallpaperListRepository;Lcom/google/gson/JsonElement;I)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_18

    instance-of v1, v0, Lcom/google/gson/JsonObject;

    if-nez v1, :cond_0

    goto/16 :goto_11

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    const-string v1, "items"

    iget-object v0, v0, Lcom/google/gson/JsonObject;->members:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto/16 :goto_12

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/google/gson/JsonObject;

    const/4 v4, 0x0

    if-nez v3, :cond_3

    goto/16 :goto_e

    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v3, "isDir"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    if-eqz v3, :cond_4

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_10

    :cond_4
    const-string v3, "path"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_6

    goto/16 :goto_e

    :cond_6
    sget-object v5, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/http/OpenListProxy;->fileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v5, "thumb"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_9

    instance-of v7, v5, Lcom/google/gson/JsonNull;

    xor-int/2addr v7, v6

    if-eqz v7, :cond_7

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v7, "/donate"

    invoke-static {v5, v7}, Lcom/deepalhome/launcher/http/OpenListProxy;->resolveProxyAssetUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_9

    move-object v9, v5

    goto :goto_4

    :cond_9
    move-object/from16 v9, v17

    :goto_4
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_a
    move-object v5, v4

    :goto_5
    if-nez v5, :cond_b

    const-string v5, "/"

    invoke-static {v3, v5, v3}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_b
    sget-object v3, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->withoutStoragePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v3}, Lkotlin/text/StringsKt__StringsKt;->substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-object v8, v3

    goto :goto_6

    :cond_c
    move-object v8, v7

    :goto_6
    invoke-static {v5}, Lcom/deepalhome/launcher/wallpaper/RemoteAssetFileName;->withoutStoragePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v3, "size"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v10

    :goto_7
    move-wide v15, v10

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x0

    goto :goto_7

    :goto_8
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_e
    const-string v2, ""

    const/16 v3, 0x2e

    invoke-static {v5, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->substringAfterLast(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-static {v2, v3}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoExtension(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_f

    :goto_9
    move/from16 v18, v5

    goto :goto_d

    :cond_f
    invoke-static {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isImageExtension(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    :goto_a
    move/from16 v18, v6

    goto :goto_d

    :cond_10
    if-nez v4, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_12

    goto :goto_9

    :cond_12
    :goto_b
    if-nez v4, :cond_13

    goto :goto_c

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_14

    goto :goto_a

    :cond_14
    :goto_c
    move/from16 v18, p2

    :goto_d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v7

    new-instance v4, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x10f8

    const/16 v22, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    invoke-direct/range {v6 .. v22}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_e
    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-virtual {v4}, Lclub/deepal/launcher3/wallpaper/WallpaperItem;->getWallpaperUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :cond_17
    move-object v0, v2

    goto :goto_12

    :goto_10
    const-string v1, "WallpaperListRepository"

    const-string v2, "Failed to parse OpenList wallpapers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    goto :goto_12

    :cond_18
    :goto_11
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :goto_12
    return-object v0
.end method
