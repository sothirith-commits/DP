.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->$items:Ljava/util/List;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->$items:Ljava/util/List;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->access$deleteWallpaperFile(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->remove(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v6

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-eq v6, v7, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object v6

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne v6, v7, :cond_0

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-static {v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->resetToDefault$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1300c9

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->exitMultiSelectMode()V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$performBatchDelete$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->access$checkAndStopCarouselIfNecessary(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
