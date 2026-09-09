.class public Lcom/incall/serversdk/interactive/DoublePhoneProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/interactive/IDouInteractiveManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Double-PhoneProxy"

.field private static mInstance:Lcom/incall/serversdk/interactive/DoublePhoneProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/interactive/DoublePhoneProxy;
    .locals 2

    const-class v0, Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/interactive/DoublePhoneProxy;->mInstance:Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/interactive/DoublePhoneProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/interactive/DoublePhoneProxy;->mInstance:Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/incall/serversdk/interactive/DoublePhoneProxy;->mInstance:Lcom/incall/serversdk/interactive/DoublePhoneProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    monitor-exit v1

    return-object v0

    :goto_1
    const-class v1, Lcom/incall/serversdk/interactive/DoublePhoneProxy;

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.double.INTERACTIVE_SERVICE"

    return-object p0
.end method

.method public registerPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)Z
    .locals 2

    const-string v0, "register PhoneCallback"

    const-string v1, "Double-PhoneProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->registerPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendCallHead(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCallHead "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Double-PhoneProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallHead(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendCallInfo(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Double-PhoneProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public sendCallTime(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "send call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Double-PhoneProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->sendCallTime(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public unRegisterPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)Z
    .locals 2

    const-string v0, "unregister PhoneCallback"

    const-string v1, "Double-PhoneProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/interactive/IDouInteractiveManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/interactive/IDouInteractiveManager;->unRegisterPhoneCallback(Lcom/incall/serversdk/interactive/callback/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "next: service is not bind"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
