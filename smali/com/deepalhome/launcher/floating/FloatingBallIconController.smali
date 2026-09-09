.class public final Lcom/deepalhome/launcher/floating/FloatingBallIconController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cachedIconBitmap:Landroid/graphics/Bitmap;

.field public cachedIconDrawable:Landroid/graphics/drawable/Drawable;

.field public cachedIconPath:Ljava/lang/String;

.field public cachedIconSizePx:I

.field public gifLoadToken:I

.field public final gifViewProvider:Lkotlin/jvm/functions/Function0;

.field public final iconViewProvider:Lkotlin/jvm/functions/Function0;

.field public pendingGifPath:Ljava/lang/String;

.field public pendingGifSizePx:I

.field public pendingTextureGifPath:Ljava/lang/String;

.field public pendingTextureGifSizePx:I

.field public final rootViewProvider:Lkotlin/jvm/functions/Function0;

.field public staticLoadToken:I

.field public textureGifLoadToken:I


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$1;Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$2;Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$3;)V
    .locals 1

    const-string v0, "rootViewProvider"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "iconViewProvider"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "gifViewProvider"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->rootViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->iconViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifViewProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 4

    iget v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifLoadToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifLoadToken:I

    iget v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->staticLoadToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->staticLoadToken:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifSizePx:I

    iget-object v2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/floating/GifTextureView;

    iget-object v3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    :cond_0
    iput-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    iput v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/deepalhome/launcher/floating/GifTextureView;->release()V

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iput-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    return-void
.end method
