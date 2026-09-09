.class public final Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

.field public final mEventQueue:Ljava/util/ArrayList;

.field public mExited:Z

.field public mFinishedCreatingEglSurface:Z

.field public final mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

.field public mHasSurface:Z

.field public mHaveEglContext:Z

.field public mHaveEglSurface:Z

.field public mHeight:I

.field public mPaused:Z

.field public mRenderComplete:Z

.field public mRenderMode:I

.field public mRequestPaused:Z

.field public mRequestRender:Z

.field public mShouldExit:Z

.field public mSizeChanged:Z

.field public mSurfaceIsBad:Z

.field public mWaitingForSurface:Z

.field public mWantRenderNotification:Z

.field public mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWidth:I

    iput v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHeight:I

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    iput v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderMode:I

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWantRenderNotification:Z

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final guardedRun()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v0, 0x1

    new-instance v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    iget-object v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;-><init>(I)V

    iput-object v3, v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    iput-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    iput-boolean v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    iput-boolean v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWantRenderNotification:Z

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x0

    :goto_1
    :try_start_0
    sget-object v14, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :goto_2
    :try_start_1
    iget-boolean v15, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mShouldExit:Z

    if-eqz v15, :cond_1

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2

    :try_start_2
    const-string v0, "GLTextureView"

    const-string v3, "cleanup ..."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->tearDown()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    :cond_1
    :try_start_3
    iget-object v15, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v13, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Runnable;

    move v0, v2

    goto/16 :goto_a

    :cond_2
    iget-boolean v15, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    iget-boolean v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestPaused:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eq v15, v3, :cond_3

    :try_start_4
    iput-boolean v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    sget-object v15, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPaused is now "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " tid="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GLThread"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v1, p0

    goto/16 :goto_f

    :cond_3
    const/4 v3, 0x0

    :goto_3
    if-eqz v5, :cond_4

    const-string v0, "GLTextureView"

    const-string v1, "lostEglContext = true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglContextLocked()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v5, 0x0

    :cond_4
    if-eqz v3, :cond_6

    move-object/from16 v1, p0

    :try_start_5
    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread"

    const-string v15, "releasing EGL surface because paused tid="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v16, v5

    move v15, v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v16, v5

    move v15, v6

    goto :goto_5

    :cond_6
    move-object/from16 v1, p0

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_8

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    iget-boolean v0, v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mPreserveEGLContextOnPause:Z

    if-nez v0, :cond_8

    :goto_6
    const-string v0, "GLTextureView"

    const-string v2, "preserveEglContextOnPause == false"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglContextLocked()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releasing EGL context because paused tid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "GLThread"

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHasSurface:Z

    if-nez v0, :cond_a

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread"

    const-string v3, "noticed TextureView surface lost tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSurfaceIsBad:Z

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_a
    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread"

    const-string v3, "noticed TextureView surface acquired tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWaitingForSurface:Z

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_b
    if-eqz v4, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLThread"

    const-string v3, "sending render notification tid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWantRenderNotification:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderComplete:Z

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v4, 0x0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v0, :cond_d

    :try_start_6
    iget-object v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->start()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x1

    :try_start_7
    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v8, 0x1

    goto :goto_7

    :catch_0
    move-exception v0

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0

    :cond_d
    :goto_7
    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    move v6, v15

    :goto_8
    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_20

    iget-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSizeChanged:Z

    if-eqz v0, :cond_f

    iget v10, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWidth:I

    iget v9, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHeight:I

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWantRenderNotification:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noticing that we want render notification tid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GLThread"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSizeChanged:Z

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x1

    goto :goto_9

    :cond_f
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    iget-boolean v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWantRenderNotification:Z

    move/from16 v5, v16

    if-eqz v2, :cond_10

    const/4 v12, 0x1

    :cond_10
    :goto_a
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v13, :cond_11

    :try_start_8
    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    move v2, v0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    goto/16 :goto_10

    :cond_11
    if-eqz v7, :cond_13

    const-string v2, "GLThread"

    const-string v3, "egl createSurface"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v3, 0x1

    :try_start_9
    iput-boolean v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v7, v0

    goto :goto_b

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0

    :cond_12
    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const/4 v3, 0x1

    :try_start_b
    iput-boolean v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mFinishedCreatingEglSurface:Z

    iput-boolean v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    move v2, v0

    const/4 v0, 0x1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw v0

    :cond_13
    :goto_b
    if-eqz v6, :cond_15

    iget-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    iget-object v3, v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v3

    iget-object v2, v2, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v2, :cond_14

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    :cond_14
    check-cast v3, Ljavax/microedition/khronos/opengles/GL10;

    move v6, v0

    :cond_15
    if-eqz v8, :cond_17

    const-string v2, "GLThread"

    const-string v3, "onSurfaceCreated"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v2, :cond_16

    iget-object v2, v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    iget-object v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    iget-object v3, v3, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    check-cast v2, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v2}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->onSurfaceCreated()V

    :cond_16
    move v8, v0

    :cond_17
    if-eqz v11, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLThread"

    const-string v11, "onSurfaceChanged("

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v2, :cond_18

    iget-object v2, v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    check-cast v2, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v2, v10, v9}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->onSurfaceChanged(II)V

    :cond_18
    move v11, v0

    :cond_19
    iget-object v2, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v2, :cond_1a

    iget-object v3, v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    check-cast v3, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v3}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->onDrawFrame()V

    :cond_1a
    iget-object v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    iget-object v14, v3, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v15, v3, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v3, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v14, v15, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v0

    const/16 v14, 0x3000

    if-nez v0, :cond_1b

    iget-object v0, v3, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    goto :goto_c

    :cond_1b
    move v0, v14

    :goto_c
    if-eqz v2, :cond_1c

    iget-object v2, v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    check-cast v2, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v2}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->onAfterPresent()V

    :cond_1c
    if-eq v0, v14, :cond_1e

    const/16 v2, 0x300e

    if-eq v0, v2, :cond_1d

    const-string v2, "GLThread"

    const-string v3, "eglSwapBuffers"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cocos/remoterender/client/lib/renderview/EGLLogWrapper;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v0, 0x1

    :try_start_d
    iput-boolean v0, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSurfaceIsBad:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_d

    :catchall_6
    move-exception v0

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    throw v0

    :cond_1d
    const/4 v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLThread"

    const-string v5, "egl context lost tid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move v5, v0

    goto :goto_d

    :cond_1e
    const/4 v0, 0x1

    :goto_d
    if-eqz v12, :cond_1f

    move v4, v0

    const/4 v12, 0x0

    :cond_1f
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_20
    const/4 v0, 0x1

    goto :goto_e

    :cond_21
    const/4 v0, 0x1

    move v6, v15

    :goto_e
    :try_start_f
    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    move/from16 v5, v16

    const/4 v2, 0x0

    goto/16 :goto_2

    :goto_f
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :goto_10
    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2

    :try_start_11
    const-string v3, "GLTextureView"

    const-string v4, "cleanup ..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mGLTextureViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v3, :cond_22

    iget-object v3, v3, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mRenderer:Lcom/cocos/remoterender/client/lib/renderview/Renderer;

    if-eqz v3, :cond_22

    check-cast v3, Lcom/cocos/remoterender/client/lib/TextureRenderer;

    invoke-virtual {v3}, Lcom/cocos/remoterender/client/lib/TextureRenderer;->tearDown()V

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglSurfaceLocked()V

    invoke-virtual/range {p0 .. p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->stopEglContextLocked()V

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    throw v0
.end method

.method public final onWindowResize(II)V
    .locals 3

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWidth:I

    iput p2, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHeight:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSizeChanged:Z

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderComplete:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    if-ne p1, p0, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderComplete:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->readyToDraw()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Main thread"

    const-string v1, "onWindowResize waiting for render complete from tid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final readyToDraw()Z
    .locals 2

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mSurfaceIsBad:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHeight:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRequestRender:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderMode:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public final requestExitAndWait()V
    .locals 2

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mShouldExit:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :goto_0
    iget-boolean v1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z
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

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v2

    :try_start_1
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    throw v1

    :catchall_1
    move-exception p0

    monitor-exit v2

    throw p0

    :catch_0
    :goto_0
    sget-object v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v1

    :try_start_2
    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mExited:Z

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final setRenderMode(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mRenderMode:I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "renderMode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final stopEglContextLocked()V
    .locals 6

    const-string v0, "GLTextureView"

    const-string v1, "stopEglContextLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish() tid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EglHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->mEGLContextFactory:Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;

    iget-object v3, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v5}, Lcom/cocos/remoterender/client/lib/renderview/EGLContextFactory;->destroyContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)V

    :cond_0
    iput-object v2, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    :cond_1
    iget-object v1, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v1, :cond_2

    iget-object v3, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    iput-object v2, v0, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglContext:Z

    sget-object p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView;->sGLThreadManager:Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThreadManager;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    return-void
.end method

.method public final stopEglSurfaceLocked()V
    .locals 3

    iget-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mHaveEglSurface:Z

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/renderview/GLTextureView$GLThread;->mEglHelper:Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroySurface()  tid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/renderview/GLSurfaceView$EglHelper;->destroySurfaceImp()V

    :cond_0
    return-void
.end method
