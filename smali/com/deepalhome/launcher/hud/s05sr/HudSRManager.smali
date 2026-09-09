.class public final Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

.field public static appContext:Landroid/content/Context;

.field public static isListenerRegistered:Z

.field public static isSuppressedByDvr:Z

.field public static isSuppressedByStartupVideo:Z

.field public static lastGearMode:Ljava/lang/String;

.field public static final mainHandler:Landroid/os/Handler;

.field public static overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

.field public static final s05InfoListener:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    sput-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->s05InfoListener:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$s05InfoListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$updateState(Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;)V
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isSuppressedByDvr:Z

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->isSuppressedByStartupVideo:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05EnableSr()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05SrShowOnHud()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/S05HudWakeHelper;->wakeHud()V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->appContext:Landroid/content/Context;

    if-nez v0, :cond_2

    goto/16 :goto_a

    :cond_2
    sget-object v1, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->findHudDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    const-string v2, "HudSRManager"

    if-nez v1, :cond_3

    const-string v0, "updateState: HUD secondary display not found"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dismissOverlay()V

    goto/16 :goto_a

    :cond_3
    sget-object v3, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v5, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->dismiss()V

    :cond_5
    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    new-instance v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    invoke-direct {v3, v0, v1}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    sput-object v3, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "ensureOverlayController: creation failed"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    instance-of v0, v3, Lkotlin/Result$Failure;

    if-eqz v0, :cond_7

    move-object v3, v4

    :cond_7
    check-cast v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    :goto_2
    if-nez v3, :cond_8

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dismissOverlay()V

    goto/16 :goto_a

    :cond_8
    iget-boolean v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->showing:Z

    const-string v1, "HudSROverlay"

    if-nez v0, :cond_10

    if-eqz v0, :cond_9

    invoke-virtual {v3}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->applyConfig()V

    goto/16 :goto_5

    :cond_9
    iget-object v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->appContext:Landroid/content/Context;

    iget-object v2, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->display:Landroid/view/Display;

    invoke-virtual {v0, v2}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const-string v5, "window"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/view/WindowManager;

    if-eqz v6, :cond_a

    check-cast v5, Landroid/view/WindowManager;

    goto :goto_3

    :cond_a
    move-object v5, v4

    :goto_3
    if-nez v5, :cond_b

    const-string v0, "show: HUD WindowManager unavailable"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    new-instance v6, Landroid/widget/FrameLayout;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x2ab

    const/16 v11, 0x34e

    const/16 v12, 0x11

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v7}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v7, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    invoke-direct {v7}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;-><init>()V

    iput-object v3, v7, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    invoke-virtual {v7, v0}, Lcom/tinnove/renderclient/ClientRenderControl;->initClientView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_c

    const-string v0, "show: initClientView returned null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v15, -0x1

    const/16 v16, 0x7f6

    const/4 v14, -0x1

    const/16 v17, 0x118

    const/16 v18, -0x3

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v10, "hud_sr_overlay"

    invoke-virtual {v0, v10}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :try_start_1
    sget v10, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v5, v6, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget v10, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v2, "show: addView failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Lcom/tinnove/renderclient/ClientRenderControl;->destroy()V

    goto :goto_5

    :cond_d
    iput-object v5, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->windowManager:Landroid/view/WindowManager;

    iput-object v6, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->rootView:Landroid/widget/FrameLayout;

    iput-object v8, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->borderedContainer:Landroid/widget/FrameLayout;

    iput-object v9, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srView:Landroid/view/View;

    iput-object v7, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->showing:Z

    invoke-virtual {v3}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->applyConfig()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "show: SR view has been added to HUD secondary display displayId="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    iput-boolean v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->isNightMode:Z

    iget-object v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v0

    const-string v2, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    invoke-virtual {v0, v2}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object v0

    if-eqz v0, :cond_f

    iput-object v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    goto :goto_6

    :cond_f
    move-object v0, v4

    :goto_6
    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->syncDayNightMode$1(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->applyConfig()V

    :goto_7
    :try_start_2
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v3, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/tinnove/renderclient/ClientRenderControl;->resume()V

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v4

    :cond_11
    :goto_8
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v2, "resume: failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :cond_12
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dismissOverlay()V

    goto :goto_a

    :cond_13
    :goto_9
    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dismissOverlay()V

    :cond_14
    :goto_a
    return-void
.end method

.method public static dismissOverlay()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tinnove/renderclient/ClientRenderControl;->pause()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :goto_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "HudSROverlay"

    const-string v3, "pause: failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->dismiss()V

    :cond_2
    sput-object v1, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->overlayController:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;

    return-void
.end method

.method public static dispatchOnMain(Lkotlin/jvm/functions/Function0;)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static onSettingChanged()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$onSettingChanged$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$onSettingChanged$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static setSuppressedByDvr(Z)V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByDvr$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByDvr$1;-><init>(Z)V

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
