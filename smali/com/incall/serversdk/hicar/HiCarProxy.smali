.class public Lcom/incall/serversdk/hicar/HiCarProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/hicar/IHiCarManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HiCarProxy"

.field private static volatile instance:Lcom/incall/serversdk/hicar/HiCarProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/hicar/HiCarProxy;
    .locals 2

    sget-object v0, Lcom/incall/serversdk/hicar/HiCarProxy;->instance:Lcom/incall/serversdk/hicar/HiCarProxy;

    if-nez v0, :cond_1

    const-class v0, Lcom/incall/serversdk/hicar/HiCarProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/hicar/HiCarProxy;->instance:Lcom/incall/serversdk/hicar/HiCarProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/hicar/HiCarProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/hicar/HiCarProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/hicar/HiCarProxy;->instance:Lcom/incall/serversdk/hicar/HiCarProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const-class v0, Lcom/incall/serversdk/hicar/HiCarProxy;

    monitor-exit v0

    goto :goto_2

    :goto_1
    const-class v1, Lcom/incall/serversdk/hicar/HiCarProxy;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lcom/incall/serversdk/hicar/HiCarProxy;->instance:Lcom/incall/serversdk/hicar/HiCarProxy;

    return-object v0
.end method


# virtual methods
.method public closeVoice()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0}, Lcom/incall/serversdk/hicar/IHiCarManager;->closeVoice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public disConnectDevice()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0}, Lcom/incall/serversdk/hicar/IHiCarManager;->disConnectDevice()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0}, Lcom/incall/serversdk/hicar/IHiCarManager;->getPhoneName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.hicar.service"

    return-object p0
.end method

.method public isConnected()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0}, Lcom/incall/serversdk/hicar/IHiCarManager;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarManager;->registerHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarManager;->registerHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarManager;->unRegisterHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unRegisterHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/hicar/IHiCarManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/hicar/IHiCarManager;->unRegisterHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
