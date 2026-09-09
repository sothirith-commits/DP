.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $incoming:Landroid/widget/ImageView;

.field public final synthetic $path:Ljava/lang/String;

.field public final synthetic $requestId:I

.field public final synthetic $stopVideoAfterReveal:Z

.field public final synthetic $type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILandroid/widget/ImageView;Ljava/lang/String;Lcom/deepalhome/launcher/wallpaper/WallpaperType;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$incoming:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iput-boolean p6, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$stopVideoAfterReveal:Z

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 3

    const-string v0, "target"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$requestId:I

    invoke-static {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$incoming:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    instance-of p1, p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$path:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-static {p2, p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$scheduleFileAccessRetry(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->updateNightMask()V

    invoke-static {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$notifyWallpaperFrameReadyInternal(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 6

    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p1, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "dataSource"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$requestId:I

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result p1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$incoming:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1$onResourceReady$1;

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-direct {v5, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1$onResourceReady$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$path:Ljava/lang/String;

    iget v2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$requestId:I

    iget-object v3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$type:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    iget-boolean v4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadWithCrossFade$1;->$stopVideoAfterReveal:Z

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$startScrollTransition(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Ljava/lang/String;ILcom/deepalhome/launcher/wallpaper/WallpaperType;ZLkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    return p2
.end method
