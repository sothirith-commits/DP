.class public abstract Lcom/incall/serversdk/base/BaseProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SERVER_CONNECTED:I = 0x1

.field private static final SERVER_CONN_IDEL:I = -0x1

.field private static final SERVER_DISCONNECTED:I = 0x2

.field private static final SVRC_CONN_STATE_REREGISTER:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClientBinder:Landroid/os/IBinder;

.field private mHandler:Landroid/os/Handler;

.field protected mInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mIsConnect:Z

.field private mServerConnChangeListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/incall/serversdk/server/OnSrvConnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServerConnState:I

.field private mSvrConnListener:Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/incall/serversdk/base/BaseProxy<",
            "TT;>.SvrConn",
            "Listener;"
        }
    .end annotation
.end field

.field private final mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SVR_MNG_BaseProxy"

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    new-instance v0, Lcom/incall/serversdk/base/BaseProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/incall/serversdk/base/BaseProxy$1;-><init>(Lcom/incall/serversdk/base/BaseProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/incall/serversdk/server/SvrMngProxy;->getInstance()Lcom/incall/serversdk/server/SvrMngProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    invoke-virtual {v0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->getInterface()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->getServerName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/incall/serversdk/base/BaseProxy;->registerSvrConnListener(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/incall/serversdk/base/BaseProxy;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/incall/serversdk/base/BaseProxy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mIsConnect:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/incall/serversdk/base/BaseProxy;I)I
    .locals 0

    iput p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnState:I

    return p1
.end method

.method public static synthetic access$400(Lcom/incall/serversdk/base/BaseProxy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/incall/serversdk/base/BaseProxy;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/base/BaseProxy;->notifyClientSvrConnChanged(Z)V

    return-void
.end method

.method private isBinderActive()Z
    .locals 5

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    const-string v0, "isBinderActive: clientBinder is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    const-string v0, "isBinderActive: interface is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isAvailableUseSvr: binderAlive = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pingBinder = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSvrConnect()Z
    .locals 0

    iget-boolean p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mIsConnect:Z

    return p0
.end method

.method private notifyClientSvrConnChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "notifyClientSvrConnChanged: isConnected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/server/OnSrvConnChangeListener;

    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "notifyClientSvrConnChanged: listener = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/incall/serversdk/server/OnSrvConnChangeListener;->onSrvConnChange(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerSvrConnListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerSvrConnListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;-><init>(Lcom/incall/serversdk/base/BaseProxy;Lcom/incall/serversdk/base/BaseProxy$1;)V

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrConnListener:Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    invoke-virtual {p0, p1, v0}, Lcom/incall/serversdk/server/SvrMngProxy;->registerSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V

    :cond_0
    return-void
.end method

.method private unregisterSvrConnListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterSvrConnListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrConnListener:Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;

    invoke-virtual {v0, p1, p0}, Lcom/incall/serversdk/server/SvrMngProxy;->unregisterSvrConnListener(Ljava/lang/String;Lcom/incall/serversdk/server/ISvrConnListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getClientBinder()Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/incall/serversdk/server/SvrMngProxy;->getClientBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getClientBinder: mClientBinder = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterface()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-string v0, "getInterface: mInterface = "

    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->getServerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/incall/serversdk/server/SvrMngProxy;->getClientBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getInterface: isBinderAlive = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    invoke-interface {v3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", pingBinder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    invoke-interface {v3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v1, v1, v4

    invoke-interface {v1}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$Stub"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "asInterface"

    const-class v4, Landroid/os/IBinder;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v3, p0, Lcom/incall/serversdk/base/BaseProxy;->mClientBinder:Landroid/os/IBinder;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    iget-object v1, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    return-object p0
.end method

.method public abstract getServerName()Ljava/lang/String;
.end method

.method public isAvailableUseSvr()Z
    .locals 1

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;->isBinderActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    invoke-virtual {v0}, Lcom/incall/serversdk/server/SvrMngProxy;->getServer()Lcom/incall/serversdk/server/ISvrManager;

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->getInterface()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;->isBinderActive()Z

    move-result p0

    return p0
.end method

.method public reRegisterCallBacks()V
    .locals 0

    return-void
.end method

.method public registerConnChangeListener(Lcom/incall/serversdk/server/OnSrvConnChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerConnChangeListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;->isSvrConnect()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/incall/serversdk/server/OnSrvConnChangeListener;->onSrvConnChange(Z)V

    :cond_0
    return-void
.end method

.method public registerSvrListener(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "registerSvrListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/incall/serversdk/server/SvrMngProxy;->registerSvrListener(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public unRegisterSvrListener(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unRegisterSvrListener: binderName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mSvrMngProxy:Lcom/incall/serversdk/server/SvrMngProxy;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/incall/serversdk/server/SvrMngProxy;->unregisterSvrListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterConnChangeListener(Lcom/incall/serversdk/server/OnSrvConnChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterConnChangeListener: listener = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mServerConnChangeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
