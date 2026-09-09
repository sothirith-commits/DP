.class public Lcom/cocos/remoterender/client/lib/renderview/RSImageView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/cocos/remoterender/client/lib/renderview/IRenderView;


# instance fields
.field public mCurrentBitmap:Landroid/graphics/Bitmap;

.field public mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

.field public mDrawMatrix:Landroid/graphics/Matrix;

.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field public mIsPaused:Z

.field public final mMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mMainThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mCurrentBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "RSImageView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    return-void
.end method

.method public final onResume()V
    .locals 2

    const-string v0, "RSImageView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    iput-object p3, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mDrawMatrix:Landroid/graphics/Matrix;

    int-to-float p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    int-to-float p2, p2

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    const/high16 p4, -0x40800000    # -1.0f

    invoke-virtual {p3, p1, p4, p0, p2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    return-void
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final requestExitAndWait()V
    .locals 2

    const-string v0, "RSImageView"

    const-string v1, "requestExitAndWait"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mIsPaused:Z

    return-void
.end method

.method public final requestRender()V
    .locals 2

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0x11

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->queueEvent(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mHardwareBuffer is null or closed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RSImageView"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDrawFrameCallback(Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mDrawFrameCallback:Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;

    return-void
.end method

.method public setHardwareBuffer(Landroid/hardware/HardwareBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHardwareBuffer hardwareBuffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RSImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/RSImageView;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-void
.end method
