.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;


# instance fields
.field public final airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;

.field public final clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public committedWindLevel:I

.field public dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

.field public fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

.field public fanSpeedSwipeStartThresholdPx:F

.field public fanSpeedSwipeStartX:F

.field public fanSpeedSwipeStartY:F

.field public fanSpeedSwipeStepPx:F

.field public fanSpeedTapSlopPx:F

.field public fanSpeedTouchMoved:Z

.field public forceWhiteContentColor:Z

.field public iconView:Landroid/widget/ImageView;

.field public interactive:Z

.field public isNight:Z

.field public lastNonZeroWindLevel:I

.field public observeVehicleState:Z

.field public pendingWindLevel:Ljava/lang/Integer;

.field public popupParentViewProvider:Lkotlin/jvm/functions/Function0;

.field public popupVerticalAnchor:Landroid/view/View;

.field public previewWindLevel:Ljava/lang/Integer;

.field public ringView:Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

.field public rootView:Landroid/view/View;

.field public touchFeedbackEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->touchFeedbackEnabled:Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/AirConditionState;->getFrontWindLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1, v3, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v3

    :cond_1
    :goto_0
    iput v3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindLevelFront()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->resolveRememberedNonZeroLevel(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->lastNonZeroWindLevel:I

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$airConditionStateChangedListener$1;

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static final access$applyWindLevel(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;I)Z
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-nez p1, :cond_0

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v4, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    invoke-direct {v4, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Z)V

    invoke-static {v3, v4, v0, v2, v0}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    new-instance v4, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    invoke-direct {v4, p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;-><init>(I)V

    invoke-static {v3, v4, v0, v2, v0}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-lez p1, :cond_3

    iput p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->lastNonZeroWindLevel:I

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedPolicy;->rememberNonZeroLevel(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->updatePendingClearSchedule()V

    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method public final currentDisplayedWindLevel()I
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    :goto_1
    return p0
.end method

.method public final dismissFanSpeedPopup(Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->previewWindLevel:Ljava/lang/Integer;

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p1, :cond_4

    iget p0, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->updateSelectedLevel(IZ)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dismiss()V

    return-void
.end method

.method public final performPrimaryAction()Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissFanSpeedPopup(Z)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    invoke-static {v2, v1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;->access$primaryActionDebounceKey(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":open_panel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimatePanelAction;->open(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final performSecondaryAction()Z
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/deepalhome/launcher/navigation/model/GridItemType;->FAN_SPEED:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v3, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;->access$primaryActionDebounceKey(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$Companion;Lcom/deepalhome/launcher/navigation/model/GridItemType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":secondary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$performSecondaryAction$1;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    move-result p0

    return p0
.end method

.method public final render()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->ringView:Lcom/deepalhome/launcher/navigation/FanSpeedRingView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->currentDisplayedWindLevel()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-boolean v4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->forceWhiteContentColor:Z

    if-eqz v4, :cond_1

    const v4, 0x7f06038c

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->isNight:Z

    if-eqz v4, :cond_2

    const v4, 0x7f060099

    goto :goto_0

    :cond_2
    const v4, 0x7f060098

    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const v4, 0x7f08010d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->forceWhiteContentColor:Z

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->setForceWhiteContentColor(Z)V

    :cond_3
    if-eqz v1, :cond_5

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->isNight:Z

    iget-boolean v0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->isNight:Z

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean p0, v1, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->isNight:Z

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->setWindLevel(I)V

    :cond_6
    return-void
.end method

.method public final updatePendingClearSchedule()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
