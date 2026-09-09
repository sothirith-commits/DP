.class public final Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string p0, "Current auto navigation mode="

    const-string p1, "IPCSkillDispatcher obtained successfully="

    const-string v0, "IPCOwner version check compatible="

    const-string v1, "System navigation IPC service connected descriptor="

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p2, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "System navigation IPC service connected, but binder is null"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sput-boolean v3, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    sput-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    return-void

    :cond_0
    sget-object v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const/4 v4, 0x1

    sput-boolean v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    :try_start_0
    sget v5, Lkotlin/Result;->$r8$clinit:I

    sget-object v5, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    :try_start_1
    sget v1, Lm8/IPCOwner$Stub;->$r8$clinit:I

    const-string v1, "com.tinnove.navi.skill.IPCOwner"

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v5, v1, Lm8/IPCOwner;

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    check-cast v1, Lm8/IPCOwner;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v1, Lm8/IPCOwner$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Lm8/IPCOwner$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_2
    check-cast v1, Lm8/IPCOwner$Stub$Proxy;

    invoke-virtual {v1}, Lm8/IPCOwner$Stub$Proxy;->isCompatible()Z

    move-result p2

    sget-object v5, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lm8/IPCOwner$Stub$Proxy;->getSkillDispatcher()Lm8/IPCSkillDispatcher;

    move-result-object p2

    sput-object p2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_3

    :cond_4
    move p1, v3

    :goto_3
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    invoke-virtual {v1}, Lm8/IPCOwner$Stub$Proxy;->getPublisher()Lm8/IPCPublisher;

    move-result-object p1

    if-nez p1, :cond_5

    const-string p0, "IPCPublisher acquisition failed"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_5
    sget-object p2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->forecastObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$forecastObserver$1;

    check-cast p1, Lm8/IPCPublisher$Stub$Proxy;

    invoke-virtual {p1, p2}, Lm8/IPCPublisher$Stub$Proxy;->subscribeBehaviorPrediction(Ln8/IPCForecastObserver;)V

    sget-object p2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->pushMessageObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$pushMessageObserver$1;

    invoke-virtual {p1, p2}, Lm8/IPCPublisher$Stub$Proxy;->subscribePushMessage(Ln8/IPCPushMessageObserver;)V

    sget-object p2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->mainPathChangeObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$mainPathChangeObserver$1;

    invoke-virtual {p1, p2}, Lm8/IPCPublisher$Stub$Proxy;->subscribeMainPathChange(Ln8/IPCMainPathChangeObserver;)V

    sget-object p2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->guideInfoObserver:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;

    invoke-virtual {p1, p2}, Lm8/IPCPublisher$Stub$Proxy;->subscribeGuideInfo(Ln8/IPCGuideInfoObserver;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result p2

    if-ne p2, v4, :cond_6

    const-string p2, "Takeover system navigation as soon as coordinates are obtained"

    goto :goto_4

    :cond_6
    const-string p2, "Wait for system navigation to start before takeover"

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", interruptSystem="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getS05VoiceAutoNaviMode()I

    move-result p0

    if-ne p0, v4, :cond_7

    move v3, v4

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const-string p0, "Subscribed to system navigation BehaviorPrediction"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const-string p0, "Subscribed to system navigation PushMessage/MainPathChange/GuideInfo"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    sput-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to subscribe to system navigation IPC: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "System navigation IPC service disconnected"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bindS05NaviSkillService(Landroid/content/Context;)V

    :cond_0
    return-void
.end method