.class public final synthetic Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "$gestureDetector"

    const-string v3, "this$0"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget-object v6, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iget p0, p0, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    const-string p0, "$holder"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, v6, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz p0, :cond_4

    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v5}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p2

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result p2

    const/high16 v0, 0xff0000

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    const-string p2, "ItemTouchHelper"

    if-nez v7, :cond_1

    const-string p0, "Start drag has been called but dragging is not enabled"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eq v0, v1, :cond_2

    const-string p0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/VelocityTracker;->recycle()V

    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-virtual {p0, v5, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    :cond_4
    :goto_1
    return v4

    :pswitch_0
    check-cast v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/view/GestureDetector;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_e

    if-eq p0, v7, :cond_b

    if-eq p0, p1, :cond_8

    if-eq p0, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    if-eqz p0, :cond_f

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->cancelInteraction()V

    :cond_6
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->endUserInteraction()V

    :cond_7
    iput-boolean v4, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    goto :goto_2

    :cond_8
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchMoved:Z

    if-nez p0, :cond_f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartX:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartY:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->tapSlopPx:F

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_9

    cmpl-float p0, p1, v0

    if-lez p0, :cond_a

    :cond_9
    move v4, v7

    :cond_a
    iput-boolean v4, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchMoved:Z

    goto :goto_2

    :cond_b
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    if-eqz p0, :cond_f

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->confirmAndScheduleClose()V

    :cond_c
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->endUserInteraction()V

    :cond_d
    iput-boolean v4, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    goto :goto_2

    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->swipeStartY:F

    iput-boolean v4, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchMoved:Z

    iput-boolean v4, v6, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isSwiping:Z

    :cond_f
    :goto_2
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :pswitch_1
    check-cast v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/view/GestureDetector;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_18

    if-eq p0, v7, :cond_11

    if-eq p0, v1, :cond_10

    goto/16 :goto_8

    :cond_10
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->cancelInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->endUserInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dismiss()V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeStartX:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-gez p0, :cond_16

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedIndex()I

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeBaseIndex:I

    if-eq p0, p1, :cond_12

    goto :goto_5

    :cond_12
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_3
    if-ge v4, p1, :cond_14

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_13

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eqz p1, :cond_14

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    goto :goto_4

    :cond_13
    add-int/2addr v4, v7

    goto :goto_3

    :cond_14
    move-object p0, v0

    :goto_4
    if-eqz p0, :cond_15

    invoke-virtual {v6, p0, v7}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateSelectedMode(Lcom/deepalhome/launcher/navigation/WindDirectionMode;Z)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->confirmAndScheduleClose()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_15
    if-nez v0, :cond_17

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    goto :goto_6

    :cond_16
    :goto_5
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->confirmAndScheduleClose()V

    :cond_17
    :goto_6
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->endUserInteraction()V

    goto :goto_8

    :cond_18
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    if-eqz p0, :cond_19

    goto :goto_7

    :cond_19
    iput-boolean v7, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeStartX:F

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedIndex()I

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupSwipeBaseIndex:I

    :goto_8
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :pswitch_2
    check-cast v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/view/GestureDetector;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_21

    if-eq p0, v7, :cond_1b

    if-eq p0, v1, :cond_1a

    goto/16 :goto_d

    :cond_1a
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->cancelInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->endUserInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dismiss()V

    goto/16 :goto_d

    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeStartX:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-gez p0, :cond_1f

    iget p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    iget p1, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeBaseTemp:F

    cmpg-float p0, p0, p1

    if-nez p0, :cond_1f

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_9
    if-ge v4, p1, :cond_1d

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1c

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_1d

    check-cast p0, Ljava/lang/Float;

    goto :goto_a

    :cond_1c
    add-int/2addr v4, v7

    goto :goto_9

    :cond_1d
    move-object p0, v0

    :goto_a
    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v6, p0, v7}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->updateSelectedTemperature(FZ)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->confirmAndScheduleClose()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_1e
    if-nez v0, :cond_20

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    goto :goto_b

    :cond_1f
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->confirmAndScheduleClose()V

    :cond_20
    :goto_b
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->endUserInteraction()V

    goto :goto_d

    :cond_21
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    if-eqz p0, :cond_22

    goto :goto_c

    :cond_22
    iput-boolean v7, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeStartX:F

    iget p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    iput p0, v6, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeBaseTemp:F

    :goto_d
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :pswitch_3
    check-cast v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/view/GestureDetector;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_2b

    if-eq p0, v7, :cond_24

    if-eq p0, v1, :cond_23

    goto/16 :goto_12

    :cond_23
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->cancelInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->dismiss()V

    goto/16 :goto_12

    :cond_24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->popupSwipeStartX:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpl-float p0, p0, p1

    if-gez p0, :cond_29

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->selectedIndex()I

    move-result p0

    iget p1, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->popupSwipeBaseIndex:I

    if-eq p0, p1, :cond_25

    goto :goto_10

    :cond_25
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object p1, p0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_e
    if-ge v4, p1, :cond_27

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_26

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_26

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_27

    check-cast p0, Ljava/lang/Integer;

    goto :goto_f

    :cond_26
    add-int/2addr v4, v7

    goto :goto_e

    :cond_27
    move-object p0, v0

    :goto_f
    if-eqz p0, :cond_28

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v6, p0, v7}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->updateSelectedLevel(IZ)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->confirmAndScheduleClose()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_28
    if-nez v0, :cond_2a

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->resetAutoClose()V

    goto :goto_11

    :cond_29
    :goto_10
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->confirmAndScheduleClose()V

    :cond_2a
    :goto_11
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->endUserInteraction()V

    goto :goto_12

    :cond_2b
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->beginUserInteraction()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->popupSwipeStartX:F

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->selectedIndex()I

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->popupSwipeBaseIndex:I

    :goto_12
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :pswitch_4
    check-cast v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v5, Landroid/view/GestureDetector;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    if-eqz p0, :cond_3b

    if-eq p0, v7, :cond_2d

    if-eq p0, v1, :cond_2c

    goto/16 :goto_1a

    :cond_2c
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->cancelInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->endUserInteraction()V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dismiss()V

    goto/16 :goto_1a

    :cond_2d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iget v1, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeStartX:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iget-object v1, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float p0, p0, v1

    if-gez p0, :cond_2f

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedIndex()I

    move-result p0

    iget v1, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeBaseIndex:I

    if-eq p0, v1, :cond_2e

    goto :goto_13

    :cond_2e
    move p0, v4

    goto :goto_14

    :cond_2f
    :goto_13
    move p0, v7

    :goto_14
    invoke-virtual {v6, p2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isTouchOnModeAction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne p0, p1, :cond_30

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    :cond_30
    sget-object p0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    iget-object v0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->modeActionIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_31

    goto :goto_15

    :cond_31
    iget-object v0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->actionGroupView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_32

    iget-object v0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    const-string v1, "gearLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_32
    :goto_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playClickFeedback(Landroid/view/View;)V

    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    if-eqz p0, :cond_33

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_33
    new-instance p0, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0x10

    invoke-direct {p0, v0, v6, p1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto/16 :goto_18

    :cond_34
    if-eqz p0, :cond_35

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->confirmAndScheduleClose()V

    goto :goto_18

    :cond_35
    iget-object p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->levelGroupView:Landroid/widget/LinearLayout;

    if-nez p0, :cond_37

    :cond_36
    move-object p0, v0

    goto :goto_17

    :cond_37
    new-array p1, p1, [I

    invoke-virtual {p0, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    aget v2, p1, v4

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    aget p1, p1, v7

    int-to-float p1, p1

    sub-float/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    :goto_16
    if-ge v4, p1, :cond_36

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_38

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_38

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_38

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gtz v8, :cond_38

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_36

    check-cast p0, Ljava/lang/Integer;

    goto :goto_17

    :cond_38
    add-int/2addr v4, v7

    goto :goto_16

    :goto_17
    if-eqz p0, :cond_39

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v6, p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->updateSelectedLevel(I)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->confirmAndScheduleClose()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_39
    if-nez v0, :cond_3a

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    :cond_3a
    :goto_18
    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->endUserInteraction()V

    goto :goto_1a

    :cond_3b
    iget-boolean p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    if-eqz p0, :cond_3c

    goto :goto_19

    :cond_3c
    iput-boolean v7, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    sget-object p0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object p1, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_19
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeStartX:F

    invoke-virtual {v6}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedIndex()I

    move-result p0

    iput p0, v6, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupSwipeBaseIndex:I

    :goto_1a
    invoke-virtual {v5, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v7

    :pswitch_5
    check-cast v6, Landroid/widget/EditText;

    const-string p0, "$editText"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_3e

    sget-object p0, Lcom/lzf/easyfloat/core/FloatingWindowManager;->INSTANCE:Lcom/lzf/easyfloat/core/FloatingWindowManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/lzf/easyfloat/core/FloatingWindowManager;->getHelper(Ljava/lang/String;)Lcom/lzf/easyfloat/core/FloatingWindowHelper;

    move-result-object p0

    if-nez p0, :cond_3d

    goto :goto_1b

    :cond_3d
    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 p2, 0x20

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->frameLayout:Lcom/lzf/easyfloat/widget/ParentFrameLayout;

    invoke-virtual {p0}, Lcom/lzf/easyfloat/core/FloatingWindowHelper;->getParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1b
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, v6}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3e
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
