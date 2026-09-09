.class public final Lcom/openos/virtualcar/VirtualCar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mCarManagerLock:Ljava/lang/Object;

.field public mConnectionRetryCount:I

.field public mEventHandler:Landroid/os/Handler;

.field public final mListenerRun:Lcom/openos/virtualcar/VirtualCar$1;

.field public mServiceListener:Lcom/openos/virtualcar/VirtualServiceReadyListener;

.field public final mServiceMap:Ljava/util/HashMap;

.field public final mServiceReady:Lcom/openos/virtualcar/VirtualCar$1;

.field public mServiceState:I

.field public final mVirtualCarDeathRecipent:Lcom/openos/ConnectionServiceBase$1;

.field public mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/openos/ConnectionServiceBase$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/openos/ConnectionServiceBase$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarDeathRecipent:Lcom/openos/ConnectionServiceBase$1;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mCarManagerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    const/16 v0, -0xcd

    iput v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceState:I

    new-instance v0, Lcom/openos/virtualcar/VirtualCar$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/openos/virtualcar/VirtualCar$1;-><init>(Lcom/openos/virtualcar/VirtualCar;I)V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mListenerRun:Lcom/openos/virtualcar/VirtualCar$1;

    new-instance v0, Lcom/openos/virtualcar/VirtualCar$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/openos/virtualcar/VirtualCar$1;-><init>(Lcom/openos/virtualcar/VirtualCar;I)V

    iput-object v0, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceReady:Lcom/openos/virtualcar/VirtualCar$1;

    return-void
.end method

.method public static declared-synchronized createVirtualCar(Lcom/openos/virtualcar/VirtualServiceReadyListener;Landroid/os/Handler;)Lcom/openos/virtualcar/VirtualCar;
    .locals 5

    const-string v0, "createVirtualCar:  return  virtualCar = "

    const-string v1, "createVirtualCar: "

    const-class v2, Lcom/openos/virtualcar/VirtualCar;

    monitor-enter v2

    :try_start_0
    const-string v3, "VCar_1.0.3.w"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    new-instance v1, Lcom/openos/virtualcar/VirtualCar;

    invoke-direct {v1}, Lcom/openos/virtualcar/VirtualCar;-><init>()V

    iput-object p0, v1, Lcom/openos/virtualcar/VirtualCar;->mServiceListener:Lcom/openos/virtualcar/VirtualServiceReadyListener;

    if-eqz p1, :cond_0

    iput-object p1, v1, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/HandlerThread;

    const-string p1, "VirtualCar thread"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, v1, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    :goto_0
    iget-object p0, v1, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    iget-object p1, v1, Lcom/openos/virtualcar/VirtualCar;->mServiceReady:Lcom/openos/virtualcar/VirtualCar$1;

    const-wide/16 v3, 0x96

    invoke-virtual {p0, p1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "VCar_1.0.3.w"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    throw p0
.end method


# virtual methods
.method public final createVirtualCarManager(Landroid/os/IBinder;)Lcom/openos/virtualcar/VirtualCarPropertyManager;
    .locals 1

    new-instance v0, Lcom/openos/virtualcar/VirtualCarPropertyManager;

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Lcom/openos/virtualcar/VirtualCarPropertyManager;-><init>(Landroid/os/IBinder;Landroid/os/Handler;)V

    return-object v0
.end method

.method public final getVirtualCarManager()Lcom/openos/virtualcar/VirtualCarPropertyManager;
    .locals 5

    const-string v0, "virtualcar_property_service"

    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "VCar_1.0.3.w"

    const-string v0, "getVirtualCarManager:    mVirtualCarService = null ,return null"

    invoke-static {p0, v0}, Lcom/openos/virtualcar/utils/WTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mCarManagerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/openos/virtualcar/VirtualCarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    :try_start_1
    iget-object v4, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    check-cast v4, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;

    invoke-virtual {v4, v0}, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;->getVirtualCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "VCar_1.0.3.w"

    const-string v4, "getVirtualCarManager could not get binder for service:virtualcar_property_service"

    invoke-static {v0, v4}, Lcom/openos/virtualcar/utils/WTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {p0, v4}, Lcom/openos/virtualcar/VirtualCar;->createVirtualCarManager(Landroid/os/IBinder;)Lcom/openos/virtualcar/VirtualCarPropertyManager;

    move-result-object v3

    iget-object v2, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/openos/virtualcar/VirtualCar;->serviceDied()V

    :cond_2
    :goto_1
    monitor-exit v1

    return-object v3

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final getVirtualCarService()Lcom/openos/virtualcar/IVirtualCar;
    .locals 6

    const-string v0, "get VirtualCarService success: "

    const-string v1, "VCar_1.0.3.w"

    const-string v2, "getmVirtualCarService()------"

    invoke-static {v1, v2}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.ServiceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getService"

    const-class v5, Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "virtualcar_service"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarDeathRecipent:Lcom/openos/ConnectionServiceBase$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v3, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    sget p0, Lcom/openos/virtualcar/IVirtualCar$Stub;->$r8$clinit:I

    const-string p0, "com.openos.virtualcar.IVirtualCar"

    invoke-interface {v3, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/openos/virtualcar/IVirtualCar;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/openos/virtualcar/IVirtualCar;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_1
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to linkToDeath VirtualCarService"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "connectService()   Exception"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const-string p0, "getmVirtualCarService()------  return null"

    invoke-static {v1, p0}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public final serviceDied()V
    .locals 7

    const-string v0, "VCar_1.0.3.w"

    const-string v1, "received VirtualCarService dead!!!!!"

    invoke-static {v0, v1}, Lcom/openos/virtualcar/utils/WTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarDeathRecipent:Lcom/openos/ConnectionServiceBase$1;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    :goto_0
    if-nez v1, :cond_0

    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    invoke-virtual {p0}, Lcom/openos/virtualcar/VirtualCar;->getVirtualCarService()Lcom/openos/virtualcar/IVirtualCar;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Sleep was interrupted"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iput-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    :try_start_1
    iget-object v1, p0, Lcom/openos/virtualcar/VirtualCar;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---->reConnected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/openos/virtualcar/utils/WTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openos/virtualcar/VirtualCarPropertyManager;

    iget-object v6, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v6, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;

    invoke-virtual {v6, v4}, Lcom/openos/virtualcar/IVirtualCar$Stub$Proxy;->getVirtualCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->virtualCarServiceReConnected(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p0}, Lcom/openos/virtualcar/VirtualCar;->serviceDied()V

    :cond_1
    iget-object p0, p0, Lcom/openos/virtualcar/VirtualCar;->mVirtualCarService:Lcom/openos/virtualcar/IVirtualCar;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :try_start_2
    invoke-interface {p0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to linkToDeath VirtualCarService"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
