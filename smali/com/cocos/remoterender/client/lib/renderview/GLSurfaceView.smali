.class public Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;
.implements Lcom/cocos/remoterender/client/lib/renderview/IRenderView;


# static fields
.field public static final sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;


# instance fields
.field public mDebugFlags:I

.field public mDetached:Z

.field public mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

.field public mEGLContextClientVersion:I

.field public mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

.field public mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

.field public mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

.field public mPreserveEGLContextOnPause:Z

.field public mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

.field public final mThisWeakRef:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;-><init>(I)V

    sput-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method


# virtual methods
.method public final checkRenderThreadState()V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

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
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->requestExitAndWait()V
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

    iget p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDebugFlags:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    iget-boolean p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderMode:I

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

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestPaused:Z

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

    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow reattach ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLSurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter v2

    :try_start_0
    iget v0, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderMode:I

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
    new-instance v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eq v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->setRenderMode(I)V

    :cond_1
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDetached:Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLSurfaceView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDetached:Z

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onPause()V
    .locals 5

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onPause tid="

    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestPaused:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    const-string v0, "Main thread"

    const-string v2, "onPause waiting for mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "onResume tid="

    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestPaused:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestRender:Z

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v0, :cond_0

    const-string v0, "Main thread"

    const-string v2, "onResume waiting for !mPaused."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

.method public final queueEvent(Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

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
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->requestExitAndWait()V
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

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestRender:Z

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

    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;Z)V

    invoke-virtual {p0, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->setEGLConfigChooser(Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->checkRenderThreadState()V

    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;)V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->checkRenderThreadState()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLWrapper;)V
    .locals 0

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0, p1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Lcom/cocos/remoterender/client/lib/renderview/Renderer;)V
    .locals 2

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->checkRenderThreadState()V

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$SimpleEGLConfigChooser;-><init>(Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;Z)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLConfigChooser:Lcom/cocos/remoterender/client/lib/renderview/EGLConfigChooser;

    :cond_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/core/view/MenuHostHelper;

    const/16 v1, 0x1c

    invoke-direct {v0, v1, p0}, Landroidx/core/view/MenuHostHelper;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    :cond_1
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$DefaultWindowSurfaceFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(I)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mEGLWindowSurfaceFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLWindowSurfaceFactory;

    :cond_2
    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    new-instance p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter p1

    :try_start_0
    iput p3, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mWidth:I

    iput p4, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mHeight:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mSizeChanged:Z

    iput-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p2, p0, :cond_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mExited:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Main thread"

    const-string p4, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit p1

    :goto_1
    return-void

    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mHasSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mHasSurface:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

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

    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eqz p0, :cond_0

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestRender:Z

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public final surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 3

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->mGLThread:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;

    if-eqz p0, :cond_1

    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThreadManager;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v0, p0, :cond_0

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mWantRenderNotification:Z

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRequestRender:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mRenderComplete:Z

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Lcom/umeng/commonsdk/internal/c$2;

    new-instance v1, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0, p2}, Lcom/umeng/commonsdk/internal/c$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$GLThread;->mFinishDrawingRunnable:Lcom/umeng/commonsdk/internal/c$2;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_1

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
