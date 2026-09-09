.class public Lcom/incall/serversdk/server/SvrMngProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mSvrMgrProxy:Lcom/incall/serversdk/server/SvrMngProxy;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mSvrManger:Lcom/incall/serversdk/server/ISvrManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVR_MNG_SvrMngProxy"

    iput-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/server/SvrMngProxy;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrMgrProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/server/SvrMngProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/server/SvrMngProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrMgrProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    :cond_0
    sget-object v0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrMgrProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    return-object v0
.end method

.method private getNewStub()Lcom/incall/serversdk/server/ISvrManager;
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v1, "getNewStub: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v2, "getNewStub: getSvrManagerService start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServiceName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v2, "getNewStub: getSvrManagerService end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/incall/serversdk/server/ISvrManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/server/ISvrManager;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    return-object p0
.end method


# virtual methods
.method public addServer(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/incall/serversdk/server/SvrMngProxy;->addServer(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public addServer(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v1, "addServer: pkgName = "

    const-string v2, ", actionName = "

    const-string v3, ", binder = "

    invoke-static {v1, p1, v2, p2, v3}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-interface {v0, p2, p3}, Lcom/incall/serversdk/server/ISvrManager;->addServer(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/incall/serversdk/server/ISvrManager;->addServerAndLinkDeath(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    :goto_0
    iget-object p1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p2, "addServer: success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p1, "addServer: failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void
.end method

.method public getClientBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getClientBinder: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/incall/serversdk/server/ISvrManager;->getServer(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getServer()Lcom/incall/serversdk/server/ISvrManager;
    .locals 3

    const-string v0, "mSvrManger = "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v2, "getServer: mSvrManger is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getNewStub()Lcom/incall/serversdk/server/ISvrManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v1, "getServer: svrMngService doesn\'t start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getNewStub()Lcom/incall/serversdk/server/ISvrManager;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.SVR_MNG_SERVICE"

    return-object p0
.end method

.method public registerSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerSvrConnListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/incall/serversdk/server/ISvrManager;->registerSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V

    iget-object p1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p2, "registerSvrConnListener: success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p1, "registerSvrConnListener: failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public registerSvrListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerSvrListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/incall/serversdk/server/ISvrManager;->registerSvrListener(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p2, "registerSvrListener: success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p1, "registerSvrListener: failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setStartWelcomeFinsh(Z)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setStartWelcomeFinish: isBoot = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/incall/serversdk/server/ISvrManager;->setStartWelcomeFinsh(Z)V
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

.method public unregisterSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterSvrConnListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/incall/serversdk/server/ISvrManager;->unregisterSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V

    iget-object p1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p2, "unregisterSvrConnListener: success"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p1, "unregisterSvrConnListener: failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterSvrListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterSvrListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    iget-object v0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->mSvrManger:Lcom/incall/serversdk/server/ISvrManager;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/incall/serversdk/server/ISvrManager;->unregisterSvrListener(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string v0, "unregisterSvrListener: success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngProxy;->TAG:Ljava/lang/String;

    const-string p1, "unregisterSvrListener: failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
