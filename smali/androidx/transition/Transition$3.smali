.class public final Landroidx/transition/Transition$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    iput-object p2, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_2
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_3
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_4
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_5
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_6
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$setTabIndicatorAnimator$p(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_7
    const/4 p1, 0x0

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/core/provider/CallbackWithHandler$2;

    iget-object p1, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    check-cast p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    iget-object v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mFooterLocked:Z

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->val$noMoreData:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setNoMoreData(Z)V

    :cond_1
    iget-object p0, p0, Landroidx/core/provider/CallbackWithHandler$2;->val$callback:Ljava/lang/Object;

    check-cast p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;

    iget-object p0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout$7;->this$0:Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->LoadFinish:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->reboundAnimator:Landroid/animation/ValueAnimator;

    iget p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mSpinner:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object v0, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->None:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_4

    iget-boolean v1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isOpening:Z

    if-nez v1, :cond_4

    iget-boolean p1, p1, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->isDragging:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->notifyStateChanged(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    iget-object v0, p0, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mViceState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-eq p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->setViceState(Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndIconDelegate;->refreshIconState()V

    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->fadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_4
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/slider/BaseSlider;

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentViewOverlay(Landroid/view/View;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/slider/BaseSlider;->labels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tooltip/TooltipDrawable;

    iget-object v1, p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewOverlay;

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    return-void

    :pswitch_5
    const/4 p1, 0x5

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->setStateInternal(I)V

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_7
    return-void

    :pswitch_6
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;

    iget-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/motion/MaterialBottomContainerBackHelper;->updateBackProgress(F)V

    return-void

    :pswitch_7
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/internal/StateListAnimator;

    iget-object v0, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/internal/StateListAnimator;->runningAnimator:Landroid/animation/ValueAnimator;

    :cond_8
    return-void

    :pswitch_8
    const/4 p1, 0x5

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setStateInternal(I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_9
    return-void

    :pswitch_9
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Landroid/view/ViewPropertyAnimator;

    return-void

    :pswitch_a
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p1

    iget-boolean p1, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->detecting:Z

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->settleAnimation:Landroid/animation/ValueAnimator;

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->stopDetecting()V

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1100(Lcom/deepalhome/launcher/view/DragLinearLayout;)V

    :goto_3
    return-void

    :pswitch_b
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_c
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_d
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_e
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_f
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->completeDismiss(Z)V

    return-void

    :pswitch_10
    const-string v0, "animation"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$setTabIndicatorAnimator$p(Lcom/deepalhome/launcher/app/AppCenterView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_11
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    return-void

    :pswitch_12
    const/4 p1, 0x0

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    return-void

    :pswitch_13
    iget-object v0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/Transition;

    invoke-virtual {v0}, Landroidx/transition/Transition;->end()V

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    iget p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->newIndicatorColorIndex:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-object v1, v1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->newIndicatorColorIndex:I

    iput-boolean v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->dirtyColors:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget v0, p0, Landroidx/transition/Transition$3;->$r8$classId:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :sswitch_0
    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/view/DragLinearLayout;

    invoke-static {p0}, Lcom/deepalhome/launcher/view/DragLinearLayout;->access$1000(Lcom/deepalhome/launcher/view/DragLinearLayout;)Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$DragItem;->dragging:Z

    return-void

    :sswitch_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/transition/Transition$3;->this$0:Ljava/lang/Object;

    check-cast p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;

    iget-object v0, p0, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->mAnimationCallbacks:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationStart(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
