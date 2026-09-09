.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $path:Ljava/lang/String;

.field public final synthetic $requestId:I

.field public final synthetic $stopVideoAfterReveal:Z

.field public final synthetic $type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

.field public final synthetic $useIncomingTarget:Z

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILjava/lang/String;ZZLcom/deepalhome/launcher/wallpaper/WallpaperType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$path:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$stopVideoAfterReveal:Z

    iput-boolean p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$useIncomingTarget:Z

    iput-object p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3

    const-string v0, "target"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$requestId:I

    invoke-static {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setFirstLoad$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V

    instance-of p1, p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$path:Ljava/lang/String;

    invoke-static {p2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$scheduleFileAccessRetry(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    invoke-static {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$notifyWallpaperFrameReadyInternal(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p1, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "dataSource"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iget p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$requestId:I

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->bringToFront()V

    iget-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$stopVideoAfterReveal:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getVideoController(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->stopPlayback()V

    :cond_1
    iget-boolean p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$useIncomingTarget:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$isPrimaryVisible$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Z

    move-result p2

    xor-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setPrimaryVisible$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$inactiveImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$inactiveImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$activeImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$activeImageView(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)Landroid/widget/ImageView;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$path:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setCurrentWallpaperPath$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadDirectly$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setCurrentWallpaperType$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$commitVideoPosterState(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperType;)V

    invoke-static {p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setFirstLoad$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Z)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$clearFileAccessRetry(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$notifyWallpaperFrameReadyInternal(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    move p3, v0

    :cond_3
    :goto_0
    return p3
.end method
