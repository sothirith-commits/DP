.class public final synthetic Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Landroid/media/MediaPlayer;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;Ljava/lang/Runnable;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$2:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$timeout"

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "$mp"

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment$tryPlayVideo$1$$ExternalSyntheticLambda0;->f$2:Landroid/media/MediaPlayer;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz p1, :cond_b

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->timeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    goto/16 :goto_3

    :cond_0
    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewProgressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    if-lez p1, :cond_9

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v4, :cond_8

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v4, v2

    :goto_0
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lez v5, :cond_9

    if-gtz v4, :cond_4

    goto :goto_2

    :cond_4
    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v1, v5

    int-to-float v6, v4

    div-float v7, v1, v6

    iget-object v8, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

    iput v5, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    div-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_5
    iput v4, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    mul-float/2addr v6, p1

    float-to-int p1, v6

    iput p1, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_1
    iget-object p1, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperItemDialogFragment;->binding:Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WallpaperItemDialogBinding;->previewTextureView:Landroid/view/TextureView;

    invoke-virtual {p1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_3
    return-void

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method
