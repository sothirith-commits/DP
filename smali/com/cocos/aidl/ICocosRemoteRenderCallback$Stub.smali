.class public abstract Lcom/cocos/aidl/ICocosRemoteRenderCallback$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/cocos/aidl/ICocosRemoteRenderCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_17

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x64

    const-wide/16 v6, 0x32

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    const-string p1, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "onReportError: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "CocosRemoteRenderCallback"

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onRenderServiceError(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_3
    const-string p0, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_4
    const-string p1, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-nez p2, :cond_5

    monitor-exit p1

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_5
    iget-object p4, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz p4, :cond_b

    invoke-interface {p4}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->isPaused()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p4}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget v0, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    if-eq v0, v3, :cond_7

    iget-object v0, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    monitor-exit p1

    goto :goto_3

    :cond_7
    invoke-interface {p4}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->requestRender()V

    iget p4, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    if-ne p4, v3, :cond_8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_8
    :try_start_1
    iget-object p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    invoke-virtual {p4, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-boolean p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    if-eqz p4, :cond_9

    iget p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mWaitRenderTimeoutLogCount:I

    add-int/2addr p4, v2

    iput p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mWaitRenderTimeoutLogCount:I

    if-ge p4, v5, :cond_9

    const-string p4, "CocosRemoteRenderCallback"

    const-string v0, "Request render timeout"

    invoke-static {p4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p4

    :try_start_2
    invoke-virtual {p4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_0
    iget-boolean p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    if-nez p4, :cond_b

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    iget-object p0, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/renderclient/ClientRenderControl;

    invoke-virtual {p0}, Lcom/tinnove/renderclient/ClientRenderControl;->activeCamera()V

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onDrawFirstFrame()V

    goto :goto_2

    :cond_a
    :goto_1
    monitor-exit p1

    goto :goto_3

    :cond_b
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_c
    const-string p1, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d

    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    goto :goto_5

    :cond_d
    move-object p1, v0

    :goto_5
    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    const-string p2, "mIsFirstDrawTriggered = "

    iget-object p4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter p4

    :try_start_4
    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-nez v1, :cond_e

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    :goto_6
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_c

    :catchall_1
    move-exception p0

    goto/16 :goto_e

    :catchall_2
    move-exception p1

    goto/16 :goto_d

    :catch_1
    move-exception p1

    goto/16 :goto_a

    :cond_e
    :try_start_6
    iget-object v4, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v4, :cond_16

    invoke-interface {v4}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->isPaused()Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_7

    :cond_f
    iget v8, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    if-eq v8, v3, :cond_10

    iget-object v8, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz v8, :cond_10

    iget-object v8, v8, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsGLReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-nez v8, :cond_10

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_6

    :cond_10
    :try_start_8
    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v4}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->requestRender()V

    iget v4, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    if-ne v4, v3, :cond_11

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_6

    :cond_11
    :try_start_a
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Ljava/lang/Object;->wait(J)V

    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    if-nez p1, :cond_12

    iget-object p1, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_12

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    iget-object p1, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "CocosRemoteRenderCallback"

    iget-boolean v4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  mHardwareBuffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  isHardwareBufferUpdated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget-object v4, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p1, Lcom/tinnove/renderclient/ClientRenderControl;

    invoke-virtual {p1}, Lcom/tinnove/renderclient/ClientRenderControl;->activeCamera()V

    iget-object p1, p1, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p1, :cond_12

    invoke-interface {p1}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onDrawFirstFrame()V

    :cond_12
    iget-boolean p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    if-eqz p1, :cond_14

    iget p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mWaitRenderTimeoutLogCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mWaitRenderTimeoutLogCount:I

    if-ge p1, v5, :cond_13

    const-string p1, "CocosRemoteRenderCallback"

    const-string p2, "Request render timeout"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_6

    :cond_14
    :try_start_c
    iget-object p1, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-eqz p1, :cond_16

    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p2, :cond_16

    check-cast p1, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p1, p2}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->insertReleaseSyncFence(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_8

    :cond_15
    :goto_7
    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    goto/16 :goto_6

    :cond_16
    :goto_8
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    :goto_9
    invoke-static {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_b

    :goto_a
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_9

    :goto_b
    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    monitor-exit p4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :goto_d
    :try_start_10
    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {p2}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    throw p1

    :goto_e
    monitor-exit p4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw p0

    :cond_17
    const-string p1, "com.cocos.aidl.ICocosRemoteRenderCallback"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_18

    sget-object p1, Landroid/hardware/HardwareBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/HardwareBuffer;

    goto :goto_f

    :cond_18
    move-object p1, v0

    :goto_f
    check-cast p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    if-nez p4, :cond_1a

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result p2

    if-nez p2, :cond_19

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_19
    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    goto/16 :goto_11

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "client="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", onUpdateHardwareBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  mHardwareBuffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "  isPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CocosRemoteRenderCallback"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    sget-object v5, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->UPDATE_TEXTURE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-ne v5, p1, :cond_1b

    goto :goto_11

    :cond_1b
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1c

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_1c
    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_10

    :cond_1d
    iget-object v4, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz v4, :cond_1e

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v6

    iget-object v4, v4, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast v4, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object v4, v4, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz v4, :cond_1e

    invoke-interface {v4, v5, v6}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onViewSizeChanged(II)V

    :cond_1e
    iget-object v4, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    if-eqz v4, :cond_1f

    const-string v5, " setHardwareBuffer:null"

    const-string v6, "TextureRenderer"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mBufferToCreateTexture:Landroid/hardware/HardwareBuffer;

    iget-object p4, p4, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

    iget-object p4, p4, Lcom/cocos/remoterender/client/lib/TextureRenderer;->mIsHardwareBufferUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1f
    new-instance p4, Lcom/umeng/analytics/pro/ao;

    invoke-direct {p4, p0, p2, p1}, Lcom/umeng/analytics/pro/ao;-><init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;Ljava/lang/ref/WeakReference;Landroid/hardware/HardwareBuffer;)V

    invoke-virtual {v3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_20
    :goto_10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "onUpdateHardwareBuffer, newBuffer is null or closed"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2
.end method
