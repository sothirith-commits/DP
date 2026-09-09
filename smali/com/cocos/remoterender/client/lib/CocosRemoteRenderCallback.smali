.class public final Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;
.super Lcom/cocos/aidl/ICocosRemoteRenderCallback$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/cocos/remoterender/client/lib/renderview/IDrawFrameCallback;


# static fields
.field public static final UPDATE_TEXTURE_TOKEN:Ljava/lang/Object;


# instance fields
.field public mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

.field public final mClient:Ljava/lang/ref/WeakReference;

.field public mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field public mIsFirstDrawTriggered:Z

.field public mIsInsertAcquireSyncFence:Z

.field public mIsWaitRenderTimeout:Z

.field public mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

.field public final mRequestRenderLock:Ljava/lang/Object;

.field public mWaitRenderTimeoutLogCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->UPDATE_TEXTURE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;)V
    .locals 2

    invoke-direct {p0}, Lcom/cocos/aidl/ICocosRemoteRenderCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    iput-boolean v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mWaitRenderTimeoutLogCount:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    :cond_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->destroy()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final onDrawFrameBegin()V
    .locals 4

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    iget-object v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-static {v1}, Lcom/cocos/remoterender/client/lib/HardwareBufferPatch;->insertAcquireSyncFence(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mAcquireSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDrawFrameEnd()V
    .locals 3

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mClient:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-boolean v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsInsertAcquireSyncFence:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v2}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->safeCloseSyncFencePFd(Landroid/os/ParcelFileDescriptor;)V

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/cocos/remoterender/client/lib/HardwareBufferPatch;->insertReleaseSyncFence()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mReleaseSyncFencePFd:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsWaitRenderTimeout:Z

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mRequestRenderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
