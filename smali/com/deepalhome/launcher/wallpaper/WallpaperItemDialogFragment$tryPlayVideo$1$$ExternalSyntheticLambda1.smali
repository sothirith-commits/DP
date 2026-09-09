.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lclub/deepal/launcher3/wallpaper/WallpaperItem;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/Runnable;Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$3:I

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$5:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string p1, "this$0"

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$timeout"

    iget-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$urls"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$item"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$5:Lclub/deepal/launcher3/wallpaper/WallpaperItem;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, p3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p2, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->releaseMediaPlayer()V

    iget p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$3:I

    add-int/2addr p1, p3

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, p0, v1}, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->tryPlayVideo(Ljava/util/List;ILjava/lang/String;Lclub/deepal/launcher3/wallpaper/WallpaperItem;)V

    :goto_0
    return p3

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
