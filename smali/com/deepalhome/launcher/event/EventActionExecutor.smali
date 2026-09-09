.class public final Lcom/deepalhome/launcher/event/EventActionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/event/EventActionExecutor;

.field public static final cycleStates:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/event/EventActionExecutor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/event/EventActionExecutor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/event/EventActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionExecutor;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleStates:Ljava/util/LinkedHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cycleIndex(Lcom/deepalhome/launcher/event/CycleType;IZ)I
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/event/EventActionExecutor;->cycleStates:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    add-int/2addr v1, p2

    rem-int/2addr v1, p1

    add-int/2addr v1, p1

    rem-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public static cycleStreamVolume(IILjava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/media/AudioManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    const/4 p3, -0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x1

    :goto_1
    const/4 v1, 0x4

    invoke-virtual {v0, p0, p3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p3

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/ble/BleEventToast;->show(ILjava/lang/String;)V

    return-void
.end method

.method public static getActionIcon(Lcom/deepalhome/launcher/task/model/TaskAction;)I
    .locals 5

    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    if-eqz v0, :cond_0

    const p0, 0x7f08025e

    goto/16 :goto_6

    :cond_0
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    const v1, 0x7f0800cb

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    move p0, v1

    goto/16 :goto_6

    :cond_2
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    const v2, 0x7f0800e1

    if-eqz v0, :cond_3

    :goto_1
    move p0, v2

    goto/16 :goto_6

    :cond_3
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    if-eqz v0, :cond_5

    const p0, 0x7f0800d0

    goto/16 :goto_6

    :cond_5
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    const v3, 0x7f0800cc

    if-eqz v0, :cond_6

    :goto_2
    move p0, v3

    goto/16 :goto_6

    :cond_6
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;

    if-eqz v0, :cond_8

    const p0, 0x7f0800e6

    goto/16 :goto_6

    :cond_8
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;

    const v3, 0x7f0800db

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;

    if-eqz v0, :cond_a

    goto :goto_2

    :cond_a
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;

    if-eqz v0, :cond_c

    const p0, 0x7f0800c0

    goto/16 :goto_6

    :cond_c
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;

    if-eqz v0, :cond_d

    const p0, 0x7f0800da

    goto/16 :goto_6

    :cond_d
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    if-eqz v0, :cond_e

    const p0, 0x7f080176

    goto/16 :goto_6

    :cond_e
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    if-eqz v0, :cond_f

    const p0, 0x7f08017a

    goto/16 :goto_6

    :cond_f
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    if-eqz v0, :cond_10

    const p0, 0x7f08017b

    goto/16 :goto_6

    :cond_10
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    if-eqz v0, :cond_11

    const p0, 0x7f0800d1

    goto/16 :goto_6

    :cond_11
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    if-eqz v0, :cond_12

    const p0, 0x7f0800d2

    goto/16 :goto_6

    :cond_12
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    if-eqz v0, :cond_13

    const p0, 0x7f0800e5

    goto/16 :goto_6

    :cond_13
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    if-eqz v0, :cond_14

    const p0, 0x7f0800dc

    goto/16 :goto_6

    :cond_14
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;

    if-eqz v0, :cond_15

    const p0, 0x7f08010d

    goto/16 :goto_6

    :cond_15
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;

    if-eqz v0, :cond_16

    const p0, 0x7f08010c

    goto/16 :goto_6

    :cond_16
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;

    if-eqz v0, :cond_17

    const p0, 0x7f08010e

    goto/16 :goto_6

    :cond_17
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;

    const v3, 0x7f0800ea

    if-eqz v0, :cond_18

    goto/16 :goto_2

    :cond_18
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    if-eqz v0, :cond_19

    goto/16 :goto_2

    :cond_19
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    if-eqz v0, :cond_1a

    goto/16 :goto_2

    :cond_1a
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    if-eqz v0, :cond_1b

    const p0, 0x7f0800cd

    goto/16 :goto_6

    :cond_1b
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    const v3, 0x7f0800d8

    if-eqz v0, :cond_1c

    goto/16 :goto_2

    :cond_1c
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    if-eqz v0, :cond_1d

    const p0, 0x7f0800e7

    goto/16 :goto_6

    :cond_1d
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    if-eqz v0, :cond_1e

    const p0, 0x7f08024e

    goto/16 :goto_6

    :cond_1e
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    const v4, 0x7f0800dd

    if-eqz v0, :cond_1f

    :goto_3
    move p0, v4

    goto/16 :goto_6

    :cond_1f
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    if-eqz v0, :cond_20

    goto :goto_3

    :cond_20
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;

    const v4, 0x7f0800cf

    if-eqz v0, :cond_21

    goto :goto_3

    :cond_21
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    if-eqz v0, :cond_22

    const p0, 0x7f0800e4

    goto/16 :goto_6

    :cond_22
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    if-eqz v0, :cond_23

    goto/16 :goto_1

    :cond_23
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    if-eqz v0, :cond_24

    goto/16 :goto_1

    :cond_24
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    if-eqz v0, :cond_25

    goto/16 :goto_1

    :cond_25
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;

    if-eqz v0, :cond_26

    const p0, 0x7f0800ed

    goto :goto_6

    :cond_26
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;

    if-eqz v0, :cond_27

    goto/16 :goto_2

    :cond_27
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;

    if-eqz v0, :cond_28

    goto/16 :goto_2

    :cond_28
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    if-eqz v0, :cond_29

    goto :goto_4

    :cond_29
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    if-eqz v0, :cond_2a

    goto :goto_4

    :cond_2a
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    if-eqz v0, :cond_2b

    :goto_4
    goto :goto_3

    :cond_2b
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    if-eqz v0, :cond_2c

    goto :goto_5

    :cond_2c
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    if-eqz v0, :cond_2d

    goto :goto_5

    :cond_2d
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    if-eqz v0, :cond_2e

    :goto_5
    const p0, 0x7f08016d

    goto :goto_6

    :cond_2e
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;

    const v2, 0x7f0800e3

    if-eqz v0, :cond_2f

    goto/16 :goto_1

    :cond_2f
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;

    if-eqz v0, :cond_30

    goto/16 :goto_1

    :cond_30
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    if-eqz v0, :cond_31

    goto/16 :goto_1

    :cond_31
    instance-of v0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;

    if-eqz v0, :cond_32

    const p0, 0x7f0800d9

    goto :goto_6

    :cond_32
    instance-of p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;

    if-eqz p0, :cond_1

    const p0, 0x7f0800de

    :goto_6
    return p0
.end method
