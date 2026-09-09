.class public final synthetic Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v0, 0x3

    const-string v1, "$gestureDetector"

    const-string v2, "$isSwiping"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "this$0"

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$2:Ljava/lang/Object;

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/settings/AboutSettingsView$$ExternalSyntheticLambda5;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v7, Landroid/view/GestureDetector;

    check-cast v6, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;

    invoke-static {v6, v8, v7, p1, p2}, Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;->$r8$lambda$5ZHkVXf2RCKtzKYzgoAgjB14mw4(Lcom/deepalhome/launcher/navigation/section/SeatHeatQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Landroid/view/GestureDetector;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_7

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->cancelInteraction()V

    :cond_1
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->endUserInteraction()V

    :cond_2
    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_3
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_7

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->confirmAndScheduleClose()V

    :cond_4
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->seatClimatePopup:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->endUserInteraction()V

    :cond_5
    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController;->swipeStartX:F

    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_7
    :goto_0
    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :pswitch_1
    check-cast v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v7, Landroid/view/GestureDetector;

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_11

    if-eq p0, v4, :cond_e

    const/4 p1, 0x2

    if-eq p0, p1, :cond_b

    if-eq p0, v0, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_12

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p0, :cond_9

    iget p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    invoke-virtual {p0, p1, v3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->updateSelectedLevel(IZ)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    :cond_9
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->endUserInteraction()V

    :cond_a
    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    :cond_b
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTouchMoved:Z

    if-nez p0, :cond_12

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartX:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTapSlopPx:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_c

    cmpl-float p0, p1, v0

    if-lez p0, :cond_d

    :cond_c
    move v3, v4

    :cond_d
    iput-boolean v3, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTouchMoved:Z

    goto :goto_1

    :cond_e
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_12

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->confirmAndScheduleClose()V

    :cond_f
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->endUserInteraction()V

    :cond_10
    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_1

    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedSwipeStartY:F

    iput-boolean v3, v6, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedTouchMoved:Z

    iput-boolean v3, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_12
    :goto_1
    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v4

    :pswitch_2
    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v7, Landroid/view/GestureDetector;

    check-cast v6, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v6, v8, v7, p1, p2}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->$r8$lambda$MGWmxwYcdwJMmQJTqDZ9eKRlnbI(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/GestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_3
    sget p0, Lcom/deepalhome/launcher/settings/AboutSettingsView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/settings/AboutSettingsView;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$previewImageView"

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {p0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v4, :cond_15

    iget-boolean p0, v6, Lcom/deepalhome/launcher/settings/AboutSettingsView;->isInPreview:Z

    if-eqz p0, :cond_15

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_13

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_13
    const/4 p0, 0x0

    :goto_2
    if-eqz p0, :cond_14

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, v6, Lcom/deepalhome/launcher/settings/AboutSettingsView;->isInPreview:Z

    move v3, v4

    :cond_15
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
