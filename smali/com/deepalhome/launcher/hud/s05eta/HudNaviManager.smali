.class public final Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

.field public static appContext:Landroid/content/Context;

.field public static isNavigating:Z

.field public static lastPrimaryLine:Ljava/lang/String;

.field public static lastRenderedText:Ljava/lang/String;

.field public static lastSecondaryLine:Ljava/lang/String;

.field public static final mainHandler:Landroid/os/Handler;

.field public static overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->mainHandler:Landroid/os/Handler;

    const-string v0, ""

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastPrimaryLine:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastSecondaryLine:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastRenderedText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dismissOverlay()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

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
    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static onSettingChanged(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->appContext:Landroid/content/Context;

    :cond_1
    sput-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->appContext:Landroid/content/Context;

    sget-object p0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onSettingChanged$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onSettingChanged$1;

    invoke-static {p0}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static pushIfNeeded(Z)V
    .locals 18

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->shouldShowOverlay()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->dismissOverlay()V

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->findHudDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->dismissOverlay()V

    return-void

    :cond_2
    sget-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastSecondaryLine:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastPrimaryLine:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastPrimaryLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastSecondaryLine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x1

    if-nez p0, :cond_4

    sget-object v4, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastRenderedText:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

    if-eqz v4, :cond_4

    iget-boolean v4, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->showing:Z

    if-ne v4, v3, :cond_4

    return-void

    :cond_4
    sget-object v4, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->display:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->dismiss()V

    :cond_6
    new-instance v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

    invoke-direct {v4, v0, v1}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    sput-object v4, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->overlayController:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistX()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x320

    invoke-static {v5, v1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->normalizePercent(II)I

    move-result v7

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistY()I

    move-result v1

    const/16 v5, 0x1e0

    invoke-static {v1, v5}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviAssistConfigHelper;->normalizePercent(II)I

    move-result v8

    iget-boolean v1, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->showing:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistTextSize()I

    move-result v5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistAlpha()I

    move-result v6

    move-object v3, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->updateTextConfig(Ljava/lang/String;IIII)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistTextSize()I

    move-result v5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistAlpha()I

    move-result v6

    const-string v0, "text"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->showing:Z

    if-eqz v0, :cond_8

    move-object v3, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->updateTextConfig(Ljava/lang/String;IIII)V

    goto :goto_3

    :cond_8
    iget-object v0, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->appContext:Landroid/content/Context;

    iget-object v1, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->display:Landroid/view/Display;

    invoke-virtual {v0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v9, v1, Landroid/view/WindowManager;

    if-eqz v9, :cond_9

    check-cast v1, Landroid/view/WindowManager;

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_a

    new-instance v9, Landroid/widget/FrameLayout;

    invoke-direct {v9, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v10, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;

    invoke-direct {v10, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v0, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v16, 0x118

    const/16 v17, -0x3

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v15, 0x7f6

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v11, 0x11

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v11, "hud_eta_overlay"

    invoke-virtual {v0, v11}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-interface {v1, v9, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->windowManager:Landroid/view/WindowManager;

    iput-object v9, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->rootView:Landroid/widget/FrameLayout;

    iput-object v10, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->textView:Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;

    iput-boolean v3, v4, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->showing:Z

    move-object v3, v4

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController;->updateTextConfig(Ljava/lang/String;IIII)V

    :goto_3
    sput-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastRenderedText:Ljava/lang/String;

    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "HUD WindowManager unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static shouldShowOverlay()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudNaviAssistEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->isNavigating:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastPrimaryLine:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
