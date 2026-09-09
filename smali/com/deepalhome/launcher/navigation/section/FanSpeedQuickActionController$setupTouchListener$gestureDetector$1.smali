.class public final Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field public final synthetic $isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic $r8$classId:I

.field public final synthetic $touchView:Landroid/view/View;

.field public final synthetic $verticalAnchor:Landroid/view/View;

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;Landroid/view/View;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Lkotlin/jvm/internal/Ref$BooleanRef;I)V
    .locals 0

    iput p5, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_1
    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :pswitch_2
    const-string p0, "e"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void

    :pswitch_0
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->touchFeedbackEnabled:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->performSecondaryAction()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    iget p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    packed-switch p3, :pswitch_data_0

    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getSeatHeatSwipeStartX$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F

    move-result p4

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getSeatHeatSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p3, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x1

    if-nez p3, :cond_2

    iput-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$currentCommittedSeatHeatLevel(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)I

    move-result p4

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p2, p0, p3, p4}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$showSeatHeatPopup(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Landroid/view/View;Landroid/view/View;I)V

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getSeatHeatPopup$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->beginUserInteraction()V

    :cond_2
    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getSeatHeatSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getSeatHeatPopup$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->setSelectionByOffset(I)V

    :cond_3
    move p3, v0

    :goto_0
    return p3

    :pswitch_0
    const-string p3, "currentEvent"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    iget p4, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStartX:F

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStartThresholdPx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    goto :goto_3

    :cond_5
    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iput-boolean v1, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object p4

    invoke-virtual {p2}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->currentDisplayMode()Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    iget v0, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->ventLevel:I

    goto :goto_1

    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_7
    iget v0, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->heatLevel:I

    :goto_1
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-static {p2, v2, p0, p4, v0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->access$showSeatClimatePopup(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;I)V

    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_9

    iget-boolean p4, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    if-eqz p4, :cond_8

    goto :goto_2

    :cond_8
    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    sget-object p4, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    :goto_2
    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_a

    iget p2, p2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStepPx:F

    div-float/2addr p1, p2

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeBaseIndex:I

    add-int/2addr p2, p1

    sget-object p1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p4

    invoke-static {p2, p3, p4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->updateSelectedLevel(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    :cond_a
    move p3, v1

    :goto_3
    return p3

    :pswitch_1
    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentSwipeStartX$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F

    move-result p4

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentSwipeStartThresholdPx$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    goto :goto_4

    :cond_c
    iget-boolean p3, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/4 v0, 0x1

    if-nez p3, :cond_d

    iput-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$currentCommittedSeatVentLevel(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)I

    move-result p4

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p2, p0, p3, p4}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$showSeatVentPopup(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/view/View;I)V

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentPopup$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->beginUserInteraction()V

    :cond_d
    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentSwipeStepPx$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)F

    move-result p0

    div-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-static {p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getSeatVentPopup$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->setSelectionByOffset(I)V

    :cond_e
    move p3, v0

    :goto_4
    return p3

    :pswitch_2
    const-string p3, "e2"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-nez p1, :cond_f

    goto/16 :goto_e

    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    iget p4, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartX:F

    sub-float/2addr p1, p4

    iget-object p4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartThresholdPx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    goto/16 :goto_e

    :cond_10
    iget-boolean v0, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-nez v0, :cond_24

    iput-boolean v2, p4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v2, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTouchMoved:Z

    iget p4, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->committedWindLevel:I

    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_11
    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    const/4 v3, 0x0

    if-eqz v0, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_5

    :cond_13
    move-object v0, v3

    :goto_5
    if-nez v0, :cond_14

    goto :goto_9

    :cond_14
    iget-object v4, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_15

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-nez v4, :cond_18

    :cond_15
    iget-object v4, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->rootView:Landroid/view/View;

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_6

    :cond_16
    move-object v4, v3

    :goto_6
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_17

    check-cast v4, Landroid/view/ViewGroup;

    goto :goto_7

    :cond_17
    move-object v4, v3

    :goto_7
    if-nez v4, :cond_18

    goto :goto_9

    :cond_18
    new-instance v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    invoke-direct {v5, v0, v4}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-boolean v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->isNight:Z

    iget-object v4, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    iget-boolean v6, v4, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    if-ne v6, v0, :cond_19

    goto :goto_8

    :cond_19
    iput-boolean v0, v4, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_8
    invoke-virtual {v5}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyPopupBackground()V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applySeekBarStyle()V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyIconTint()V

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$1;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$1;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$2;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$2;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onLevelPreviewChanged:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$3;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onLevelConfirmed:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$4;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onOpenPanelRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$5;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$5;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onAnchorTapRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;

    invoke-direct {v0, p2}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$ensureFanSpeedPopup$1$6;-><init>(Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;)V

    iput-object v0, v5, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    iput-object v5, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    :goto_9
    iget-object v0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz v0, :cond_22

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    const-string v5, "horizontalAnchor"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    const-string v5, "verticalAnchor"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->getWindowVisibility()I

    move-result v6

    if-nez v6, :cond_21

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1a

    move v5, v2

    goto :goto_a

    :cond_1a
    move v5, p3

    :goto_a
    if-eqz v5, :cond_21

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v5

    if-nez v5, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v2

    goto :goto_b

    :cond_1b
    move v5, p3

    :goto_b
    if-eqz v5, :cond_21

    iput-object v4, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object p0, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->currentVerticalAnchor:Landroid/view/View;

    invoke-static {p4, p3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p4

    iput p4, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    invoke-virtual {v0, p4, p3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->updateSelectedLevel(IZ)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyPopupBackground()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applySeekBarStyle()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->applyIconTint()V

    iget-boolean p4, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isDismissing:Z

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    if-eqz p4, :cond_1c

    iget-object p4, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p4, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean p3, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isDismissing:Z

    iget-object p4, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p4, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object p4, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p4, v5}, Landroid/view/View;->setTranslationY(F)V

    :cond_1c
    iget-boolean p4, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    if-eqz p4, :cond_1d

    invoke-virtual {v0, v4, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    goto/16 :goto_c

    :cond_1d
    iput-boolean v2, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    iget-object p4, v6, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    instance-of v7, p4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_1e

    move-object v3, p4

    check-cast v3, Landroid/view/ViewGroup;

    :cond_1e
    iget-object p4, v6, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v3, :cond_1f

    invoke-virtual {v3, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    new-instance v3, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/4 v7, 0x5

    invoke-direct {v3, v7, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/4 v7, 0x3

    invoke-direct {v3, v7, v0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v3, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda1;

    const/4 v7, 0x2

    invoke-direct {v3, v7, v0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iget-object v7, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v3, v6, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v5}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object v3

    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->windowTag:Ljava/lang/String;

    iput-object v5, v3, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {v3, p4}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {v3, v5}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {v3}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    iput-object v3, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    invoke-virtual {v0, v4, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_20
    new-instance v3, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/16 v5, 0x8

    invoke-direct {v3, v0, v4, p0, v5}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p4, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    goto :goto_c

    :cond_21
    invoke-virtual {v0, p3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->completeDismiss(Z)V

    :cond_22
    :goto_c
    iget-object p0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p0, :cond_24

    iget-boolean p4, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    if-eqz p4, :cond_23

    goto :goto_d

    :cond_23
    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    sget-object p4, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p4, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_24
    :goto_d
    iget p0, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStepPx:F

    div-float/2addr p1, p0

    invoke-static {p1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    iget-object p1, p2, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p1, :cond_25

    iget p2, p1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    add-int/2addr p2, p0

    invoke-static {p2, p3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    invoke-virtual {p1, p0, p3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->updateSelectedLevel(IZ)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    :cond_25
    move p3, v2

    :goto_e
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    iget v0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$Companion;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "climate:primary:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$setupSeatHeatTouchListener$gestureDetector$1$onSingleTapUp$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-direct {v3, p1, v1, p0}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController$setupSeatHeatTouchListener$gestureDetector$1$onSingleTapUp$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->touchFeedbackEnabled:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "climate:primary:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$setupTouchListener$gestureDetector$1$onSingleTapUp$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-direct {v3, p1, v1, p0}, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$setupTouchListener$gestureDetector$1$onSingleTapUp$1;-><init>(Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    const/4 p0, 0x1

    return p0

    :pswitch_1
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getTouchFeedbackEnabled$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;

    sget-object v2, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$Companion;

    invoke-static {p1}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->access$getType$p(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)Lcom/deepalhome/launcher/navigation/model/GridItemType;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "climate:primary:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/launcher/navigation/model/GridItemType;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$verticalAnchor:Landroid/view/View;

    invoke-direct {v3, p1, v1, p0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController$setupSeatVentTouchListener$gestureDetector$1$onSingleTapUp$1;-><init>(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v2, v3}, Lcom/deepalhome/launcher/navigation/section/ClimateActionDebouncer;->run(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    const/4 p0, 0x1

    return p0

    :pswitch_2
    const-string v0, "e"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$isSwiping:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTouchMoved:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->touchFeedbackEnabled:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController$setupTouchListener$gestureDetector$1;->$touchView:Landroid/view/View;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    :cond_4
    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->performPrimaryAction()Z

    move-result p0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
