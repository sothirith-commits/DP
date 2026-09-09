.class public final Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

.field public static final ORDERED_LEVELS:Ljava/util/List;


# instance fields
.field public actionGroupView:Landroid/widget/LinearLayout;

.field public final binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

.field public final closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public final context:Landroid/content/Context;

.field public currentHorizontalAnchor:Landroid/view/View;

.field public currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

.field public currentVerticalAnchor:Landroid/view/View;

.field public final iconResolver:Lkotlin/jvm/functions/Function2;

.field public initialLevel:I

.field public initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

.field public isAnchorTouchActive:Z

.field public isDismissing:Z

.field public isShowing:Z

.field public isUserInteracting:Z

.field public lastAnchorFeedbackUptimeMs:J

.field public levelGroupView:Landroid/widget/LinearLayout;

.field public modeActionIconView:Landroid/widget/ImageView;

.field public onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

.field public onAnchorTapRequested:Lkotlin/jvm/functions/Function1;

.field public onDismissed:Lkotlin/jvm/functions/Function0;

.field public onLevelConfirmed:Lkotlin/jvm/functions/Function2;

.field public onLevelPreviewChanged:Lkotlin/jvm/functions/Function2;

.field public onModeActionRequested:Lkotlin/jvm/functions/Function1;

.field public pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

.field public final popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public popupSwipeBaseIndex:I

.field public popupSwipeStartX:F

.field public popupWindow:Lcom/hjq/window/EasyWindow;

.field public final rootView:Landroid/view/ViewGroup;

.field public selectedLevel:I

.field public final swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final windowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$Companion;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/deepalhome/launcher/navigation/section/SeatClimateQuickActionController$ensureSeatClimatePopup$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->rootView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->iconResolver:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const p2, 0x7f0e00ed

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "seat_climate_popup_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->windowTag:Ljava/lang/String;

    new-instance p1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStartThresholdPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStartThresholdPx$2;-><init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStepPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$swipeStepPx$2;-><init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$popupShowTranslationPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow$popupShowTranslationPx$2;-><init>(Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object p1, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 p2, 0x11

    invoke-direct {p1, p2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static isEventInsideView(Landroid/view/MotionEvent;Landroid/view/View;I)Z
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v2, v0, v1

    sub-int v3, v2, p2

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v5, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, p2

    aget v0, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    int-to-float v0, v3

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    int-to-float v0, v6

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    int-to-float v0, v5

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    int-to-float p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_0

    move v1, v4

    :cond_0
    return v1
.end method


# virtual methods
.method public final cancelInteraction()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    iget v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialLevel:I

    if-eq v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialLevel:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final completeDismiss(Z)V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->pendingModeActionRunnable:Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->windowTag:Ljava/lang/String;

    invoke-static {v2}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isDismissing:Z

    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iget-object v0, v1, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v1, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->lastAnchorFeedbackUptimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final confirmAndScheduleClose()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    iget v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialLevel:I

    if-eq v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onLevelConfirmed:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iget v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    iput v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialLevel:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final createGroupBackground()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060026

    goto :goto_0

    :cond_0
    const v0, 0x7f060023

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p0, 0xf2

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v1
.end method

.method public final dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isDismissing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isDismissing:Z

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroidx/transition/Transition$3;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->completeDismiss(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final dpToPx(F)F
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public final endUserInteraction()V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final isTouchOnModeAction(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->actionGroupView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method public final loadSeatDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v0, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, -0x31

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public final positionPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v4, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v4, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v3, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v4, 0x2

    new-array v6, v4, [I

    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v6, v6, v5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v4

    add-int/2addr p1, v6

    new-array v4, v4, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x1

    aget p2, v4, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v4

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr p1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    move v0, v5

    :cond_0
    invoke-static {p1, v5, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    sub-int/2addr p2, v2

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p2, p0

    if-gez p2, :cond_1

    move p2, v5

    :cond_1
    iget-object p0, v3, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x800033

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v5, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, v3, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final rebuildItems()V
    .locals 25

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->actionGroupView:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->modeActionIconView:Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->levelGroupView:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;

    iget-object v3, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/SeatVentPopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v6, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->createGroupBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    const/high16 v9, 0x42980000    # 76.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x42a00000    # 80.0f

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    float-to-int v12, v12

    const/high16 v13, 0x42480000    # 50.0f

    invoke-virtual {v0, v13}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v14

    float-to-int v14, v14

    sget-object v15, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v15

    const v16, 0x7f06038b

    const v17, 0x7f06038c

    if-eqz v15, :cond_0

    move/from16 v15, v17

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :goto_0
    invoke-virtual {v6, v15}, Landroid/content/Context;->getColor(I)I

    move-result v15

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v12, 0x41600000    # 14.0f

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v13

    invoke-virtual {v10, v13}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v13, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->modeActionIconView:Landroid/widget/ImageView;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v9, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    sget-object v14, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->HEAT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v9, v14, :cond_1

    sget-object v9, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_1

    :cond_1
    move-object v9, v14

    :goto_1
    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->iconResolver:Lkotlin/jvm/functions/Function2;

    invoke-interface {v4, v9, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->loadSeatDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v7, v14, :cond_3

    sget-object v7, Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;->VENT:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    goto :goto_3

    :cond_3
    move-object v7, v14

    :goto_3
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v7, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v9, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    if-ne v9, v14, :cond_5

    const-string v9, "Switch ventilation"

    goto :goto_4

    :cond_5
    const-string v9, "Switch heating"

    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v9, 0x2

    const/high16 v11, 0x41300000    # 11.0f

    invoke-virtual {v7, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v14, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v5, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->actionGroupView:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v7, 0x10

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->createGroupBackground()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v15

    float-to-int v15, v15

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v1, v10, v14, v15, v7}, Landroid/view/View;->setPadding(IIII)V

    sget-object v7, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v3

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v15, v10, 0x1

    if-ltz v10, :cond_10

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    if-nez v10, :cond_6

    move/from16 v19, v13

    :goto_6
    const/high16 v10, 0x42980000    # 76.0f

    goto :goto_7

    :cond_6
    move/from16 v19, v3

    goto :goto_6

    :goto_7
    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    const/high16 v10, 0x42480000    # 50.0f

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v8

    float-to-int v8, v8

    sget-object v21, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v21

    if-eqz v21, :cond_7

    move/from16 v10, v17

    goto :goto_8

    :cond_7
    move/from16 v10, v16

    :goto_8
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    move-result v10

    const v12, 0x7f06003f

    invoke-virtual {v6, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    const v13, 0x7f060397

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v13

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v22

    if-eqz v22, :cond_8

    const/16 v22, 0x24

    :goto_9
    move/from16 v3, v22

    goto :goto_a

    :cond_8
    const/16 v22, 0x16

    goto :goto_9

    :goto_a
    invoke-static {v10, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    move/from16 v22, v3

    iget v3, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    move-object/from16 v23, v7

    if-ne v14, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_b

    :cond_9
    const/4 v3, 0x0

    :goto_b
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move/from16 v24, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v9, 0x40800000    # 4.0f

    if-eqz v19, :cond_a

    const/4 v11, 0x0

    goto :goto_c

    :cond_a
    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    :goto_c
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    move/from16 v18, v12

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    invoke-virtual {v10, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v11, Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v11, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v8, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->loadSeatDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    :cond_b
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_c

    iget-object v8, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_c
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v8, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x41a00000    # 20.0f

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    float-to-int v12, v12

    const/4 v11, -0x2

    invoke-direct {v9, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x40800000    # 4.0f

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    float-to-int v12, v12

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMinWidth(I)V

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v9, 0x40e00000    # 7.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v14

    float-to-int v14, v14

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v8, v14, v12, v9, v12}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/4 v9, 0x2

    const/high16 v14, 0x41300000    # 11.0f

    invoke-virtual {v8, v9, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v3, :cond_d

    goto :goto_e

    :cond_d
    move/from16 v13, v24

    :goto_e
    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v13, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v13, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v0, v12}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v3, :cond_e

    move/from16 v12, v18

    goto :goto_f

    :cond_e
    move/from16 v12, v22

    :goto_f
    invoke-virtual {v13, v12}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_f
    const v3, 0x3f6147ae    # 0.88f

    :goto_10
    invoke-virtual {v8, v3}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v8, v11

    move v11, v14

    move v10, v15

    move-object/from16 v7, v23

    const/4 v3, 0x0

    const/16 v12, 0x11

    const/4 v13, 0x1

    goto/16 :goto_5

    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_11
    iput-object v1, v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->levelGroupView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final refreshSelection(ILcom/deepalhome/launcher/navigation/section/SeatClimateMode;Z)V
    .locals 1

    const-string v0, "mode"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iput p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->initialLevel:I

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->rebuildItems()V

    return-void
.end method

.method public final resetAutoClose()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isUserInteracting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final selectedIndex()I
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final updateSelectedLevel(I)V
    .locals 11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->ORDERED_LEVELS:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    iget v2, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    if-eq v0, v2, :cond_b

    iput v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->rebuildItems()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->isShowing:Z

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->levelGroupView:Landroid/widget/LinearLayout;

    if-nez v4, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object v0

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v7, "getChildAt(I)Landroid/view/View;"

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-class v5, Landroid/widget/LinearLayout;

    const-string v6, "getChildAt"

    const/4 v9, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {v0, v10}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    iget-object v2, v0, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    invoke-interface {v2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, v0, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    instance-of v0, v3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_6
    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_7

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v1

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    :cond_8
    if-nez v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    sget-object v0, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->onLevelPreviewChanged:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->currentMode:Lcom/deepalhome/launcher/navigation/section/SeatClimateMode;

    iget p0, p0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->selectedLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-void
.end method
