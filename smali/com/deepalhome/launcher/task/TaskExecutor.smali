.class public final Lcom/deepalhome/launcher/task/TaskExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALIAS_DRIVE_STYLE:Ljava/lang/String; = "vc_alias_drive_style"

.field private static final ALIAS_FOG_LAMP:Ljava/lang/String; = "vc_alias_rear_fog_lamp_switch"

.field private static final ALIAS_HEADLIGHTS_STATUS:Ljava/lang/String; = "vc_alias_headlights_on"

.field private static final ALIAS_HEAD_SWITCH:Ljava/lang/String; = "vc_alias_head_light_switch"

.field private static final ENERGY_MANAGEMENT_MODE_TOPIC:Ljava/lang/String; = "EnergyInfo/EnergyManagementMode"

.field private static final FORCE_PURE_ELECTRIC_STATUS_TOPIC:Ljava/lang/String; = "VCU_2A1/VcuFEveSetSts"

.field public static final INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

.field private static final SPECIAL_FORCE_PURE_ELECTRIC_TO_CITY_DELAY_MS:J = 0x3e8L

.field private static final SPECIAL_FORCE_PURE_ELECTRIC_TO_CITY_TIMEOUT_MS:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "TaskExecutor"

.field private static final fogStrobeRunnable:Lcom/deepalhome/launcher/task/TaskExecutor$fogStrobeRunnable$1;

.field private static fogStrobeRunning:Z

.field private static fogStrobeSavedState:Ljava/lang/Object;

.field private static fogStrobeState:Z

.field private static final handler:Landroid/os/Handler;

.field private static isAutoVolumeBySpeedEnable:Z

.field private static isSpecialForcePureElectricToCityFinalRequestSent:Z

.field private static volatile isSpecialForcePureElectricToCitySwitchInProgress:Z

.field private static isSpecialForcePureElectricToCityVehicleListenerRegistered:Z

.field private static lastKnownAutoScreenBrightnessEnabled:Ljava/lang/Boolean;

.field private static final lowBeamStrobeRunnable:Lcom/deepalhome/launcher/task/TaskExecutor$lowBeamStrobeRunnable$1;

.field private static lowBeamStrobeRunning:Z

.field private static lowBeamStrobeSavedState:Ljava/lang/Object;

.field private static lowBeamStrobeState:Z

.field private static pendingFogLampCommand:Ljava/lang/Runnable;

.field private static specialForcePureElectricToCityObservedMode:Ljava/lang/String;

.field private static specialForcePureElectricToCityObservedPureElectricEnabled:Ljava/lang/Boolean;

.field private static final specialForcePureElectricToCitySwitchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lkotlin/jvm/functions/Function1;",
            ">;"
        }
    .end annotation
.end field

.field private static specialForcePureElectricToCityTimeout:Ljava/lang/Runnable;

.field private static final specialForcePureElectricToCityVehiclePropertyListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$R688QXJxgzDRGcqdeyBfCmZQFKc(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->restoreS05FogLightSnapshot$lambda$26(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpvnxmPs_Jrj5N-mxySDw4KWiv0(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeActions$lambda$17(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WIcGr4Ns_Hy16am8Ry2nIPhSU6E(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeMagiskActivationAction$lambda$28(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bjIdz6qJFgsSZDZyhMPwcfpKaYE(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->setS05FogLamp$lambda$24(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cgynsUXA9AtPvK18M5ZdSls-78g()V
    .locals 0

    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->resetSpecialForcePureElectricToCitySwitchTimeout$lambda$41()V

    return-void
.end method

.method public static synthetic $r8$lambda$eu9inS2BCdPmSeYMXFCSY9eb0lY()V
    .locals 0

    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeActions$lambda$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$lTDKR3UpLHyg6fzT_vd37IzgmIM()V
    .locals 0

    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeActions$lambda$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$soVFgAcRDdSr7ERA5pJQ5IZrIow(Z)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->dispatchSpecialForcePureElectricToCitySwitchStateChanged$lambda$44(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wgYG-R44SBh6HXvCJPtwcLT8Img(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeActions$lambda$1(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TaskExecutor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor$fogStrobeRunnable$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TaskExecutor$fogStrobeRunnable$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->fogStrobeRunnable:Lcom/deepalhome/launcher/task/TaskExecutor$fogStrobeRunnable$1;

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor$lowBeamStrobeRunnable$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TaskExecutor$lowBeamStrobeRunnable$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->lowBeamStrobeRunnable:Lcom/deepalhome/launcher/task/TaskExecutor$lowBeamStrobeRunnable$1;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->specialForcePureElectricToCitySwitchListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor$specialForcePureElectricToCityVehiclePropertyListener$1;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor$specialForcePureElectricToCityVehiclePropertyListener$1;

    sput-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->specialForcePureElectricToCityVehiclePropertyListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$executeActions(Lcom/deepalhome/launcher/task/TaskExecutor;Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeActions(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getFogStrobeRunning$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TaskExecutor;->fogStrobeRunning:Z

    return v0
.end method

.method public static final synthetic access$getFogStrobeState$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TaskExecutor;->fogStrobeState:Z

    return v0
.end method

.method public static final synthetic access$getHandler$p()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getLowBeamStrobeRunning$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TaskExecutor;->lowBeamStrobeRunning:Z

    return v0
.end method

.method public static final synthetic access$getLowBeamStrobeState$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TaskExecutor;->lowBeamStrobeState:Z

    return v0
.end method

.method public static final synthetic access$getSpecialForcePureElectricToCityObservedPureElectricEnabled$p()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->specialForcePureElectricToCityObservedPureElectricEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic access$isSpecialForcePureElectricToCitySwitchInProgress$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TaskExecutor;->isSpecialForcePureElectricToCitySwitchInProgress:Z

    return v0
.end method

.method public static final synthetic access$maybeFinishSpecialForcePureElectricToCitySwitch(Lcom/deepalhome/launcher/task/TaskExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->maybeFinishSpecialForcePureElectricToCitySwitch()V

    return-void
.end method

.method public static final synthetic access$setFogStrobeState$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepalhome/launcher/task/TaskExecutor;->fogStrobeState:Z

    return-void
.end method

.method public static final synthetic access$setLowBeamStrobeState$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepalhome/launcher/task/TaskExecutor;->lowBeamStrobeState:Z

    return-void
.end method

.method public static final synthetic access$setS05FogLamp(Lcom/deepalhome/launcher/task/TaskExecutor;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/TaskExecutor;->setS05FogLamp(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$setSpecialForcePureElectricToCityObservedMode$p(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/deepalhome/launcher/task/TaskExecutor;->specialForcePureElectricToCityObservedMode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setSpecialForcePureElectricToCityObservedPureElectricEnabled$p(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/deepalhome/launcher/task/TaskExecutor;->specialForcePureElectricToCityObservedPureElectricEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static final synthetic access$showMagiskActivationProgressDialog(Lcom/deepalhome/launcher/task/TaskExecutor;)Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/task/TaskExecutor;->showMagiskActivationProgressDialog()Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private final native declared-synchronized beginSpecialForcePureElectricToCitySwitch()V
.end method

.method private final native buildReturnIntent()Landroid/content/Intent;
.end method

.method private final native dispatchMediaKeyEvent(I)V
.end method

.method private final native dispatchSpecialForcePureElectricToCitySwitchStateChanged(Z)V
.end method

.method private static final native dispatchSpecialForcePureElectricToCitySwitchStateChanged$lambda$44(Z)V
.end method

.method private final native ensureS05FogLightPrerequisite()J
.end method

.method private final native executeActions(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
.end method

.method private static final native executeActions$lambda$1(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
.end method

.method private static final native executeActions$lambda$17(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
.end method

.method private static final native executeActions$lambda$18()V
.end method

.method private static final native executeActions$lambda$19()V
.end method

.method private final native executeMagiskActivationAction(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
.end method

.method private static final native executeMagiskActivationAction$lambda$28(Ljava/util/List;ILjava/util/Set;ZLkotlin/jvm/functions/Function0;)V
.end method

.method private final native declared-synchronized finishSpecialForcePureElectricToCitySwitch()V
.end method

.method private final native isActiveActivity(Landroid/app/Activity;)Z
.end method

.method private final native isFrontAirConditionEnabled()Z
.end method

.method private final native declared-synchronized markSpecialForcePureElectricToCityFinalRequestSent()V
.end method

.method private final native declared-synchronized maybeFinishSpecialForcePureElectricToCitySwitch()V
.end method

.method private final native readAutoScreenBrightnessEnabled()Ljava/lang/Boolean;
.end method

.method private final native readS05FogLightSnapshot()Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;
.end method

.method private final native declared-synchronized registerSpecialForcePureElectricToCityVehicleListener()V
.end method

.method private final native declared-synchronized resetSpecialForcePureElectricToCitySwitchTimeout()V
.end method

.method private static final native resetSpecialForcePureElectricToCitySwitchTimeout$lambda$41()V
.end method

.method private final native restoreS05FogLightSnapshot(Lcom/deepalhome/launcher/task/TaskExecutor$S05FogLightSnapshot;)V
.end method

.method private static final native restoreS05FogLightSnapshot$lambda$26(Ljava/lang/Integer;)V
.end method

.method private final native sendCarSettingsIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static synthetic sendCarSettingsIntent$default(Lcom/deepalhome/launcher/task/TaskExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/task/TaskExecutor;->sendCarSettingsIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final native sendPowerModeIntent(I)V
.end method

.method private final native sendSceneActionServiceIntent(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native setAutoScreenBrightness(Z)V
.end method

.method private final native setHudLyricsEnabled(Z)V
.end method

.method private final native setS05DriveStyle(I)Z
.end method

.method private final native setS05EnergyManagementMode(I)Z
.end method

.method private final native setS05FogLamp(ZLkotlin/jvm/functions/Function0;)V
.end method

.method public static synthetic setS05FogLamp$default(Lcom/deepalhome/launcher/task/TaskExecutor;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/TaskExecutor;->setS05FogLamp(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private static final native setS05FogLamp$lambda$24(Lkotlin/jvm/functions/Function0;)V
.end method

.method private final native shouldUseSpecialForcePureElectricToCitySwitch(Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;)Z
.end method

.method private final native showCardPage()V
.end method

.method private final native showMagiskActivationProgressDialog()Lcom/deepalhome/launcher/widget/MagiskActivationProgressDialog;
.end method

.method private final native toggleAutoScreenBrightness()V
.end method

.method private final native toggleCardPage()V
.end method

.method private final native toggleFrontDefrost()V
.end method

.method private final native toggleRearDefrost()V
.end method

.method private final native declared-synchronized unregisterSpecialForcePureElectricToCityVehicleListener()V
.end method


# virtual methods
.method public final native declared-synchronized addOnSpecialForcePureElectricToCitySwitchStateChangedListener(Lkotlin/jvm/functions/Function1;)V
.end method

.method public final native execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
.end method

.method public final native execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;Lkotlin/jvm/functions/Function0;)V
.end method

.method public final native executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V
.end method

.method public final native isAutoVolumeBySpeedEnable()Z
.end method

.method public final native isSpecialForcePureElectricToCitySwitchInProgress()Z
.end method

.method public final native declared-synchronized removeOnSpecialForcePureElectricToCitySwitchStateChangedListener(Lkotlin/jvm/functions/Function1;)V
.end method

.method public final native setAutoVolumeBySpeedEnable(Z)V
.end method
