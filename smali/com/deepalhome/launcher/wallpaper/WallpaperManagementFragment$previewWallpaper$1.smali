.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;
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

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    const v1, 0x7f1301c7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;->refreshList$1()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment$Companion;

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->$item:Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/wallpaper/DownloadedWallpaper;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAbsolutePath(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperPreviewDialogFragment;-><init>()V

    new-instance v2, Lkotlin/Pair;

    const-string v3, "KEY_PATH"

    invoke-direct {v2, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/logging/Utf8Kt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment$previewWallpaper$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "WallpaperPreviewDialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
