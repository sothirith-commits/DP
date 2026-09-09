.class public Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/cocos/remoterender/client/lib/renderview/IRenderView;


# static fields
.field public static final sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;


# instance fields
.field public mDebugFlags:I

.field public mDetached:Z

.field public mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

.field public mEGLContextClientVersion:I

.field public mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

.field public mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

.field public mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

.field public mPreserveEGLContextOnPause:Z

.field public mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

.field public final mThisWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;-><init>(I)V

    sput-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public final checkRenderThreadState$1()V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final finalize()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 0

    iget p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDebugFlags:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isPaused()Z
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestPaused:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow reattach ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2

    :try_start_0
    iget v0, v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderMode:I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDetached:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDetached:Z

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onPause()V
    .locals 5

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onPause tid="

    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "GLThread"

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestPaused:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    const-string v0, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onResume()V
    .locals 5

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onResume tid="

    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "GLThread"

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    const-string v0, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHasSurface:Z

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0, p2, p3}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->onWindowResize(II)V

    return-void

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHasSurface:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0, p2, p3}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final requestExitAndWait()V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public final requestRender()V
    .locals 2

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDebugFlags(I)V
    .locals 0

    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->checkRenderThreadState$1()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->checkRenderThreadState$1()V

    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->checkRenderThreadState$1()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->checkRenderThreadState$1()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLWrapper;)V
    .locals 0

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/cocos/remoterender/client/lib/renderview/Renderer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->checkRenderThreadState$1()V

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;Z)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Landroidx/core/view/MenuHostHelper;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$DefaultWindowSurfaceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$DefaultWindowSurfaceFactory;-><init>(I)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    new-instance p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
