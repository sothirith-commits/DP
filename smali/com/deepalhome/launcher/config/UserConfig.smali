.class public final Lcom/deepalhome/launcher/config/UserConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CUSTOM_NAV_STYLE_BOTTOM:I = 0x1

.field public static final CUSTOM_NAV_STYLE_LEFT:I = 0x0

.field public static final Companion:Lcom/deepalhome/launcher/config/UserConfig$Companion;

.field public static final FLOATING_BALL_GESTURE_DOUBLE_TAP:Ljava/lang/String; = "double_tap"

.field public static final FLOATING_BALL_GESTURE_LONG_PRESS:Ljava/lang/String; = "long_press"

.field public static final FLOATING_BALL_GESTURE_SINGLE_TAP:Ljava/lang/String; = "single_tap"

.field public static final FLOATING_BALL_MAX_SIZE_DP:I = 0xf0

.field public static final FLOATING_BALL_MIN_SIZE_DP:I = 0x40

.field public static final LYRIC_BROADCAST_MODE_COMPONENT:I = 0x2

.field public static final LYRIC_BROADCAST_MODE_IMPLICIT:I = 0x0

.field public static final LYRIC_BROADCAST_MODE_PACKAGE:I = 0x1

.field public static final MUYU_DEFAULT_SIZE_DP:I = 0x78

.field public static final MUYU_MAX_SIZE_DP:I = 0xc8

.field public static final MUYU_MIN_SIZE_DP:I = 0x50

.field public static final S05_VOICE_AUTO_NAVI_MODE_AFTER_SYSTEM_START:I = 0x0

.field public static final S05_VOICE_AUTO_NAVI_MODE_INTERRUPT_SYSTEM:I = 0x1


# instance fields
.field private accessibilityAllEnabled:Z

.field private accessibilityDaemonEnabled:Z

.field private adbPort:Ljava/lang/String;

.field private amapCompatibilityDismissed:Z

.field private amapNaviStrategyStyle:I

.field private appDensityDpi:I

.field private autoMusicAppName:Ljava/lang/String;

.field private carInfo:Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

.field private carS05CurrentTripColumns:Ljava/lang/String;

.field private carS05EnableSr:Z

.field private carS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

.field private carS05ShowSinceCharged:Z

.field private carS05ShowValueUnit:Z

.field private carS05SinceChargedColumns:Ljava/lang/String;

.field private carS05SrShowOnHud:Z

.field private customNavigationBarStyle:I

.field private daemonAccessibilityServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultTaskAutoEnabled:Z

.field private desktopWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private floatingBallAlpha:I

.field private floatingBallBackgroundEnabled:Z

.field private floatingBallEdgeAdsorptionEnabled:Z

.field private floatingBallEnabled:Z

.field private floatingBallGestureActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation
.end field

.field private floatingBallIconFilePath:Ljava/lang/String;

.field private floatingBallIconLibraryPath:Ljava/lang/String;

.field private floatingBallIconPackageName:Ljava/lang/String;

.field private floatingBallIconResId:I

.field private floatingBallSize:I

.field private floatingBallTouchSoundEnabled:Z

.field private floatingBallX:I

.field private floatingBallY:I

.field private floatingLyricsColor:I

.field private floatingLyricsEnabled:Z

.field private floatingLyricsHeight:I

.field private floatingLyricsLocked:Z

.field private floatingLyricsOpacity:I

.field private floatingLyricsPinned:Z

.field private floatingLyricsTextGravity:I

.field private floatingLyricsTextSize:I

.field private floatingLyricsWidth:I

.field private floatingLyricsX:I

.field private floatingLyricsY:I

.field private hasAcknowledgedDisclaimer:Z

.field private hasShownAutoNaviAccessibilityGuide:Z

.field private hasShownToggleRealTimeVoiceGuide:Z

.field private hasShownVoiceAutoNaviGuide:Z

.field private hasShownWallpaperSubscribeGuide:Z

.field private hasShownWindowsCloseGuide:Z

.field private hasShownWindowsGestureGuide:Z

.field private hasShownWindowsOpenGuide:Z

.field private hudDvrEnabled:Z

.field private hudDvrRightX:I

.field private hudDvrScale:I

.field private hudDvrX:I

.field private hudDvrY:I

.field private hudLyricsColor:I

.field private hudLyricsEnabled:Z

.field private hudLyricsLineCount:I

.field private hudLyricsTextSize:I

.field private hudLyricsX:I

.field private hudLyricsY:I

.field private hudNaviAssistAlpha:I

.field private hudNaviAssistEnabled:Z

.field private hudNaviAssistTextSize:I

.field private hudNaviAssistX:I

.field private hudNaviAssistY:I

.field private hudSrScale:I

.field private hudSrX:I

.field private hudSrY:I

.field private isBottomNavBackgroundEnabled:Z

.field private isBottomNavBlurEnabled:Z

.field private isBottomNavCardModeBackgroundEnabled:Z

.field private isCarNavigationBarVisible:Z

.field private isCarStatusBarVisible:Z

.field private isCustomNavigationBarEnabled:Z

.field private isDynamicSplashEnabled:Z

.field private isMusicEnable:Z

.field private isNavigationGestureBarShown:Z

.field private isPureElectricModeSceneValidated:Z

.field private isPureElectricModeWidgetSelected:Z

.field private isTwoFingerWallpaperSwitchEnabled:Z

.field private isWallpaperCarouselEnabled:Z

.field private isWallpaperSubscribeBingEnabled:Z

.field private isWallpaperSubscribeUnsplashEnabled:Z

.field private isWallpaperVideoAudioEnabled:Z

.field private lastAnnouncementVersionCode:I

.field private lastMusic:Lcom/deepalhome/launcher/music/Music;

.field private launcherBootEnabled:Z

.field private lyricBroadcastDeliveryMode:I

.field private lyricBroadcastTargetPackageName:Ljava/lang/String;

.field private lyricBroadcastTargetPermission:Ljava/lang/String;

.field private lyricBroadcastTargetReceiverClassName:Ljava/lang/String;

.field private lyricTraditionalChineseEnabled:Z

.field private musicDynamicColorEnabled:Z

.field private musicDynamicEffectEnabled:Z

.field private musicLyricBlurEnabled:Z

.field private musicProgressCustomIconPath:Ljava/lang/String;

.field private musicProgressStyle:I

.field private musicProgressStyleEnabled:Z

.field private musicWindowLyricAnchorLine:I

.field private musicWindowLyricColor:I

.field private musicWindowLyricSize:I

.field private musicWindowLyricTextGravity:I

.field private muyuAlpha:I

.field private muyuColor:I

.field private muyuEdgeAdsorptionEnabled:Z

.field private muyuEnabled:Z

.field private muyuMeritCount:J

.field private muyuSafetyModeEnabled:Z

.field private muyuSize:I

.field private muyuX:I

.field private muyuY:I

.field private navBarGridConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

.field private pipSelectedApp:Ljava/lang/String;

.field private recentAppPackageNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s05IgnoredUpdateVersionName:Ljava/lang/String;

.field private s05UpdateBadgeVersionName:Ljava/lang/String;

.field private s05VoiceAutoNaviMode:I

.field private scheduledTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/task/model/ScheduledTask;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledTasksMigrated:Z

.field private selectedMapAppPackageName:Ljava/lang/String;

.field private selectedMusicAppPackageName:Ljava/lang/String;

.field private signedAgreementVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "singedAgreementVersion"
    .end annotation
.end field

.field private themeMode:I

.field private voiceAutoNavi:Z

.field private wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

.field private wallpaperCarouselIntervalMinutes:I

.field private windowApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/window/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private windowWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/config/UserConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/config/UserConfig;->Companion:Lcom/deepalhome/launcher/config/UserConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 36

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-object v1, v15

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v35, v15

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const v33, 0x7fffffff

    const/16 v34, 0x0

    invoke-direct/range {v1 .. v34}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v35

    iput-object v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->carInfo:Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    new-instance v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    const-string v34, "Off"

    const/16 v35, 0x0

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "0"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "0"

    const-string v10, "0"

    const-string v11, "0"

    const-string v12, "0.0 kWh/100km"

    const-string v13, "0.0 L/100km"

    const-string v14, "0.0 km"

    const-string v15, "0 min"

    const-string v16, "0.0 km"

    const-string v17, "0 min"

    const-string v18, "0.0 kWh/100km"

    const-string v19, "0.0 L/100km"

    const-string v20, "0 min"

    const-string v21, "0.0 km"

    const-string v22, "0.0 km"

    const-string v23, "0 min"

    const-string v24, "0.0 kWh"

    const-string v25, "0.0 kWh"

    const-string v26, "0 km/h"

    const-string v27, "0.0 km"

    const-string v28, "--"

    const-string v29, "Auto"

    const-string v30, "Off"

    const-string v31, "Off"

    const-string v32, "Off"

    const-string v33, "Off"

    move-object v2, v1

    invoke-direct/range {v2 .. v35}, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->carS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowValueUnit:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowSinceCharged:Z

    const-string v2, "this_avg_elec,this_distance,this_time"

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->carS05CurrentTripColumns:Ljava/lang/String;

    const-string v2, "sup_avg_elec,sup_time,sup_distance,sup_driving_elec,sup_attachment_elec"

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->carS05SinceChargedColumns:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMusicAppPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMapAppPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->recentAppPackageNames:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->windowApps:Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->autoMusicAppName:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isTwoFingerWallpaperSwitchEnabled:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isCarStatusBarVisible:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isCarNavigationBarVisible:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isNavigationGestureBarShown:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled:Z

    const/4 v3, -0x1

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->signedAgreementVersion:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->lastAnnouncementVersionCode:I

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->s05UpdateBadgeVersionName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->s05IgnoredUpdateVersionName:Ljava/lang/String;

    const/16 v4, 0x30

    iput v4, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricSize:I

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricTextGravity:I

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricAnchorLine:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicLyricBlurEnabled:Z

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetReceiverClassName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPermission:Ljava/lang/String;

    const/16 v4, 0x64

    iput v4, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsX:I

    iput v4, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsY:I

    const/16 v5, 0x258

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsWidth:I

    const/16 v5, 0x12c

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsHeight:I

    const/16 v5, 0x18

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsTextSize:I

    const/16 v5, 0x50

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsOpacity:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsColor:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallX:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallY:I

    const/16 v5, 0x40

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallSize:I

    const/16 v5, 0x5a

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallAlpha:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallEdgeAdsorptionEnabled:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallBackgroundEnabled:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallTouchSoundEnabled:Z

    const v5, 0x7f08013b

    iput v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconResId:I

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconFilePath:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconLibraryPath:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconPackageName:Ljava/lang/String;

    sget-object v5, Lcom/deepalhome/launcher/config/UserConfig;->Companion:Lcom/deepalhome/launcher/config/UserConfig$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/config/UserConfig$Companion;->defaultFloatingBallGestureActions()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, v0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallGestureActions:Ljava/util/HashMap;

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricColor:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicDynamicEffectEnabled:Z

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressCustomIconPath:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->daemonAccessibilityServices:Ljava/util/ArrayList;

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuX:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuY:I

    const/16 v2, 0x78

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSize:I

    iput v4, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuAlpha:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSafetyModeEnabled:Z

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuEdgeAdsorptionEnabled:Z

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->muyuColor:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->scheduledTasks:Ljava/util/ArrayList;

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->wallpaperCarouselIntervalMinutes:I

    iput-boolean v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled:Z

    const/16 v1, 0xb4

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->appDensityDpi:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistTextSize:I

    iput v4, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistAlpha:I

    const/16 v1, 0xaf

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistX:I

    const/16 v2, 0x26c

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrX:I

    const/16 v2, 0x1c2

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrY:I

    const/16 v2, 0x23

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrScale:I

    const/16 v2, 0x320

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrX:I

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrRightX:I

    const/16 v2, 0x140

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrY:I

    const/16 v2, 0x46

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrScale:I

    const/16 v2, 0x17

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsTextSize:I

    const/4 v2, 0x2

    iput v2, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsLineCount:I

    iput v3, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsColor:I

    iput v1, v0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsX:I

    return-void
.end method


# virtual methods
.method public final getAccessibilityAllEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->accessibilityAllEnabled:Z

    return p0
.end method

.method public final getAccessibilityDaemonEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->accessibilityDaemonEnabled:Z

    return p0
.end method

.method public final getAdbPort()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->adbPort:Ljava/lang/String;

    return-object p0
.end method

.method public final getAmapCompatibilityDismissed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->amapCompatibilityDismissed:Z

    return p0
.end method

.method public final getAmapNaviStrategyStyle()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->amapNaviStrategyStyle:I

    return p0
.end method

.method public final getAppDensityDpi()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->appDensityDpi:I

    return p0
.end method

.method public final getAutoMusicAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->autoMusicAppName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carInfo:Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    return-object p0
.end method

.method public final getCarS05CurrentTripColumns()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05CurrentTripColumns:Ljava/lang/String;

    return-object p0
.end method

.method public final getCarS05EnableSr()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05EnableSr:Z

    return p0
.end method

.method public final getCarS05Info()Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    return-object p0
.end method

.method public final getCarS05ShowSinceCharged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowSinceCharged:Z

    return p0
.end method

.method public final getCarS05ShowValueUnit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowValueUnit:Z

    return p0
.end method

.method public final getCarS05SinceChargedColumns()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05SinceChargedColumns:Ljava/lang/String;

    return-object p0
.end method

.method public final getCarS05SrShowOnHud()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05SrShowOnHud:Z

    return p0
.end method

.method public final getCustomNavigationBarStyle()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->customNavigationBarStyle:I

    return p0
.end method

.method public final getDaemonAccessibilityServices()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->daemonAccessibilityServices:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getDefaultTaskAutoEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->defaultTaskAutoEnabled:Z

    return p0
.end method

.method public final getDesktopWidgets()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->desktopWidgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getFloatingBallAlpha()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallAlpha:I

    return p0
.end method

.method public final getFloatingBallBackgroundEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallBackgroundEnabled:Z

    return p0
.end method

.method public final getFloatingBallEdgeAdsorptionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallEdgeAdsorptionEnabled:Z

    return p0
.end method

.method public final getFloatingBallEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallEnabled:Z

    return p0
.end method

.method public final getFloatingBallGestureActions()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallGestureActions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/config/UserConfig;->Companion:Lcom/deepalhome/launcher/config/UserConfig$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/config/UserConfig$Companion;->defaultFloatingBallGestureActions()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallGestureActions:Ljava/util/HashMap;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallGestureActions:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getFloatingBallIconFilePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFloatingBallIconLibraryPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconLibraryPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getFloatingBallIconPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getFloatingBallIconResId()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconResId:I

    return p0
.end method

.method public final getFloatingBallSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallSize:I

    return p0
.end method

.method public final getFloatingBallTouchSoundEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallTouchSoundEnabled:Z

    return p0
.end method

.method public final getFloatingBallX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallX:I

    return p0
.end method

.method public final getFloatingBallY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallY:I

    return p0
.end method

.method public final getFloatingLyricsColor()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsColor:I

    return p0
.end method

.method public final getFloatingLyricsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsEnabled:Z

    return p0
.end method

.method public final getFloatingLyricsHeight()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsHeight:I

    return p0
.end method

.method public final getFloatingLyricsLocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsLocked:Z

    return p0
.end method

.method public final getFloatingLyricsOpacity()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsOpacity:I

    return p0
.end method

.method public final getFloatingLyricsPinned()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsPinned:Z

    return p0
.end method

.method public final getFloatingLyricsTextGravity()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsTextGravity:I

    return p0
.end method

.method public final getFloatingLyricsTextSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsTextSize:I

    return p0
.end method

.method public final getFloatingLyricsWidth()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsWidth:I

    return p0
.end method

.method public final getFloatingLyricsX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsX:I

    return p0
.end method

.method public final getFloatingLyricsY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsY:I

    return p0
.end method

.method public final getHasAcknowledgedDisclaimer()Z
    .locals 0

    const/4 p0, 0x1
    # iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasAcknowledgedDisclaimer:Z

    return p0

.end method

.method public final getHasShownAutoNaviAccessibilityGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownAutoNaviAccessibilityGuide:Z

    return p0
.end method

.method public final getHasShownToggleRealTimeVoiceGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownToggleRealTimeVoiceGuide:Z

    return p0
.end method

.method public final getHasShownVoiceAutoNaviGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownVoiceAutoNaviGuide:Z

    return p0
.end method

.method public final getHasShownWallpaperSubscribeGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWallpaperSubscribeGuide:Z

    return p0
.end method

.method public final getHasShownWindowsCloseGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsCloseGuide:Z

    return p0
.end method

.method public final getHasShownWindowsGestureGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsGestureGuide:Z

    return p0
.end method

.method public final getHasShownWindowsOpenGuide()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsOpenGuide:Z

    return p0
.end method

.method public final getHudDvrEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrEnabled:Z

    return p0
.end method

.method public final getHudDvrRightX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrRightX:I

    return p0
.end method

.method public final getHudDvrScale()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrScale:I

    return p0
.end method

.method public final getHudDvrX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrX:I

    return p0
.end method

.method public final getHudDvrY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrY:I

    return p0
.end method

.method public final getHudLyricsColor()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsColor:I

    return p0
.end method

.method public final getHudLyricsEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsEnabled:Z

    return p0
.end method

.method public final getHudLyricsLineCount()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsLineCount:I

    return p0
.end method

.method public final getHudLyricsTextSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsTextSize:I

    return p0
.end method

.method public final getHudLyricsX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsX:I

    return p0
.end method

.method public final getHudLyricsY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsY:I

    return p0
.end method

.method public final getHudNaviAssistAlpha()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistAlpha:I

    return p0
.end method

.method public final getHudNaviAssistEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistEnabled:Z

    return p0
.end method

.method public final getHudNaviAssistTextSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistTextSize:I

    return p0
.end method

.method public final getHudNaviAssistX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistX:I

    return p0
.end method

.method public final getHudNaviAssistY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistY:I

    return p0
.end method

.method public final getHudSrScale()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrScale:I

    return p0
.end method

.method public final getHudSrX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrX:I

    return p0
.end method

.method public final getHudSrY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrY:I

    return p0
.end method

.method public final getLastAnnouncementVersionCode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lastAnnouncementVersionCode:I

    return p0
.end method

.method public final getLastMusic()Lcom/deepalhome/launcher/music/Music;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lastMusic:Lcom/deepalhome/launcher/music/Music;

    return-object p0
.end method

.method public final getLauncherBootEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->launcherBootEnabled:Z

    return p0
.end method

.method public final getLyricBroadcastDeliveryMode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastDeliveryMode:I

    return p0
.end method

.method public final getLyricBroadcastTargetPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLyricBroadcastTargetPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPermission:Ljava/lang/String;

    return-object p0
.end method

.method public final getLyricBroadcastTargetReceiverClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetReceiverClassName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLyricTraditionalChineseEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricTraditionalChineseEnabled:Z

    return p0
.end method

.method public final getMusicDynamicColorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicDynamicColorEnabled:Z

    return p0
.end method

.method public final getMusicDynamicEffectEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicDynamicEffectEnabled:Z

    return p0
.end method

.method public final getMusicLyricBlurEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicLyricBlurEnabled:Z

    return p0
.end method

.method public final getMusicProgressCustomIconPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressCustomIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public final getMusicProgressStyle()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressStyle:I

    return p0
.end method

.method public final getMusicProgressStyleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressStyleEnabled:Z

    return p0
.end method

.method public final getMusicWindowLyricAnchorLine()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricAnchorLine:I

    return p0
.end method

.method public final getMusicWindowLyricColor()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricColor:I

    return p0
.end method

.method public final getMusicWindowLyricSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricSize:I

    return p0
.end method

.method public final getMusicWindowLyricTextGravity()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricTextGravity:I

    return p0
.end method

.method public final getMuyuAlpha()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuAlpha:I

    return p0
.end method

.method public final getMuyuColor()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuColor:I

    return p0
.end method

.method public final getMuyuEdgeAdsorptionEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuEdgeAdsorptionEnabled:Z

    return p0
.end method

.method public final getMuyuEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuEnabled:Z

    return p0
.end method

.method public final getMuyuMeritCount()J
    .locals 2

    iget-wide v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuMeritCount:J

    return-wide v0
.end method

.method public final getMuyuSafetyModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSafetyModeEnabled:Z

    return p0
.end method

.method public final getMuyuSize()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSize:I

    return p0
.end method

.method public final getMuyuX()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuX:I

    return p0
.end method

.method public final getMuyuY()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuY:I

    return p0
.end method

.method public final getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->navBarGridConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    return-object p0
.end method

.method public final getPipApp(I)Ljava/lang/String;
    .locals 5

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    const-string v0, ";"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "="

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v2, v3, v4, v4}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public final getPipSelectedApp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecentAppPackageNames()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->recentAppPackageNames:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getS05IgnoredUpdateVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05IgnoredUpdateVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getS05UpdateBadgeVersionName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05UpdateBadgeVersionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getS05VoiceAutoNaviMode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05VoiceAutoNaviMode:I

    return p0
.end method

.method public final getScheduledTasks()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/task/model/ScheduledTask;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->scheduledTasks:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getScheduledTasksMigrated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->scheduledTasksMigrated:Z

    return p0
.end method

.method public final getSelectedMapAppPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMapAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedMusicAppPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMusicAppPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSignedAgreementVersion()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->signedAgreementVersion:I

    return p0
.end method

.method public final getThemeMode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->themeMode:I

    return p0
.end method

.method public final getVoiceAutoNavi()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->voiceAutoNavi:Z

    return p0
.end method

.method public final getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    return-object p0
.end method

.method public final getWallpaperCarouselIntervalMinutes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->wallpaperCarouselIntervalMinutes:I

    return p0
.end method

.method public final getWindowApps()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/window/WindowInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->windowApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "CarS05Info"

    goto :goto_0

    :cond_0
    const-string p0, "CarInfo"

    :goto_0
    new-instance v0, Lcom/deepalhome/launcher/window/WindowInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/deepalhome/launcher/window/WindowInfo;-><init>(ILjava/lang/String;I)V

    new-instance p0, Lcom/deepalhome/launcher/window/WindowInfo;

    const-string v1, "MAP"

    invoke-direct {p0, v2, v1, v2}, Lcom/deepalhome/launcher/window/WindowInfo;-><init>(ILjava/lang/String;I)V

    new-instance v1, Lcom/deepalhome/launcher/window/WindowInfo;

    const/4 v3, 0x2

    const-string v4, "Music"

    invoke-direct {v1, v3, v4, v2}, Lcom/deepalhome/launcher/window/WindowInfo;-><init>(ILjava/lang/String;I)V

    filled-new-array {v0, p0, v1}, [Lcom/deepalhome/launcher/window/WindowInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->windowApps:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getWindowWidgets()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->windowWidgets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final isBottomNavBackgroundEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled:Z

    return p0
.end method

.method public final isBottomNavBlurEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBlurEnabled:Z

    return p0
.end method

.method public final isBottomNavCardModeBackgroundEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled:Z

    return p0
.end method

.method public final isCarNavigationBarVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCarNavigationBarVisible:Z

    return p0
.end method

.method public final isCarStatusBarVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCarStatusBarVisible:Z

    return p0
.end method

.method public final isCustomNavigationBarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled:Z

    return p0
.end method

.method public final isDynamicSplashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled:Z

    return p0
.end method

.method public final isMusicEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isMusicEnable:Z

    return p0
.end method

.method public final isNavigationGestureBarShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isNavigationGestureBarShown:Z

    return p0
.end method

.method public final isPureElectricModeSceneValidated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated:Z

    return p0
.end method

.method public final isPureElectricModeWidgetSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected:Z

    return p0
.end method

.method public final isTwoFingerWallpaperSwitchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isTwoFingerWallpaperSwitchEnabled:Z

    return p0
.end method

.method public final isWallpaperCarouselEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled:Z

    return p0
.end method

.method public final isWallpaperSubscribeBingEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled:Z

    return p0
.end method

.method public final isWallpaperSubscribeUnsplashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled:Z

    return p0
.end method

.method public final isWallpaperVideoAudioEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled:Z

    return p0
.end method

.method public final setAccessibilityAllEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->accessibilityAllEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAccessibilityDaemonEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->accessibilityDaemonEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAdbPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->adbPort:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAmapCompatibilityDismissed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->amapCompatibilityDismissed:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAmapNaviStrategyStyle(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->amapNaviStrategyStyle:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAppDensityDpi(I)V
    .locals 2

    const/16 v0, 0xa0

    const/16 v1, 0xdc

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->appDensityDpi:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setAutoMusicAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->autoMusicAppName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setBottomNavBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBackgroundEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setBottomNavBlurEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavBlurEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setBottomNavCardModeBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isBottomNavCardModeBackgroundEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarInfo(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carInfo:Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarNavigationBarVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCarNavigationBarVisible:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05CurrentTripColumns(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05CurrentTripColumns:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05EnableSr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05EnableSr:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05ShowSinceCharged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowSinceCharged:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05ShowValueUnit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05ShowValueUnit:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05SinceChargedColumns(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05SinceChargedColumns:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarS05SrShowOnHud(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->carS05SrShowOnHud:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCarStatusBarVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCarStatusBarVisible:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCustomNavigationBarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setCustomNavigationBarStyle(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->customNavigationBarStyle:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setDaemonAccessibilityServices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->daemonAccessibilityServices:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setDefaultTaskAutoEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->defaultTaskAutoEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setDesktopWidgets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->desktopWidgets:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setDynamicSplashEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallAlpha(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallAlpha:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallBackgroundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallBackgroundEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallEdgeAdsorptionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallEdgeAdsorptionEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallGestureActions(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/deepalhome/launcher/task/model/TaskAction;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallGestureActions:Ljava/util/HashMap;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallIconFilePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconFilePath:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallIconLibraryPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconLibraryPath:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallIconPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconPackageName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallIconResId(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallIconResId:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallSize(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallTouchSoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallTouchSoundEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallX(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingBallY(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingBallY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsColor(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsColor:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsHeight(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsHeight:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsLocked:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsOpacity(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsOpacity:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsPinned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsPinned:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsTextGravity(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsTextGravity:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsTextSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsWidth(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsWidth:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsX(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setFloatingLyricsY(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->floatingLyricsY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasAcknowledgedDisclaimer(Z)V
    .locals 0

    # Override input parameter p1 to true (1)
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasAcknowledgedDisclaimer:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownAutoNaviAccessibilityGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownAutoNaviAccessibilityGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownToggleRealTimeVoiceGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownToggleRealTimeVoiceGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownVoiceAutoNaviGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownVoiceAutoNaviGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownWallpaperSubscribeGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWallpaperSubscribeGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownWindowsCloseGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsCloseGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownWindowsGestureGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsGestureGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHasShownWindowsOpenGuide(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hasShownWindowsOpenGuide:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudDvrEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudDvrRightX(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x320

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrRightX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudDvrScale(I)V
    .locals 2

    const/16 v0, 0x1e

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrScale:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudDvrX(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x320

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudDvrY(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1e0

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudDvrY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsColor(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsColor:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsLineCount(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsLineCount:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsTextSize(I)V
    .locals 2

    const/16 v0, 0x10

    const/16 v1, 0x30

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsTextSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsX(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudLyricsY(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudLyricsY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudNaviAssistAlpha(I)V
    .locals 2

    const/16 v0, 0x46

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistAlpha:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudNaviAssistEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudNaviAssistTextSize(I)V
    .locals 2

    const/16 v0, 0xc

    const/16 v1, 0x1a

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistTextSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudNaviAssistX(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudNaviAssistY(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudNaviAssistY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudSrScale(I)V
    .locals 2

    const/16 v0, 0x14

    const/16 v1, 0x32

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrScale:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudSrX(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x320

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setHudSrY(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x1e0

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->hudSrY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLastAnnouncementVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lastAnnouncementVersionCode:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLastMusic(Lcom/deepalhome/launcher/music/Music;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lastMusic:Lcom/deepalhome/launcher/music/Music;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLauncherBootEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->launcherBootEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLyricBroadcastDeliveryMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastDeliveryMode:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLyricBroadcastTargetPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPackageName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLyricBroadcastTargetPermission(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetPermission:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLyricBroadcastTargetReceiverClassName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricBroadcastTargetReceiverClassName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setLyricTraditionalChineseEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->lyricTraditionalChineseEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicDynamicColorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicDynamicColorEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicDynamicEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicDynamicEffectEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isMusicEnable:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicLyricBlurEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicLyricBlurEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicProgressCustomIconPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressCustomIconPath:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicProgressStyle(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressStyle:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicProgressStyleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicProgressStyleEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicWindowLyricAnchorLine(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricAnchorLine:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicWindowLyricColor(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricColor:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicWindowLyricSize(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMusicWindowLyricTextGravity(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->musicWindowLyricTextGravity:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuAlpha(I)V
    .locals 2

    const/16 v0, 0xa

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuAlpha:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuColor(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuColor:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuEdgeAdsorptionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuEdgeAdsorptionEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuMeritCount(J)V
    .locals 0

    iput-wide p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuMeritCount:J

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuSafetyModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSafetyModeEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuSize(I)V
    .locals 2

    const/16 v0, 0x50

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuSize:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuX(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuX:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setMuyuY(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->muyuY:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setNavBarGridConfig(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->navBarGridConfig:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setNavigationGestureBarShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isNavigationGestureBarShown:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setPipApp(ILjava/lang/String;)V
    .locals 7

    const-string v0, "packageName"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    const-string v1, ";"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "="

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v3, v4, v5, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez v1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lcom/deepalhome/launcher/config/UserConfig$setPipApp$1;->INSTANCE:Lcom/deepalhome/launcher/config/UserConfig$setPipApp$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ";"

    const/16 v6, 0x1e

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setPipSelectedApp(Ljava/lang/String;)V

    return-void
.end method

.method public final setPipSelectedApp(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setPureElectricModeSceneValidated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeSceneValidated:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setPureElectricModeWidgetSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isPureElectricModeWidgetSelected:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setRecentAppPackageNames(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->recentAppPackageNames:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setS05IgnoredUpdateVersionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05IgnoredUpdateVersionName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setS05UpdateBadgeVersionName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05UpdateBadgeVersionName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setS05VoiceAutoNaviMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->s05VoiceAutoNaviMode:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setScheduledTasks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/task/model/ScheduledTask;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->scheduledTasks:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setScheduledTasksMigrated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->scheduledTasksMigrated:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setSelectedMapAppPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMapAppPackageName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setSelectedMusicAppPackageName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->selectedMusicAppPackageName:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setSignedAgreementVersion(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->signedAgreementVersion:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setThemeMode(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->themeMode:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setTwoFingerWallpaperSwitchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isTwoFingerWallpaperSwitchEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setVoiceAutoNavi(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->voiceAutoNavi:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    if-eqz p1, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/AssistantUtil;->start()V

    goto/16 :goto_1

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/util/AssistantUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AssistantUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AssistantUtil.stopAutoNaviService() called, carS05="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "AssistantUtil"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop() called, bound="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", started="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    if-eqz v0, :cond_1

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->serviceConnection:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$serviceConnection$1;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string p1, "Disconnected system navigation IPC service"

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception disconnecting system navigation IPC service: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    sput-boolean p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->bound:Z

    sput-boolean p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->started:Z

    const/4 p1, 0x0

    sput-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ipcSkillDispatcher:Lm8/IPCSkillDispatcher;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->resetS05GuideState()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setWallpaper(Lcom/deepalhome/launcher/wallpaper/Wallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->wallpaper:Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWallpaperCarouselEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperCarouselEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWallpaperCarouselIntervalMinutes(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x5a0

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->wallpaperCarouselIntervalMinutes:I

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWallpaperSubscribeBingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWallpaperSubscribeUnsplashEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWallpaperVideoAudioEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled:Z

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWindowApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/window/WindowInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->windowApps:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final setWindowWidgets(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/deepalhome/launcher/widget/WidgetInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/config/UserConfig;->windowWidgets:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    return-void
.end method

.method public final swapPipApps(II)V
    .locals 7

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/config/UserConfig;->pipSelectedApp:Ljava/lang/String;

    const-string v1, ";"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "="

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v2, v4, v5, v5}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lcom/deepalhome/launcher/config/UserConfig$swapPipApps$1;->INSTANCE:Lcom/deepalhome/launcher/config/UserConfig$swapPipApps$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ";"

    const/16 v6, 0x1e

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setPipSelectedApp(Ljava/lang/String;)V

    return-void
.end method
