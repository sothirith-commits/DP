.class public final Lcom/deepalhome/launcher/navigation/section/AirConditionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

.field private static final PRIMARY_ACTION_DEBOUNCE_KEY:Ljava/lang/String; = "climate:ac_power"


# instance fields
.field private airConditionEnabled:Z

.field private final airConditionStateListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private cardView:Landroid/view/View;

.field private centerContainer:Landroid/view/View;

.field private final clearPendingRunnable:Ljava/lang/Runnable;

.field private committedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field private compactTemperatureTv:Landroid/widget/TextView;

.field private containerView:Landroid/view/View;

.field private decreaseContainer:Landroid/view/View;

.field private dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private increaseContainer:Landroid/view/View;

.field private interactiveEnabled:Z

.field private isListenerRegistered:Z

.field private isNight:Z

.field private isPopupActive:Z

.field private lastKnownAirConditionEnabled:Ljava/lang/Boolean;

.field private leftArrowIv:Landroid/widget/ImageView;

.field private modeIndicatorView:Landroid/view/View;

.field private parentViewProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private pendingAirConditionEnabled:Ljava/lang/Boolean;

.field private pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field private pendingTemperature:Ljava/lang/String;

.field private preferActiveContentColor:Z

.field private previewTemperature:Ljava/lang/String;

.field private rightArrowIv:Landroid/widget/ImageView;

.field private swipeStartThresholdPx:F

.field private swipeStepPx:F

.field private temperatureDotTv:Landroid/widget/TextView;

.field private temperatureFractionTv:Landroid/widget/TextView;

.field private temperatureIntegerTv:Landroid/widget/TextView;

.field private temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

.field private temperatureUnitTv:Landroid/widget/TextView;

.field private thresholdsInitialized:Z

.field private touchFeedbackEnabled:Z

.field private final zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;


# direct methods
.method public static synthetic $r8$lambda$88txV2tEPp9HCfjgWlVbJZ3iP7U(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initInteractions$lambda$4$lambda$3(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3waNTStvPh8Xzl-Uroe-CFQ1hs(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onVisibilityChanged$lambda$2(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dd6SpA2BXY68G6ks1lWsfBc2eB8(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable$lambda$0(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$shkRSOWanmgdombokrY5qpyFZlU(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initInteractions$lambda$6$lambda$5(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uK2UyWLky113T8lS6PZQlrv0eFQ(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->onAttachedToWindow$lambda$1(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaJx39wUPoPyQ-uQ2xF88QOLdvc(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setupTouchListener$lambda$7(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;)V
    .locals 1

    const-string v0, "zone"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->preferActiveContentColor:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initialCommittedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->committedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable:Ljava/lang/Runnable;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$airConditionStateListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionStateListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$adjustTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->adjustTemperature(I)V

    return-void
.end method

.method public static final synthetic access$applyAirConditionState(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyAirConditionState(Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V

    return-void
.end method

.method public static final synthetic access$applyMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/navigation/AirConditionMode;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyMode(Lcom/deepalhome/launcher/navigation/AirConditionMode;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$applyTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyTemperature(F)V

    return-void
.end method

.method public static final synthetic access$clearConfirmedPendingTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearConfirmedPendingTemperature(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    return-void
.end method

.method public static final synthetic access$clearPreviewTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPreviewTemperature(Z)V

    return-void
.end method

.method public static final synthetic access$confirmPendingAirConditionEnabled(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->confirmPendingAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    return-void
.end method

.method public static final synthetic access$confirmPendingMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->confirmPendingMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    return-void
.end method

.method public static final synthetic access$getSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->swipeStartThresholdPx:F

    return p0
.end method

.method public static final synthetic access$getSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->swipeStepPx:F

    return p0
.end method

.method public static final synthetic access$getTemperaturePopup$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    return-object p0
.end method

.method public static final synthetic access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    return p0
.end method

.method public static final synthetic access$performTemperaturePrimaryAction(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->performTemperaturePrimaryAction()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$performTemperaturePrimaryActionWithDebounce(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->performTemperaturePrimaryActionWithDebounce()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$previewTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature(F)V

    return-void
.end method

.method public static final synthetic access$readInteractiveTemperature(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)F
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->readInteractiveTemperature()F

    move-result p0

    return p0
.end method

.method public static final synthetic access$setPopupActive$p(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isPopupActive:Z

    return-void
.end method

.method public static final synthetic access$showTemperaturePopup(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->showTemperaturePopup(Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method

.method public static final synthetic access$syncCommittedMode(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->syncCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    return-void
.end method

.method public static final synthetic access$syncLastKnownAirConditionEnabled(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->syncLastKnownAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    return-void
.end method

.method public static final synthetic access$triggerPopupAnchorAnimation(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->triggerPopupAnchorAnimation()V

    return-void
.end method

.method public static final synthetic access$updatePendingClearSchedule(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updatePendingClearSchedule()V

    return-void
.end method

.method private final native adjustTemperature(I)V
.end method

.method private final applyAirConditionState(Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveEffectiveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionEnabled:Z

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveDisplayedTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updateTemperatureDisplay(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->renderVisualState()V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p1, :cond_1

    iget-boolean p2, p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->currentDisplayedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p2

    iput-object p2, p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->applyPopupBackground()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rebuildModes()V

    :cond_1
    iget-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionEnabled:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature:Ljava/lang/String;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    invoke-direct {p0, p2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    :cond_2
    return-void
.end method

.method private final applyCachedTemperature()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->syncLastKnownAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->syncCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyAirConditionState(Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V

    return-void
.end method

.method private final applyMode(Lcom/deepalhome/launcher/navigation/AirConditionMode;)Z
    .locals 11

    sget-object v0, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/AirConditionModeCommandMapper;->toCommandMode(Lcom/deepalhome/launcher/navigation/AirConditionMode;)Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    const/4 v0, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3, v0}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    sget-object v4, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "1"

    const/4 v10, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v10, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    const-string v1, "3"

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    const-string v1, "2"

    goto :goto_0

    :cond_3
    move-object v6, v2

    goto :goto_1

    :cond_4
    const-string v1, "4"

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/deepalhome/launcher/navigation/AirConditionMode;->AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-ne p1, v1, :cond_5

    move-object v7, v2

    goto :goto_2

    :cond_5
    const-string p1, "0"

    move-object v7, p1

    :goto_2
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x13

    invoke-static/range {v4 .. v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->syncOptimisticAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p1, :cond_7

    iget-boolean v1, p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz v1, :cond_6

    move-object v0, p1

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->currentDisplayedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    iput-object p1, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->applyPopupBackground()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rebuildModes()V

    :cond_7
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updatePendingClearSchedule()V

    return v10
.end method

.method private final native applyTemperature(F)V
.end method

.method public static synthetic attachCompactToViews$default(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZILjava/lang/Object;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v9, v1

    goto :goto_1

    :cond_1
    move/from16 v9, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    move v10, v9

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v10}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->attachCompactToViews(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V

    return-void
.end method

.method public static synthetic attachToViews$default(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZILjava/lang/Object;)V
    .locals 19

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, p14

    :goto_0
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    move/from16 v17, p15

    :goto_1
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    move/from16 v18, v17

    goto :goto_2

    :cond_2
    move/from16 v18, p16

    :goto_2
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v2 .. v18}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->attachToViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V

    return-void
.end method

.method private final clearConfirmedPendingTemperature(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->hasConfirmedPendingTemperature(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final clearInteractions()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->decreaseContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->increaseContainer:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method private static final clearPendingRunnable$lambda$0(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyAirConditionState(Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V

    return-void
.end method

.method private final clearPreviewTemperature(Z)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature:Ljava/lang/String;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyAirConditionState(Lcom/deepalhome/launcher/carinfo/AirConditionState;Z)V

    :cond_1
    return-void
.end method

.method public static synthetic clearPreviewTemperature$default(Lcom/deepalhome/launcher/navigation/section/AirConditionController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPreviewTemperature(Z)V

    return-void
.end method

.method private final confirmPendingAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private final confirmPendingMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->committedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-void

    :cond_2
    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-void
.end method

.method private final currentDisplayedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->committedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCachedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final dismissPopup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPreviewTemperature(Z)V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isPopupActive:Z

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->cancelInteraction()V

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dismiss()V

    return-void
.end method

.method public static synthetic dismissTransientUi$default(Lcom/deepalhome/launcher/navigation/section/AirConditionController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissTransientUi(Z)V

    return-void
.end method

.method private final ensurePopup()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->parentViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-direct {v2, v0, v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$1;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$2;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onTemperaturePreviewChanged:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$3;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$3;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onTemperatureConfirmed:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$4;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$4;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onModeSelected:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$5;

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onOpenPanelRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$6;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$6;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onAnchorTapRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$ensurePopup$1$7;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    iput-object v0, v2, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private final hasConfirmedPendingTemperature(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveZoneActualTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final initInteractions()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez v2, :cond_2

    move-object v2, v0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearInteractions()V

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v0, v2, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setupTouchListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->decreaseContainer:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    new-instance v2, Lcom/deepalhome/launcher/navigation/section/AirConditionController$initInteractions$1$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$initInteractions$1$1;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->increaseContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    new-instance v2, Lcom/deepalhome/launcher/navigation/section/AirConditionController$initInteractions$2$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$initInteractions$2$1;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V

    move-object p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method private static final initInteractions$lambda$4$lambda$3(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->adjustTemperature(I)V

    return-void
.end method

.method private static final initInteractions$lambda$6$lambda$5(Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->adjustTemperature(I)V

    return-void
.end method

.method private final initThresholds(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->thresholdsInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->swipeStartThresholdPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->swipeStepPx:F

    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->thresholdsInitialized:Z

    return-void
.end method

.method private final initialCommittedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCachedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private final isTemperaturePopupVisible()Z
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private final normalizeTemperatureText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->parseTemperatureValue(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->formatTemperatureValue(F)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final onAttachedToWindow$lambda$1(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updateListenerRegistration()V

    return-void
.end method

.method private static final onVisibilityChanged$lambda$2(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->updateListenerRegistration()V

    return-void
.end method

.method private final openAirConditionPanel()Z
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    if-nez v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "climate:open_panel"

    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->readInteractiveTemperature()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->showTemperaturePopup(Landroid/view/View;Landroid/view/View;F)V

    const/4 p0, 0x1

    return p0
.end method

.method private final performTemperaturePrimaryAction()Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveEffectiveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z

    move-result v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isTemperaturePopupVisible()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->toggleAirCondition()Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_3

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isTemperaturePopupVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->toggleAirCondition()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->showTemperaturePopupFromCurrentAnchors()Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->showTemperaturePopupFromCurrentAnchors()Z

    move-result v2

    :cond_3
    :goto_1
    return v2
.end method

.method private final performTemperaturePrimaryActionWithDebounce()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$performTemperaturePrimaryActionWithDebounce$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$performTemperaturePrimaryActionWithDebounce$1;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;)V

    const-string p0, "climate:ac_power"

    invoke-virtual {v0, p0, v1}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method private final native previewTemperature(F)V
.end method

.method private final native readInteractiveTemperature()F
.end method

.method private final renderModeIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->modeIndicatorView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->currentDisplayedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionEnabled:Z

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_4

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/AirConditionMode;->getTemperatureIndicatorColorRes()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private final renderVisualState()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isNight:Z

    if-eqz v1, :cond_2

    const v1, 0x7f06038c

    goto :goto_1

    :cond_2
    const v1, 0x7f06038b

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    const v2, 0x7f06003f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->preferActiveContentColor:Z

    if-eqz v2, :cond_3

    move v1, v0

    :cond_3
    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isNight:Z

    if-eqz v0, :cond_4

    const v2, 0x7f080190

    goto :goto_2

    :cond_4
    const v2, 0x7f08018f

    :goto_2
    if-eqz v0, :cond_5

    const v0, 0x7f08024b

    goto :goto_3

    :cond_5
    const v0, 0x7f08024a

    :goto_3
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureIntegerTv:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureDotTv:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureFractionTv:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureUnitTv:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->compactTemperatureTv:Landroid/widget/TextView;

    if-eqz v3, :cond_a

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->leftArrowIv:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_b

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_b
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->rightArrowIv:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->renderModeIndicator()V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez p0, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_4
    return-void
.end method

.method private final resolveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;->resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final resolveCachedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 2

    sget-object p0, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->fromCache(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;)Lcom/deepalhome/launcher/carinfo/AirConditionState;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p0

    return-object p0
.end method

.method private final resolveCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p0

    return-object p0
.end method

.method private final native resolveDisplayedTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;
.end method

.method private final resolveEffectiveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->lastKnownAirConditionEnabled:Ljava/lang/Boolean;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final resolveInteractiveTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveZoneActualTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final resolveZoneActualTemperatureText(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureRight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureLeft:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->zone:Lcom/deepalhome/launcher/navigation/section/AirConditionController$TemperatureZone;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne v2, v1, :cond_2

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureLeft:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureRight:Ljava/lang/String;

    :goto_1
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->normalizeTemperatureText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->normalizeTemperatureText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private final setListenerRegistered(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isListenerRegistered:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isListenerRegistered:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyCachedTemperature()V

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionStateListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->airConditionStateListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_0
    return-void
.end method

.method private final native setupTouchListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end method

.method private static final setupTouchListener$lambda$7(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/navigation/section/AirConditionController;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const-string p4, "$swipeStartX"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "$isSwiping"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "this$0"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "$gestureDetector"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p5}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_6

    if-eq p4, v0, :cond_3

    const/4 p0, 0x3

    if-eq p4, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->cancelInteraction()V

    :cond_1
    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->endUserInteraction()V

    :cond_2
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_3
    iget-boolean p0, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_7

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->confirmAndScheduleClose()V

    :cond_4
    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->endUserInteraction()V

    :cond_5
    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p5}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7
    :goto_0
    invoke-virtual {p3, p5}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method

.method private final showTemperaturePopup(Landroid/view/View;Landroid/view/View;F)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isPopupActive:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->ensurePopup()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->currentDisplayedMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p0

    const-string v2, "horizontalAnchor"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "verticalAnchor"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object p1, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object p2, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentVerticalAnchor:Landroid/view/View;

    sget-object v2, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result p3

    iput p3, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    iput p3, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->applyPopupBackground()V

    iget p3, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    invoke-virtual {v1, p3}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rebuildGearAround(F)V

    iput-object p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->applyPopupBackground()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rebuildModes()V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->applyPopupBackground()V

    iget-boolean p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isDismissing:Z

    const/4 p3, 0x0

    iget-object v2, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v4, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isDismissing:Z

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-boolean p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz p0, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    goto/16 :goto_1

    :cond_2
    iput-boolean v0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    iget-object p0, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    move-object p0, v3

    :goto_0
    iget-object v4, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    new-instance p0, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v5, 0x9

    invoke-direct {p0, v5, v1}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p0, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/4 v3, 0x6

    invoke-direct {p0, v3, v1}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p0, Landroid/view/GestureDetector;

    new-instance v3, Lme/wcy/lrcview/LrcView$4;

    const/4 v5, 0x3

    invoke-direct {v3, v5, v1}, Lme/wcy/lrcview/LrcView$4;-><init>(ILjava/lang/Object;)V

    iget-object v5, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-direct {p0, v5, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, p0}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p3}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    iget-object p3, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->windowTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 p3, -0x1

    invoke-virtual {p0, p3}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    iput-object p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    invoke-virtual {v1, p1, p2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_5
    new-instance p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v4, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v4}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->completeDismiss(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method private final showTemperaturePopupFromCurrentAnchors()Z
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->readInteractiveTemperature()F

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->showTemperaturePopup(Landroid/view/View;Landroid/view/View;F)V

    const/4 p0, 0x1

    return p0
.end method

.method private final syncCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveCommittedMode(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->committedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-void
.end method

.method private final syncLastKnownAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->lastKnownAirConditionEnabled:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method private final native toggleAirCondition()Ljava/lang/Boolean;
.end method

.method private final triggerPopupAnchorAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    return-void
.end method

.method private final updateListenerRegistration()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setListenerRegistered(Z)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyCachedTemperature()V

    :cond_2
    return-void
.end method

.method private final updatePendingClearSchedule()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private final native updateTemperatureDisplay(Ljava/lang/String;Z)V
.end method


# virtual methods
.method public final attachCompactToViews(Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "ZZ)V"
        }
    .end annotation

    const-string v0, "containerView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "temperatureTv"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "modeIndicatorView"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "cardView"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "parentViewProvider"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->decreaseContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->increaseContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureIntegerTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureDotTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureFractionTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureUnitTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->compactTemperatureTv:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->modeIndicatorView:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->leftArrowIv:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->rightArrowIv:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->parentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    iput-boolean p7, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    iput-boolean p8, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initThresholds(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initInteractions()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyCachedTemperature()V

    return-void
.end method

.method public final attachToViews(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/view/View;",
            "Landroid/widget/ImageView;",
            "Landroid/widget/ImageView;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            "ZZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    const-string v14, "containerView"

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "centerContainer"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "decreaseContainer"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "increaseContainer"

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "temperatureIntegerTv"

    invoke-static {v14, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "temperatureDotTv"

    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "temperatureFractionTv"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "temperatureUnitTv"

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "modeIndicatorView"

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "leftArrowIv"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "rightArrowIv"

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "cardView"

    invoke-static {v14, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v14, "parentViewProvider"

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    iput-object v2, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    iput-object v3, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->decreaseContainer:Landroid/view/View;

    iput-object v4, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->increaseContainer:Landroid/view/View;

    iput-object v5, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureIntegerTv:Landroid/widget/TextView;

    iput-object v6, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureDotTv:Landroid/widget/TextView;

    iput-object v7, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureFractionTv:Landroid/widget/TextView;

    iput-object v8, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureUnitTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->compactTemperatureTv:Landroid/widget/TextView;

    iput-object v9, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->modeIndicatorView:Landroid/view/View;

    iput-object v10, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->leftArrowIv:Landroid/widget/ImageView;

    iput-object v11, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->rightArrowIv:Landroid/widget/ImageView;

    iput-object v12, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    iput-object v13, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->parentViewProvider:Lkotlin/jvm/functions/Function0;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->interactiveEnabled:Z

    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->touchFeedbackEnabled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initThresholds(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->initInteractions()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyCachedTemperature()V

    return-void
.end method

.method public final detachFromViews()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isPopupActive:Z

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->lastKnownAirConditionEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setListenerRegistered(Z)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearInteractions()V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->centerContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->decreaseContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->increaseContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureIntegerTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureDotTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureFractionTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperatureUnitTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->compactTemperatureTv:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->modeIndicatorView:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->leftArrowIv:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->rightArrowIv:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->cardView:Landroid/view/View;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->parentViewProvider:Lkotlin/jvm/functions/Function0;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final dismissTransientUi(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    return-void
.end method

.method public final isActiveForUi()Z
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->resolveEffectiveAirConditionEnabled(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->clearPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->dismissPopup(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->temperaturePopup:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isPopupActive:Z

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->lastKnownAirConditionEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingAirConditionEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->pendingTemperature:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->previewTemperature:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->setListenerRegistered(Z)V

    return-void
.end method

.method public final onVisibilityChanged()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->containerView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/section/AirConditionController;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final native performPanelPrimaryAction()Z
.end method

.method public final refreshFromCurrentState()V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->applyCachedTemperature()V

    return-void
.end method

.method public final setPreferActiveContentColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->preferActiveContentColor:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->preferActiveContentColor:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->renderVisualState()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->isNight:Z

    invoke-direct {p0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->renderVisualState()V

    return-void
.end method
