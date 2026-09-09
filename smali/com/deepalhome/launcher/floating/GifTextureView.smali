.class public final Lcom/deepalhome/launcher/floating/GifTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

.field public currentPath:Ljava/lang/String;

.field public hasDrawable:Z

.field public volatile isRendering:Z

.field public loadGeneration:I

.field public final mainHandler:Landroid/os/Handler;

.field public volatile renderGeneration:I

.field public renderHandler:Landroid/os/Handler;

.field public renderThread:Landroid/os/HandlerThread;

.field public targetSizePx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$setupTexture$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public static syncBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    if-eqz p0, :cond_1

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getHasDrawable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    return p0
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->release()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p3

    invoke-static {p3, p1, p2}, Lcom/deepalhome/launcher/floating/GifTextureView;->syncBufferSize(Landroid/graphics/SurfaceTexture;II)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->startRenderLoop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->loadGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->loadGeneration:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->releaseDrawable()V

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderThread:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->currentPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->targetSizePx:I

    iput-boolean v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    return-void
.end method

.method public final releaseDrawable()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    return-void
.end method

.method public final startRenderLoop()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    iget v1, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    iget-object v2, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GifRender"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iput-object v2, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderThread:Landroid/os/HandlerThread;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    move-object v2, v3

    :goto_0
    new-instance v3, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v3, Lcom/blankj/utilcode/util/ToastUtils$2;

    invoke-direct {v3, v1, p0, v0, v2}, Lcom/blankj/utilcode/util/ToastUtils$2;-><init>(ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/os/Handler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final stopRenderLoop()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    iget-object v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final stopRendering()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRenderLoop()V

    return-void
.end method
