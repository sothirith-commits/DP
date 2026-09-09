.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $task:Lcom/liulishuo/okdownload/DownloadTask;

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;->$task:Lcom/liulishuo/okdownload/DownloadTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$resetDownloadBtn$1$1;->$task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "task"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->innerDownloadListener:Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/DownloadTask;->enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
