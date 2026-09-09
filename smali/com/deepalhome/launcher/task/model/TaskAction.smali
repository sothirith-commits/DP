.class public abstract Lcom/deepalhome/launcher/task/model/TaskAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/task/model/TaskAction$ActivateMagisk;,
        Lcom/deepalhome/launcher/task/model/TaskAction$AutoVolumeBySpeed;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;,
        Lcom/deepalhome/launcher/task/model/TaskAction$Delay;,
        Lcom/deepalhome/launcher/task/model/TaskAction$DisableAutoScreenBrightness;,
        Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;,
        Lcom/deepalhome/launcher/task/model/TaskAction$EnableAutoScreenBrightness;,
        Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;,
        Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;,
        Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;,
        Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMap;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LaunchMusic;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LaunchSystemLauncher;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;,
        Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;,
        Lcom/deepalhome/launcher/task/model/TaskAction$MediaNext;,
        Lcom/deepalhome/launcher/task/model/TaskAction$MediaPrevious;,
        Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;,
        Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;,
        Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;,
        Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;,
        Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;,
        Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;,
        Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;,
        Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;,
        Lcom/deepalhome/launcher/task/model/TaskAction$StartProjectionHook;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToAutoLight;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SwitchToLowBeam;,
        Lcom/deepalhome/launcher/task/model/TaskAction$SystemBack;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAirCondition;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCurrentSongFavorite;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFogLightStrobe;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleFrontDefrost;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRealTimeVoice;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearDefrost;,
        Lcom/deepalhome/launcher/task/model/TaskAction$ToggleRearSeatBeltAlarm;
    }
.end annotation


# instance fields
.field private final displayName:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/task/model/TaskAction;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/task/model/TaskAction;->displayName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/task/model/TaskAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/TaskAction;->type:Ljava/lang/String;

    return-object p0
.end method
