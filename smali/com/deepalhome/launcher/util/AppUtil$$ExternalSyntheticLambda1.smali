.class public final synthetic Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$deepalhome$launcher$hud$HudFloatManager$musicChangedListener$1$onInfoChanged$1$$ExternalSyntheticLambda0()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    const/16 v0, 0x1e

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p0

    iget v5, v5, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    sget-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;->Completed:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    sput-object v0, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->startState:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->notifyDesktopLaunched()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->exitNavi()V

    return-void

    :pswitch_1
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapUtil$Companion;->goCompany()V

    return-void

    :pswitch_2
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapUtil$Companion;->goHome()V

    return-void

    :pswitch_3
    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->exitNavi()V

    return-void

    :pswitch_4
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapUtil$Companion;->goCompany()V

    return-void

    :pswitch_5
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;->scheduleAutoNavi$default(Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->backToHomeAndShowWindow()V

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapUtil$Companion;->goHome()V

    return-void

    :pswitch_6
    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz v0, :cond_0

    sget-object v3, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget v4, v3, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    iget v5, v3, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    iget v6, v3, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    iget v7, v3, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Lcom/deepalhome/launcher/map/MapController;->show(IIIIIZ)V

    :goto_1
    return-void

    :goto_2
    monitor-exit v1

    throw v0

    :pswitch_7
    invoke-static {}, Lcom/deepalhome/launcher/task/TriggerMonitor;->$r8$lambda$BvPZKACsR1Xi_tHVFXUoEpZGV5A()V

    return-void

    :pswitch_8
    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->$r8$lambda$lTDKR3UpLHyg6fzT_vd37IzgmIM()V

    return-void

    :pswitch_9
    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->$r8$lambda$eu9inS2BCdPmSeYMXFCSY9eb0lY()V

    return-void

    :pswitch_a
    invoke-static {}, Lcom/deepalhome/launcher/task/TaskExecutor;->$r8$lambda$cgynsUXA9AtPvK18M5ZdSls-78g()V

    return-void

    :pswitch_b
    sget-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->rebuildTimeline(Lcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    invoke-static {}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchCurrentSnapshot()V

    :goto_3
    return-void

    :pswitch_c
    sput-boolean v4, Lcom/deepalhome/launcher/music/MusicManager;->refreshScheduled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/music/MusicManager;->lastRefreshAt:J

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->binder:Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicService$MusicServiceBinder;->refreshMediaController()V

    :cond_4
    return-void

    :pswitch_d
    const-string v1, "HudWakeHelper"

    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;

    :try_start_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x33

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->sendDipStatus(I)V

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->sendDipStatus(I)V

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->sendDipStatus(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "KEY_TYPE"

    const/16 v3, 0x2723

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "EXTRA_STATE"

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v2, "Sent simulated navigation start broadcast: KEY_TYPE=10019, EXTRA_STATE=8"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "done: HUD wake command sent"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to send HUD wake command: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to send HUD wake command: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_e
    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismiss()V

    return-void

    :pswitch_f
    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->handleTurnSignalStateChanged()V

    return-void

    :pswitch_10
    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->leftSignalValue:I

    if-eq v5, v1, :cond_9

    sget v5, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->rightSignalValue:I

    if-ne v5, v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->shouldEnableFeature()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isSettingsPreviewEnabled:Z

    if-eqz v1, :cond_8

    sput v4, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->currentDirection:I

    sput-boolean v4, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->autoStarted:Z

    sget-object v1, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->overlayController:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;->dismiss()V

    :cond_7
    sput-object v3, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->overlayController:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrOverlayController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->startSettingsPreviewIfNeeded()V

    goto :goto_5

    :cond_8
    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->stopStreaming(Z)V

    :cond_9
    :goto_5
    return-void

    :pswitch_11
    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->startSettingsPreviewIfNeeded()V

    return-void

    :goto_6
    :pswitch_12
    sget-boolean v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->connected:Z

    if-nez v0, :cond_b

    :try_start_2
    invoke-static {}, Lcom/adayo/proxy/adas/evs/EvsCameraMng;->connectEvsService()Z

    move-result v0

    if-eqz v0, :cond_a

    sput-boolean v2, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->connected:Z

    sput-boolean v4, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->connecting:Z

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->registerCallback()V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->connectionCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_b

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connect: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "S05HudDvrEvs"

    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    const-wide/16 v0, 0x1f4

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    sput-boolean v4, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager;->connecting:Z

    :cond_b
    :goto_7
    return-void

    :pswitch_13
    const-string v1, "HUDLyricManager"

    const-string v2, "sourceID"

    :try_start_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sget-wide v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    invoke-virtual {v3, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "lyricStatus"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "curLyric"

    const-string v5, "No lyrics"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "nextLyric"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    sget-wide v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "sourceType"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "songName"

    sget-object v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "singerName"

    sget-object v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentSingerName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "programName"

    sget-object v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "PlayingSource"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "playStatus"

    sget v2, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "lyricObj"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-eqz v0, :cond_c

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/incall/serversdk/interactive/DoubleMediaProxy;->sendMediaSource(Ljava/lang/String;)Z

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_c
    :goto_8
    const-string v0, "Sent no-lyrics status"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_a

    :goto_9
    const-string v2, "Failed to send no-lyrics status"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a
    return-void

    :pswitch_14
    const-string v2, "HUDLyricManager"

    const-string v3, "Media info updated: "

    :try_start_5
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "sourceID"

    sget-wide v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicId:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "sourceType"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "songName"

    sget-object v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "singerName"

    sget-object v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentSingerName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "programName"

    sget-object v6, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "PlayingSource"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "playStatus"

    sget v5, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-eqz v0, :cond_d

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/incall/serversdk/interactive/DoubleMediaProxy;->sendMediaSource(Ljava/lang/String;)Z

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_d

    :cond_d
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentMusicName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPlayStatus:I

    if-ne v3, v1, :cond_e

    const-string v1, "Playing"

    goto :goto_c

    :cond_e
    const-string v1, "Paused"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_e

    :goto_d
    const-string v1, "Failed to update media info"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void

    :pswitch_15
    const-string v1, "HUDLyricManager"

    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "lyricStatus"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "playStatus"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "lyricObj"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->doubleMediaProxy:Lcom/incall/serversdk/interactive/DoubleMediaProxy;

    if-eqz v0, :cond_f

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/incall/serversdk/interactive/DoubleMediaProxy;->sendMediaSource(Ljava/lang/String;)Z

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_10

    :cond_f
    :goto_f
    const-string v0, "Lyrics cleared"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_11

    :goto_10
    const-string v2, "Failed to clear lyrics"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    :pswitch_16
    return-void

    :pswitch_17
    sput-object v3, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    sget-boolean v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    sput-boolean v4, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    :cond_12
    :goto_12
    return-void

    :pswitch_18
    sput-object v3, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSafetyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_13

    :cond_13
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_13

    :cond_14
    sget-boolean v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-eqz v0, :cond_15

    goto :goto_13

    :cond_15
    sput-boolean v2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->hide()V

    :cond_16
    :goto_13
    return-void

    :pswitch_19
    invoke-static {}, Lcom/deepalhome/launcher/config/ConfigManager;->$r8$lambda$HaiqzKLFNSOkBSzVrL7kEvFN9bg()V

    return-void

    :pswitch_1a
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-static {v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->hideMenu$default(Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;)V

    return-void

    :pswitch_1b
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService;->Companion:Lcom/deepalhome/launcher/accessibility/AutoNaviAccessibilityService$Companion;

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    return-void

    :pswitch_1c
    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    :try_start_7
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsInternal()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_14

    :catchall_2
    move-exception v0

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_14
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_17

    goto :goto_15

    :cond_17
    new-instance v0, Lcom/deepalhome/launcher/app/App;

    const v5, 0x7f130437

    const-string v6, "getString(...)"

    invoke-static {v5, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Settings"

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/app/App;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v5, Lcom/deepalhome/launcher/app/App;

    const v6, 0x7f13048d

    const-string v7, "getString(...)"

    invoke-static {v6, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "WallPaperCenter"

    const/16 v16, 0x4

    const/16 v17, 0x0

    const/4 v15, 0x0

    move-object v12, v5

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/app/App;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v5}, [Lcom/deepalhome/launcher/app/App;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_15
    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/deepalhome/launcher/util/AppUtil;->cachedApps:Ljava/util/ArrayList;

    sget-object v5, Lcom/deepalhome/launcher/util/AppUtil;->appLoadLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_8
    sput-boolean v4, Lcom/deepalhome/launcher/util/AppUtil;->isLoadingApps:Z

    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/deepalhome/launcher/util/AppUtil;->pendingAppCallbacks:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    sget-boolean v7, Lcom/deepalhome/launcher/util/AppUtil;->pendingForceRefresh:Z

    sput-boolean v4, Lcom/deepalhome/launcher/util/AppUtil;->pendingForceRefresh:Z

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/jvm/functions/Function1;

    sget-object v6, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v5}, Lcom/deepalhome/launcher/util/AppUtil;->deliverApps(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    goto :goto_16

    :cond_18
    sget-object v4, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/util/AppUtil;->appChangeListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    sget-object v8, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v6}, Lcom/deepalhome/launcher/util/AppUtil;->deliverApps(Ljava/util/ArrayList;Lkotlin/jvm/functions/Function1;)V

    goto :goto_17

    :cond_19
    sget-object v4, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x30

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->take(ILjava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/app/App;

    sget-object v5, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v4}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v3}, Lcom/deepalhome/launcher/util/AppUtil;->ensureIconBitmapAsync(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    goto :goto_18

    :cond_1a
    if-eqz v7, :cond_1b

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-static {v0, v2, v3, v1}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync$default(Lcom/deepalhome/launcher/util/AppUtil;ZLkotlin/jvm/functions/Function1;I)V

    :cond_1b
    return-void

    :catchall_3
    move-exception v0

    monitor-exit v5

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method