.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/RequestListener;


# instance fields
.field public final synthetic $onFailed:Lkotlin/jvm/functions/Function0;

.field public final synthetic $onReady:Lkotlin/jvm/functions/Function0;

.field public final synthetic $requestId:I

.field public final synthetic $targetView:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;ILandroid/widget/ImageView;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$requestId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$targetView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$onFailed:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$onReady:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onLoadFailed(Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;)Z
    .locals 2

    const-string p1, "target"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$requestId:I

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v1

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$clearPendingVideoPosterBitmap(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$targetView:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$onFailed:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    return v0
.end method

.method public final onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Z
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "model"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "dataSource"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p3

    if-eqz p3, :cond_1

    iget p3, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$requestId:I

    invoke-static {p2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$getWallpaperRequestId$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)I

    move-result v0

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;->GLIDE_RESOURCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;

    invoke-direct {p3, p1, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;-><init>(Landroid/graphics/Bitmap;Lcom/deepalhome/launcher/wallpaper/WallpaperSnapshotSource;)V

    invoke-static {p2, p3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$detachBitmapIfNeeded(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Lcom/deepalhome/launcher/wallpaper/WallpaperView$CapturedWallpaperBitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->access$setPendingVideoPosterBitmap$p(Lcom/deepalhome/launcher/wallpaper/WallpaperView;Landroid/graphics/Bitmap;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$targetView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$loadVideoPosterIntoView$1;->$onReady:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
