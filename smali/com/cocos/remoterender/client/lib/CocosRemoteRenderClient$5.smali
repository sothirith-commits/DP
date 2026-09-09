.class public final Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;


# direct methods
.method public constructor <init>(Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const-string p0, "CocosRemoteRenderClient"

    const-string p1, "onBindingDied"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "CocosRemoteRenderClient"

    const-string v0, "onNullBinding"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    invoke-virtual {p0}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->doUnbindService()V

    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_0

    const-string p1, "Please start the RenderService server apk and grant SD card permissions"

    invoke-interface {p0, p1}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onRenderServiceError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "CocosRemoteRenderClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "----> onServiceConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mIsServiceBound: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsBindingService: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "CocosRemoteRenderClient"

    const-string p1, "onServiceConnected, service was bound"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    sget v1, Lcom/cocos/aidl/ICocosBinderFactory$Stub;->$r8$clinit:I

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "com.cocos.aidl.ICocosBinderFactory"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/cocos/aidl/ICocosBinderFactory;

    if-eqz v2, :cond_2

    move-object p2, v1

    check-cast p2, Lcom/cocos/aidl/ICocosBinderFactory;

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    iput-object p2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    sget-object p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sServiceNameBinderFactoryMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p2, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;

    const/4 v1, 0x1

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v2, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    new-instance v3, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;

    iget-object p2, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    invoke-direct {v3, p2}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;-><init>(Lcom/cocos/aidl/ICocosBinderFactory;)V

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    monitor-enter p2

    :try_start_0
    iget p1, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I

    add-int/2addr p1, v1

    iput p1, p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    :goto_1
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    invoke-virtual {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->tryStopAndDestroyRemoteRenderInstance()V

    :try_start_1
    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    check-cast p1, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    invoke-virtual {p1, v0}, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->setClientOffscreenMode(Z)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceFullClassName:Ljava/lang/String;

    iget-object v1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderServiceConfigName:Ljava/lang/String;

    iget-object v2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mUuid:Ljava/lang/String;

    check-cast p2, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    invoke-virtual {p2, v0, v1, v2}, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/cocos/aidl/ICocosRemoteRender;

    move-result-object p2

    iput-object p2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    sget-object p2, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sFactoryCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$1;

    check-cast p1, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;

    invoke-virtual {p1, p2}, Lcom/cocos/aidl/ICocosBinderFactory$Stub$Proxy;->setFactoryCallback(Lcom/cocos/aidl/ICocosBinderFactoryCallback;)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    if-nez p2, :cond_5

    iget-object p0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_4

    const-string p1, "Remote render instance is null"

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onRenderServiceError(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    check-cast p2, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p2, p1}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->setCallback(Lcom/cocos/aidl/ICocosRemoteRenderCallback;)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p2, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    iget p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientId:I

    check-cast p2, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p2, p1}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->setRealClientId(I)V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    check-cast p1, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;

    invoke-virtual {p1}, Lcom/cocos/aidl/ICocosRemoteRender$Stub$Proxy;->start()V

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object p1, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p1, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object p1, p1, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onRenderServiceConnected()V

    :cond_6
    iget-object p0, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "----> onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CocosRemoteRenderClient"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$5;->this$0:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsServiceBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mIsBindingService:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRenderView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v2, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v3, 0x10

    invoke-direct {v2, v3, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Lcom/cocos/remoterender/client/lib/renderview/IRenderView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderCallback:Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;

    if-eqz p0, :cond_1

    iput-boolean v1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderCallback;->mIsFirstDrawTriggered:Z

    :cond_1
    iget-object p0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mClientCallback:Lcom/umeng/analytics/pro/ah;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p0, Lcom/tinnove/renderclient/ClientRenderControl;

    iget-object p0, p0, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onRenderServiceDisconnected()V

    :cond_2
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mRemoteRenderInstance:Lcom/cocos/aidl/ICocosRemoteRender;

    iput-object p0, p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->mBinderFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    invoke-virtual {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->tryRemoveBinderFactory()V

    invoke-virtual {p1}, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->bindServiceWidthDelay()V

    return-void
.end method
