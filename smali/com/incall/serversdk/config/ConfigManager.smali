.class public Lcom/incall/serversdk/config/ConfigManager;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/config/IConfigManager;
.implements Lcom/incall/serversdk/server/OnSrvConnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/config/ConfigManager$OnConfigListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/config/IConfigService;",
        ">;",
        "Lcom/incall/serversdk/config/IConfigManager;",
        "Lcom/incall/serversdk/server/OnSrvConnChangeListener;"
    }
.end annotation


# static fields
.field private static CONFIG:Lcom/incall/serversdk/config/ConfigManager; = null

.field private static final TAG:Ljava/lang/String; = "ConfigManager"


# instance fields
.field private configListener:Lcom/incall/serversdk/config/IConfigListener;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/incall/serversdk/config/ConfigManager$OnConfigListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/incall/serversdk/config/ConfigManager$1;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/config/ConfigManager$1;-><init>(Lcom/incall/serversdk/config/ConfigManager;)V

    iput-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->configListener:Lcom/incall/serversdk/config/IConfigListener;

    invoke-virtual {p0, p0}, Lcom/incall/serversdk/base/BaseProxy;->registerConnChangeListener(Lcom/incall/serversdk/server/OnSrvConnChangeListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/incall/serversdk/config/ConfigManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/incall/serversdk/config/ConfigManager;
    .locals 1

    const-class p0, Lcom/incall/serversdk/config/ConfigManager;

    monitor-enter p0

    :try_start_0
    sget-object p0, Lcom/incall/serversdk/config/ConfigManager;->CONFIG:Lcom/incall/serversdk/config/ConfigManager;

    if-nez p0, :cond_0

    new-instance p0, Lcom/incall/serversdk/config/ConfigManager;

    invoke-direct {p0}, Lcom/incall/serversdk/config/ConfigManager;-><init>()V

    sput-object p0, Lcom/incall/serversdk/config/ConfigManager;->CONFIG:Lcom/incall/serversdk/config/ConfigManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/incall/serversdk/config/ConfigManager;->CONFIG:Lcom/incall/serversdk/config/ConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Lcom/incall/serversdk/config/ConfigManager;

    monitor-exit v0

    return-object p0

    :goto_1
    const-class v0, Lcom/incall/serversdk/config/ConfigManager;

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAIConfig()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getAIConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getAIConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getAIConfig RemoteException"

    goto :goto_0
.end method

.method public getAirConfig()[B
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getAirConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getAirConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getAirConfig RemoteException"

    goto :goto_0
.end method

.method public getAppConfig()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getAppConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getAppConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getAppConfig RemoteException"

    goto :goto_0
.end method

.method public getCarConfig()[B
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getCarConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getCarConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getCarConfig RemoteException"

    goto :goto_0
.end method

.method public getCarId()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getCarId isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getCarId()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getCarId RemoteException"

    goto :goto_0
.end method

.method public getCarType()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getCarType isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getCarType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getCarType RemoteException"

    goto :goto_0
.end method

.method public getCertid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getCertid isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getCertid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getCertid RemoteException"

    goto :goto_0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getIccid isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getIccid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getIccid RemoteException"

    goto :goto_0
.end method

.method public getLaunchConfig()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getLaunchConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getLaunchConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getLaunchConfig RemoteException"

    goto :goto_0
.end method

.method public getNaviType()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getNaviType isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getNaviType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getNaviType RemoteException"

    goto :goto_0
.end method

.method public getSalesArea()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getSalesArea isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getSalesArea()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getSalesArea RemoteException"

    goto :goto_0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.config.service"

    return-object p0
.end method

.method public getSettingConfig()[B
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getSettingConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getSettingConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getSettingConfig RemoteException"

    goto :goto_0
.end method

.method public getTbox()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getTbox isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getTbox()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getTbox RemoteException"

    goto :goto_0
.end method

.method public getTuid()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getTuid isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getTuid()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getTuid RemoteException"

    goto :goto_0
.end method

.method public getVehicleConfig()[B
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getVehicleConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getVehicleConfig()[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getVehicleConfig RemoteException"

    goto :goto_0
.end method

.method public getVin()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getVin isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getVin()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getVin RemoteException"

    goto :goto_0
.end method

.method public getVoiceType()I
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "getVoiceType isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->getVoiceType()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "getVoiceType RemoteException"

    goto :goto_0
.end method

.method public is3DAudio()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "is3DAudio isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->is3DAudio()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "is3DAudio RemoteException"

    goto :goto_0
.end method

.method public is4GConfig()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "is4GConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->is4GConfig()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "is4GConfig RemoteException"

    goto :goto_0
.end method

.method public isAirClean()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isAirClean isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isAirClean()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isAirClean RemoteException"

    goto :goto_0
.end method

.method public isAuthentication()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isAuthentication isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isAuthentication()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isAuthentication RemoteException"

    goto :goto_0
.end method

.method public isBlutoothKey()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isBlutoothKey isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isBlutoothKey()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isBlutoothKey RemoteException"

    goto :goto_0
.end method

.method public isCallingVoice()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isCallingVoice isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isCallingVoice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isCallingVoice RemoteException"

    goto :goto_0
.end method

.method public isDVR()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isDVR isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isDVR()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isDVR RemoteException"

    goto :goto_0
.end method

.method public isFunctionConfig(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isFunctionConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/config/IConfigService;->isFunctionConfig(II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isFunctionConfig RemoteException"

    goto :goto_0
.end method

.method public isHaveComfort()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isHaveComfort isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isHaveComfort()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isHaveComfort RemoteException"

    goto :goto_0
.end method

.method public isHavePM25()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isHavePM25 isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isHavePM25()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isHavePM25 RemoteException"

    goto :goto_0
.end method

.method public isMobileData()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isMobileData isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isMobileData()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isMobileData RemoteException"

    goto :goto_0
.end method

.method public isOversea()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isOversea isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isOversea()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isOversea RemoteException"

    goto :goto_0
.end method

.method public isShowOnline()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isShowOnline isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isShowOnline()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isShowOnline RemoteException"

    goto :goto_0
.end method

.method public isTboxConfig()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isTboxConfig isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isTboxConfig()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isTboxConfig RemoteException"

    goto :goto_0
.end method

.method public isTencentNavi()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isTencentNavi isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isTencentNavi()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isTencentNavi RemoteException"

    goto :goto_0
.end method

.method public isTencentVoice()Z
    .locals 3

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ConfigManager"

    if-nez v0, :cond_0

    const-string p0, "isTencentVoice isAvailableUseSvr false"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/config/IConfigService;

    invoke-interface {p0}, Lcom/incall/serversdk/config/IConfigService;->isTencentVoice()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, "isTencentVoice RemoteException"

    goto :goto_0
.end method

.method public onSrvConnChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSrvConnChange b="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "ConfigManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/config/IConfigService;

    iget-object p0, p0, Lcom/incall/serversdk/config/ConfigManager;->configListener:Lcom/incall/serversdk/config/IConfigListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/config/IConfigService;->registerListener(Lcom/incall/serversdk/config/IConfigListener;)V
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

.method public registerListener(Lcom/incall/serversdk/config/ConfigManager$OnConfigListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerListener listener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/incall/serversdk/config/ConfigManager$OnConfigListener;->onInitSuccess()V

    const-string p1, "registerListener: BaseProxy Service isSrvConned ,sync listener method"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "registerListener add size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public unRegisterListener(Lcom/incall/serversdk/config/ConfigManager$OnConfigListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unRegisterListener listener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfigManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unRegisterListener remove"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "unRegisterListener remove size="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/incall/serversdk/config/ConfigManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
