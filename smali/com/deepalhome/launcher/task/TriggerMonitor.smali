.class public final Lcom/deepalhome/launcher/task/TriggerMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor;

.field private static final LONG_PRESS_THRESHOLD:J = 0x3e8L

.field private static _isButtonLongPressed:Z

.field private static buttonPressRunnable:Ljava/lang/Runnable;

.field private static buttonPressStartTime:J

.field private static final carInfoListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private static final carStatusListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private static currentSpeed:I

.field private static final handler:Landroid/os/Handler;

.field private static headlightDebounceRunnable:Ljava/lang/Runnable;

.field private static isButtonPressed:Z

.field private static isLongPressEvent:Z

.field private static isSpeedInitialized:Z

.field private static lastHeadlightValue:Ljava/lang/String;

.field private static lastWifiConnected:Z

.field private static onTrigger:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private static final s05SpeedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private static final speedTriggerLock:Ljava/lang/Object;

.field private static final speedTriggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/task/model/TaskTrigger$SpeedRange;",
            ">;"
        }
    .end annotation
.end field

.field private static wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$BvPZKACsR1Xi_tHVFXUoEpZGV5A()V
    .locals 0

    invoke-static {}, Lcom/deepalhome/launcher/task/TriggerMonitor;->onHeadlightChanged$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$jc5CuSeGG-MSaFia_7PM8U2_pWc(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifyCustomVoiceCommand$lambda$11(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oRwB29-Ls54ClB8WOeh-GGPQxdU(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonPressed$lambda$9(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/task/TriggerMonitor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/TriggerMonitor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->speedTriggerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->speedTriggers:Ljava/util/List;

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor$carInfoListener$1;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor$carInfoListener$1;

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->carInfoListener:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor$carStatusListener$1;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor$carStatusListener$1;

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->carStatusListener:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor$s05SpeedListener$1;->INSTANCE:Lcom/deepalhome/launcher/task/TriggerMonitor$s05SpeedListener$1;

    sput-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->s05SpeedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLastWifiConnected$p()Z
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->lastWifiConnected:Z

    return v0
.end method

.method public static final synthetic access$getOnTrigger$p()Lkotlin/jvm/functions/Function1;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/TriggerMonitor;->onTrigger:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$onHeadlightChanged(Lcom/deepalhome/launcher/task/TriggerMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/TriggerMonitor;->onHeadlightChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$onSpeedChanged(Lcom/deepalhome/launcher/task/TriggerMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/TriggerMonitor;->onSpeedChanged(I)V

    return-void
.end method

.method public static final synthetic access$onSpeedChanged(Lcom/deepalhome/launcher/task/TriggerMonitor;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/task/TriggerMonitor;->onSpeedChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setLastWifiConnected$p(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepalhome/launcher/task/TriggerMonitor;->lastWifiConnected:Z

    return-void
.end method

.method private static final native notifyCustomVoiceCommand$lambda$11(Ljava/lang/String;)V
.end method

.method public static synthetic notifySteeringWheelButtonPressed$default(Lcom/deepalhome/launcher/task/TriggerMonitor;Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonPressed(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    return-void
.end method

.method private static final native notifySteeringWheelButtonPressed$lambda$9(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V
.end method

.method public static synthetic notifySteeringWheelButtonReleased$default(Lcom/deepalhome/launcher/task/TriggerMonitor;Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/task/TriggerMonitor;->notifySteeringWheelButtonReleased(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V

    return-void
.end method

.method private final native onHeadlightChanged(Ljava/lang/String;)V
.end method

.method private static final native onHeadlightChanged$lambda$1()V
.end method

.method private final native onSpeedChanged(I)V
.end method

.method private final native onSpeedChanged(Ljava/lang/String;)V
.end method

.method private final native registerHeadlightListener()V
.end method

.method private final native registerWifiReceiver()V
.end method

.method private final native syncCurrentSpeed()V
.end method


# virtual methods
.method public final native clearLongPressEvent()V
.end method

.method public final native destroy()V
.end method

.method public final native getCurrentSpeed()I
.end method

.method public final native init(Lkotlin/jvm/functions/Function1;)V
.end method

.method public final native isButtonLongPressed()Z
.end method

.method public final native isSpeedInitialized()Z
.end method

.method public final native notifyCustomVoiceCommand(Ljava/lang/String;)V
.end method

.method public final native notifyDesktopLaunched()V
.end method

.method public final native notifyGearChanged(I)V
.end method

.method public final native notifyMapCardOpenMap()V
.end method

.method public final native notifySteeringWheelButtonPressed(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V
.end method

.method public final native notifySteeringWheelButtonReleased(Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;)V
.end method

.method public final native setLongPressEvent()V
.end method

.method public final native syncSpeedTriggers(Ljava/util/List;)V
.end method
