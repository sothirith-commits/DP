.class public final Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sClientIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static sEngineLifecycleCallback:Ljava/lang/ref/WeakReference;

.field public static sEngineLifecycleReceiver:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;

.field public static final sFactoryCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$1;

.field public static sScriptEventListener:Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;

.field public static sScriptReturnListener:Lcom/tinnove/renderclient/CocosDataEventManager$ClientListener;

.field public static final sServiceNameBinderFactoryMap:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field public mAntialiasType:I

.field public mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

.field public mClientCallback:Lcom/umeng/analytics/pro/ah;

.field public final mClientId:I

.field public final mClipRect:Landroid/graphics/RectF;

.field public final mConnection:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

.field public mContext:Landroid/content/Context;

.field public mFactory:Landroidx/core/view/MenuHostHelper;

.field public mFxaaLevel:I

.field public final mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsPaused:Z

.field public final mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsStarted:Z

.field public final mIsStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsUseTextureView:Z

.field public mIsViewTouchEnabled:Z

.field public mIsViewTranslucent:Z

.field public final mMainThreadHandler:Landroid/os/Handler;

.field public final mOnTouchListener:Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;

.field public mRadius:F

.field public mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

.field public mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

.field public mRenderMode:I

.field public mRenderServiceConfigName:Ljava/lang/String;

.field public mRenderServiceFullClassName:Ljava/lang/String;

.field public mRenderServicePackageName:Ljava/lang/String;

.field public mRenderView:Landroid/view/View;

.field public final mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

.field public mTextureRenderer:Lcom/cocos/remoterender/client/lib/TextureRenderer;

.field public final mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sClientIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sServiceNameBinderFactoryMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$1;

    invoke-direct {v0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$1;-><init>()V

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sFactoryCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$1;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFxaaLevel:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mAntialiasType:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mUuid:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsUseTextureView:Z

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTranslucent:Z

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsViewTouchEnabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsStarted:Z

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsPaused:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    const-string v0, "com.cocos.remoterender.server"

    iput-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServicePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRadius:F

    new-instance v1, Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v0, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClipRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderMode:I

    new-instance v1, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mOnTouchListener:Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;

    new-instance v1, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(BI)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mSurfaceCallback:Lcom/bumptech/glide/GlideBuilder$1;

    new-instance v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

    invoke-direct {v1, p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;-><init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mConnection:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

    new-instance v1, Landroidx/core/view/MenuHostHelper;

    const/16 v2, 0x1b

    invoke-direct {v1, v2, p0}, Landroidx/core/view/MenuHostHelper;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mFactory:Landroidx/core/view/MenuHostHelper;

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sClientIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p1

    iput p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    const-string p0, "CocosRemoteRenderClient"

    const-string p1, "[Render Service Client Version]: 0.9.5, unknown, 2"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final bindServiceWidthDelay()V
    .locals 4

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "CocosRemoteRenderClient"

    const-string v0, "bindServiceWidthDelay, already binding ..."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v2, 0xf

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final doUnbindService()V
    .locals 1

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mConnection:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
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

.method public final tryRemoveBinderFactory()V
    .locals 5

    sget-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sServiceNameBinderFactoryMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;

    if-eqz v1, :cond_1

    monitor-enter v1

    :try_start_0
    iget v2, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    const-string v2, "CocosRemoteRenderClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " tryRemoveBinderFactory ReferenceCount("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    monitor-enter v1

    :try_start_1
    iget v4, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter v1

    :try_start_2
    iget v2, v1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    if-nez v2, :cond_2

    const-string v1, "CocosRemoteRenderClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "All clients connected to ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") are disconnected!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v1

    throw p0

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    const-string p0, "CocosRemoteRenderClient"

    const-string v0, "Could not find factory"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void
.end method

.method public final tryStopAndDestroyRemoteRenderInstance()V
    .locals 3

    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast v0, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {v0}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-eqz v2, :cond_1

    :try_start_1
    check-cast v0, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    invoke-virtual {v0, v2}, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->destroyInstance(Lcom/cocos/aidl/ICocosRemoteRender;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    return-void
.end method
