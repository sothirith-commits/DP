.class public final Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;


# instance fields
.field public final appContext:Landroid/content/Context;

.field public borderedContainer:Landroid/widget/FrameLayout;

.field public final display:Landroid/view/Display;

.field public eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

.field public isNightMode:Z

.field public rootView:Landroid/widget/FrameLayout;

.field public showing:Z

.field public srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

.field public srView:Landroid/view/View;

.field public windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->display:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->appContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final applyConfig()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->rootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->borderedContainer:Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrX()I

    move-result v2

    const/16 v3, 0x320

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrY()I

    move-result v3

    const/16 v5, 0x1e0

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudSrScale()I

    move-result v1

    const/16 v4, 0x14

    const/16 v5, 0x32

    invoke-static {v1, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v1, v4

    new-instance v4, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$$ExternalSyntheticLambda0;-><init>(Landroid/widget/FrameLayout;IIF)V

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dismiss()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object v1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tinnove/renderclient/ClientRenderControl;->destroy()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :goto_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "HudSROverlay"

    if-eqz v1, :cond_1

    const-string v3, "dismiss: destroy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->srControl:Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController$HudSRViewControl;

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->rootView:Landroid/widget/FrameLayout;

    if-nez v3, :cond_3

    return-void

    :cond_3
    :try_start_1
    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v3, "dismiss: removeView failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->rootView:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->borderedContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->windowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->showing:Z

    const-string p0, "dismiss: SR has been removed from HUD secondary display"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onDrawFirstFrame()V
    .locals 1

    const-string p0, "HudSROverlay"

    const-string v0, "onDrawFirstFrame"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onEngineLaunched()V
    .locals 1

    const-string p0, "HudSROverlay"

    const-string v0, "onEngineLaunched"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onEngineShutdown()V
    .locals 1

    const-string p0, "HudSROverlay"

    const-string v0, "onEngineShutdown"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRenderServiceConnected()V
    .locals 5

    const-string v0, ""

    const-string v1, "HudSROverlay"

    const-string v2, "onRenderServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    iget-object v2, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tinnove/renderclient/ClientDataManager;->getInstance()Lcom/tinnove/renderclient/ClientDataManager;

    move-result-object v2

    const-string v4, "com.tinnove.renderserver.service.CocosRemoteRenderService"

    invoke-virtual {v2, v4}, Lcom/tinnove/renderclient/ClientDataManager;->addDataEventManager(Ljava/lang/String;)Lcom/tinnove/renderclient/CocosDataEventManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->eventManager:Lcom/tinnove/renderclient/CocosDataEventManager;

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "SceneControl.InitState"

    invoke-virtual {v2, v3, v0}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarControl.requestIsInited"

    invoke-virtual {v2, v3, v0}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CarControl.requestIsAllInited"

    invoke-virtual {v2, v3, v0}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->syncDayNightMode$1(Lcom/tinnove/renderclient/CocosDataEventManager;)V

    const-string p0, "SceneControl.CurrentMode"

    const-string v0, "3"

    invoke-virtual {v2, p0, v0}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "onRenderServiceConnected: init script failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public final onRenderServiceDisconnected()V
    .locals 1

    const-string p0, "HudSROverlay"

    const-string v0, "onRenderServiceDisconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRenderServiceError(Ljava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onRenderServiceError: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HudSROverlay"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onViewSizeChanged(II)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onViewSizeChanged: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x78

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HudSROverlay"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final syncDayNightMode$1(Lcom/tinnove/renderclient/CocosDataEventManager;)V
    .locals 1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/hud/s05sr/HudSROverlayController;->isNightMode:Z

    if-eqz p0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    if-eqz p1, :cond_1

    const-string v0, "Adas.ChangeDayMode"

    invoke-virtual {p1, v0, p0}, Lcom/tinnove/renderclient/CocosDataEventManager;->callScript(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :goto_1
    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "HudSROverlay"

    const-string v0, "syncDayNightMode: failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
