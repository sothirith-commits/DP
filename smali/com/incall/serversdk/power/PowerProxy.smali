.class public Lcom/incall/serversdk/power/PowerProxy;
.super Lcom/incall/serversdk/base/BaseProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/power/PowerProxy$PowerListener;,
        Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/incall/serversdk/base/BaseProxy<",
        "Lcom/incall/serversdk/power/IPowerManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_ESSENTIAL_TASK:I = 0x5

.field private static final MSG_SCREEN_ACC_STATE:I = 0x3

.field private static final MSG_SCREEN_SIGNAL_CHANGE:I = 0x2

.field private static final MSG_SLEEPING:I = 0x4

.field private static final MSG_WEL_STATE_CHANGE:I = 0x1

.field private static final MSG_WORK_STATE_CHANGE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SVR_MNG_PowerProxy"

.field private static mPowerProxy:Lcom/incall/serversdk/power/PowerProxy;


# instance fields
.field private mPowerCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/power/PowerCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerListener:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

.field private mScreenStateCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/incall/serversdk/power/ScreenStateCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenStateListener:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/incall/serversdk/base/BaseProxy;-><init>()V

    new-instance v0, Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/power/PowerProxy$PowerListener;-><init>(Lcom/incall/serversdk/power/PowerProxy;)V

    iput-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerListener:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    new-instance v0, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;-><init>(Lcom/incall/serversdk/power/PowerProxy;)V

    iput-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateListener:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/incall/serversdk/power/PowerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->notifyPowerStateChange(I)V

    return-void
.end method

.method public static synthetic access$100(Lcom/incall/serversdk/power/PowerProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/incall/serversdk/power/PowerProxy;->notifyScreenSignalChange(II)V

    return-void
.end method

.method public static synthetic access$200(Lcom/incall/serversdk/power/PowerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->notifyACCStateChange(I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/incall/serversdk/power/PowerProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/power/PowerProxy;->notifySleeping()V

    return-void
.end method

.method public static synthetic access$400(Lcom/incall/serversdk/power/PowerProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/power/PowerProxy;->notifyEssentialTask()V

    return-void
.end method

.method public static synthetic access$500(Lcom/incall/serversdk/power/PowerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/power/PowerProxy;->notifyWelScreenStateChange(I)V

    return-void
.end method

.method public static getInstance()Lcom/incall/serversdk/power/PowerProxy;
    .locals 2

    const-class v0, Lcom/incall/serversdk/power/PowerProxy;

    monitor-enter v0

    :try_start_0
    sget-object v0, Lcom/incall/serversdk/power/PowerProxy;->mPowerProxy:Lcom/incall/serversdk/power/PowerProxy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/incall/serversdk/power/PowerProxy;

    invoke-direct {v0}, Lcom/incall/serversdk/power/PowerProxy;-><init>()V

    sput-object v0, Lcom/incall/serversdk/power/PowerProxy;->mPowerProxy:Lcom/incall/serversdk/power/PowerProxy;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/incall/serversdk/power/PowerProxy;->mPowerProxy:Lcom/incall/serversdk/power/PowerProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v1, Lcom/incall/serversdk/power/PowerProxy;

    monitor-exit v1

    return-object v0

    :goto_1
    const-class v1, Lcom/incall/serversdk/power/PowerProxy;

    monitor-exit v1

    throw v0
.end method

.method private notifyACCStateChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/PowerCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/incall/serversdk/power/PowerCallBack;->onACCStateChange(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyEssentialTask()V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/PowerCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/incall/serversdk/power/PowerCallBack;->onEssentialTaskReq()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyPowerStateChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/PowerCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/incall/serversdk/power/PowerCallBack;->onPowerStateChanage(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyScreenSignalChange(II)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/PowerCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/incall/serversdk/power/PowerCallBack;->onScreenSignalChange(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifySleeping()V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/PowerCallBack;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/incall/serversdk/power/PowerCallBack;->onSleeping()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyWelScreenStateChange(I)V
    .locals 2

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/incall/serversdk/power/ScreenStateCallBack;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/incall/serversdk/power/ScreenStateCallBack;->onWelScreenStateChange(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getACCState()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->getAccState()I

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

.method public getCurSreenSignal()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->getCurSreenSignal()I

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

.method public getServerName()Ljava/lang/String;
    .locals 0

    const-string p0, "com.incall.POWER_MANAGER_SERVICE"

    return-object p0
.end method

.method public isLongPressPower()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0}, Lcom/incall/serversdk/power/IPowerManager;->isLongPressPower()Z

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

.method public reRegisterCallBacks()V
    .locals 2

    const-string v0, "SVR_MNG_PowerProxy"

    const-string v1, "reRegisterCallBacks: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast v0, Lcom/incall/serversdk/power/IPowerManager;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerListener:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    invoke-interface {v0, p0}, Lcom/incall/serversdk/power/IPowerManager;->registerPowerListener(Lcom/incall/serversdk/power/IPowerListener;)V
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

.method public reboot(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reboot:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/power/IPowerManager;->reboot(Ljava/lang/String;)V
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

.method public registerPowerCallBack(Lcom/incall/serversdk/power/PowerCallBack;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerPowerCallBack: callback = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/power/IPowerManager;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerListener:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/power/IPowerManager;->registerPowerListener(Lcom/incall/serversdk/power/IPowerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public registerScreenStateCallBack(Lcom/incall/serversdk/power/ScreenStateCallBack;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerScreenStateCallBack: callback = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/power/IPowerManager;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateListener:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/power/IPowerManager;->registerScreenSateListener(Lcom/incall/serversdk/power/IScreenStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEssentialTaskState(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setEssentialTaskState~~~pkgName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setEssentialTaskState(Ljava/lang/String;I)V
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

.method public setScreenSignal(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setScreenSignal: screenType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", signalType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setScreenSignal(II)V
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

.method public setWorkingCompleted(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p0, Lcom/incall/serversdk/power/IPowerManager;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/power/IPowerManager;->setWorkingCompleted(Ljava/lang/String;I)V
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

.method public unregisterPowerCallBack(Lcom/incall/serversdk/power/PowerCallBack;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterPowerCallBack: callback = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerCallBacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/power/IPowerManager;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy;->mPowerListener:Lcom/incall/serversdk/power/PowerProxy$PowerListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/power/IPowerManager;->unregisterPowerListener(Lcom/incall/serversdk/power/IPowerListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterScreenStateCallBack(Lcom/incall/serversdk/power/ScreenStateCallBack;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterScreenStateCallBack: callback = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "SVR_MNG_PowerProxy"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/incall/serversdk/base/BaseProxy;->isAvailableUseSvr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateCallBacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    check-cast p1, Lcom/incall/serversdk/power/IPowerManager;

    iget-object p0, p0, Lcom/incall/serversdk/power/PowerProxy;->mScreenStateListener:Lcom/incall/serversdk/power/PowerProxy$ScreenStateListener;

    invoke-interface {p1, p0}, Lcom/incall/serversdk/power/IPowerManager;->unregisterScreenSateListener(Lcom/incall/serversdk/power/IScreenStateListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
