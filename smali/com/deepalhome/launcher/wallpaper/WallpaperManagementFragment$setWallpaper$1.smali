.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const v2, 0x7f1301c7

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    iget-object v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAbsolutePath(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->setWallpaper$default(Lcom/deepalhome/launcher/wallpaper/WallpaperManager;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$setWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const v0, 0x7f130436

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
