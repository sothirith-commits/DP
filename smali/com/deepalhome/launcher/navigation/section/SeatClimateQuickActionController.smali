.class public final Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;


# instance fields
.field public dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

.field public heatLevel:I

.field public iconView:Landroid/widget/ImageView;

.field public interactive:Z

.field public isNight:Z

.field public observeVehicleState:Z

.field public popupParentViewProvider:Lkotlin/jvm/functions/Function0;

.field public popupVerticalAnchor:Landroid/view/View;

.field public preferActiveContentColor:Z

.field public preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

.field public previewLevel:Ljava/lang/Integer;

.field public previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

.field public rootView:Landroid/view/View;

.field public seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

.field public swipeStartThresholdPx:F

.field public swipeStartX:F

.field public swipeStepPx:F

.field public touchFeedbackEnabled:Z

.field public final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

.field public final vehiclePropertyListener:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;

.field public ventLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;)V
    .locals 2

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->touchFeedbackEnabled:Z

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isNight:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    new-instance p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->vehiclePropertyListener:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$vehiclePropertyListener$1;

    return-void
.end method

.method public static final access$applyModeLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    if-lez p2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-lez p2, :cond_2

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    new-instance v8, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v8, v5, v6, v7}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-static {v0, v8, v3, v2, v3}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_6

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacController;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacController;

    if-lez p2, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    goto :goto_4

    :cond_6
    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-lez p2, :cond_7

    goto :goto_5

    :cond_7
    move-object v7, v3

    :goto_5
    new-instance v8, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-direct {v8, v5, v6, v7}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-static {v0, v8, v3, v2, v3}, Lcom/deepalhome/launcher/hvac/HvacController;->execute$default(Lcom/deepalhome/launcher/hvac/HvacController;Lcom/deepalhome/launcher/hvac/HvacCommand;Lcom/deepalhome/launcher/hvac/HvacController$FeedbackMode;ILjava/lang/Object;)Z

    move-result v0

    :goto_6
    if-nez v0, :cond_8

    invoke-virtual {p0, v4}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->clearPreview(Z)V

    goto :goto_8

    :cond_8
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->clearPreview(Z)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    goto :goto_7

    :cond_9
    iput p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    if-lez p2, :cond_b

    iput v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    goto :goto_7

    :cond_a
    iput p2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    if-lez p2, :cond_b

    iput v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    :cond_b
    :goto_7
    if-lez p2, :cond_c

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :cond_c
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$persistOptimisticState$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    move v1, v4

    :goto_8
    return v1
.end method

.method public static final access$nextLevel(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    :goto_0
    const/4 p1, 0x3

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    :cond_3
    :goto_1
    return p1
.end method

.method public static final access$showSeatClimatePopup(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->rootView:Landroid/view/View;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_6
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    new-instance v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    new-instance v4, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$1;)V

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$2;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onLevelPreviewChanged:Lkotlin/jvm/functions/Function2;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$3;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$3;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onLevelConfirmed:Lkotlin/jvm/functions/Function2;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;

    invoke-direct {v0, v3, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$4;-><init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onModeActionRequested:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;

    invoke-direct {v0, v3, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$5;-><init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onAnchorTapRequested:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$6;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$2$6;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    iput-object v3, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    :goto_3
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_e

    const-string v0, "horizontalAnchor"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "verticalAnchor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mode"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentVerticalAnchor:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, p4, p3, v0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V

    iget-boolean p3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isDismissing:Z

    const/4 p4, 0x0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    if-eqz p3, :cond_8

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isDismissing:Z

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    iget-boolean p3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    goto/16 :goto_5

    :cond_9
    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    iget-object p3, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_a

    check-cast p3, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_a
    move-object p3, v1

    :goto_4
    iget-object v0, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz p3, :cond_b

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    new-instance p3, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v4, 0x7

    invoke-direct {p3, v4, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p3, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/4 v1, 0x4

    invoke-direct {p3, v1, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p3, Landroid/view/GestureDetector;

    new-instance v1, Lme/wcy/lrcview/LrcView$4;

    const/4 v4, 0x1

    invoke-direct {v1, v4, p0}, Lme/wcy/lrcview/LrcView$4;-><init>(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-direct {p3, v4, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p3, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v1, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p0, p3}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p3, p4}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p4}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p3

    invoke-static {p3}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object p3

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->windowTag:Ljava/lang/String;

    iput-object p4, p3, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 p4, -0x1

    invoke-virtual {p3, p4}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {p3, p4}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {p3}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_c
    new-instance p3, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 p4, 0x9

    invoke-direct {p3, p0, p1, p2, p4}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->completeDismiss(Z)V

    :cond_e
    :goto_5
    return-void
.end method

.method public static parseLevel(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toLowerCase(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result p0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    return p0

    :cond_0
    const-string v0, "open"

    const-string v1, "opened"

    const-string v2, "on"

    const-string v3, "true"

    const-string v4, "enabled"

    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final cachedLevel(Z)I
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontLeft()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontLeft()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontRight()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontRight()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->parseLevel(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final clearPreview(Z)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    :cond_1
    return-void
.end method

.method public final currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    if-lez v0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    if-lez v0, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :goto_0
    return-object p0
.end method

.method public final dismissTransientUi(Z)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->clearPreview(Z)V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->cancelInteraction()V

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dismiss()V

    return-void
.end method

.method public final isLeftSeat()Z
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_HEAT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->SEAT_VENT_LEFT:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final refreshFromCurrentState()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->cachedLevel(Z)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->cachedLevel(Z)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    iget v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    if-lez v2, :cond_0

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :cond_0
    if-lez v1, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferredMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->clearPreview(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->render()V

    return-void
.end method

.method public final render()V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isLeftSeat()Z

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->previewLevel:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    iget v3, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    :goto_0
    invoke-virtual {p0, v3, v1, v2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatIconRes(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v5, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v5, v5, -0x31

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->isNight:Z

    if-eqz p0, :cond_4

    const/16 p0, 0x20

    goto :goto_1

    :cond_4
    const/16 p0, 0x10

    :goto_1
    or-int/2addr p0, v5

    iput p0, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_5
    move-object p0, v3

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_6
    move-object p0, v3

    :goto_3
    if-nez p0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final seatIconRes(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)I
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_e

    if-ne p2, v2, :cond_d

    if-eq p1, v2, :cond_9

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_1

    if-eqz p3, :cond_0

    const p0, 0x7f080123

    goto/16 :goto_0

    :cond_0
    const p0, 0x7f08012a

    goto/16 :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_3

    if-eqz p0, :cond_2

    const p0, 0x7f080121

    goto/16 :goto_0

    :cond_2
    const p0, 0x7f080122

    goto/16 :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const p0, 0x7f080128

    goto/16 :goto_0

    :cond_4
    const p0, 0x7f080129

    goto/16 :goto_0

    :cond_5
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_7

    if-eqz p0, :cond_6

    const p0, 0x7f08011f

    goto/16 :goto_0

    :cond_6
    const p0, 0x7f080120

    goto/16 :goto_0

    :cond_7
    if-eqz p0, :cond_8

    const p0, 0x7f080126

    goto/16 :goto_0

    :cond_8
    const p0, 0x7f080127

    goto/16 :goto_0

    :cond_9
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_b

    if-eqz p0, :cond_a

    const p0, 0x7f08011d

    goto/16 :goto_0

    :cond_a
    const p0, 0x7f08011e

    goto/16 :goto_0

    :cond_b
    if-eqz p0, :cond_c

    const p0, 0x7f080124

    goto/16 :goto_0

    :cond_c
    const p0, 0x7f080125

    goto/16 :goto_0

    :cond_d
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_e
    if-eq p1, v2, :cond_18

    if-eq p1, v1, :cond_14

    if-eq p1, v0, :cond_10

    if-eqz p3, :cond_f

    const p0, 0x7f080115

    goto :goto_0

    :cond_f
    const p0, 0x7f08011c

    goto :goto_0

    :cond_10
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_12

    if-eqz p0, :cond_11

    const p0, 0x7f080113

    goto :goto_0

    :cond_11
    const p0, 0x7f080114

    goto :goto_0

    :cond_12
    if-eqz p0, :cond_13

    const p0, 0x7f08011a

    goto :goto_0

    :cond_13
    const p0, 0x7f08011b

    goto :goto_0

    :cond_14
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_16

    if-eqz p0, :cond_15

    const p0, 0x7f080111

    goto :goto_0

    :cond_15
    const p0, 0x7f080112

    goto :goto_0

    :cond_16
    if-eqz p0, :cond_17

    const p0, 0x7f080118

    goto :goto_0

    :cond_17
    const p0, 0x7f080119

    goto :goto_0

    :cond_18
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->preferActiveContentColor:Z

    if-eqz p3, :cond_1a

    if-eqz p0, :cond_19

    const p0, 0x7f08010f

    goto :goto_0

    :cond_19
    const p0, 0x7f080110

    goto :goto_0

    :cond_1a
    if-eqz p0, :cond_1b

    const p0, 0x7f080116

    goto :goto_0

    :cond_1b
    const p0, 0x7f080117

    :goto_0
    return p0
.end method
