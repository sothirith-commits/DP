.class public final Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$Companion;


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

.field public final closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public final context:Landroid/content/Context;

.field public currentHorizontalAnchor:Landroid/view/View;

.field public currentVerticalAnchor:Landroid/view/View;

.field public initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public isAnchorTouchActive:Z

.field public isDismissing:Z

.field public isNight:Z

.field public isShowing:Z

.field public isUserInteracting:Z

.field public lastAnchorFeedbackUptimeMs:J

.field public onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

.field public onDismissed:Lkotlin/jvm/functions/Function0;

.field public onModeConfirmed:Lkotlin/jvm/functions/Function1;

.field public onModePreviewChanged:Lkotlin/jvm/functions/Function1;

.field public final orderedModes:Ljava/util/List;

.field public final popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public popupSwipeBaseIndex:I

.field public popupSwipeStartX:F

.field public popupWindow:Lcom/hjq/window/EasyWindow;

.field public final rootView:Landroid/view/ViewGroup;

.field public selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public final swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final windowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f0e0124

    invoke-static {p1, v1, p2, v0, p2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    sget-object p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->ordered:Ljava/util/List;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->orderedModes:Ljava/util/List;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "wind_direction_popup_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->windowTag:Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isNight:Z

    new-instance p1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$swipeStartThresholdPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$swipeStartThresholdPx$2;-><init>(Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$swipeStepPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$swipeStepPx$2;-><init>(Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$popupShowTranslationPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$popupShowTranslationPx$2;-><init>(Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 p2, 0x14

    invoke-direct {p1, p2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

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
.method public final applyPopupBackground()V
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isNight:Z

    if-eqz v0, :cond_0

    const v0, 0x7f060026

    goto :goto_0

    :cond_0
    const v0, 0x7f060023

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p0, 0xf2

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final cancelInteraction()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateSelectedMode(Lcom/deepalhome/launcher/navigation/WindDirectionMode;Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final completeDismiss(Z)V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->windowTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isDismissing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isAnchorTouchActive:Z

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentVerticalAnchor:Landroid/view/View;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->lastAnchorFeedbackUptimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final confirmAndScheduleClose()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onModeConfirmed:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isDismissing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

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
    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isDismissing:Z

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

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

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->completeDismiss(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final dpToPx(F)F
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

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

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final positionPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rootView:Landroid/view/ViewGroup;

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

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

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

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v3, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

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

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p2, p0

    if-gez p2, :cond_1

    move p2, v5

    :cond_1
    iget-object p0, v3, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

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

    iget-object p1, v3, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final rebuildModes()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42300000    # 44.0f

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    iget-boolean v4, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isNight:Z

    if-eqz v4, :cond_0

    const v4, 0x7f060099

    goto :goto_0

    :cond_0
    const v4, 0x7f060098

    :goto_0
    iget-object v5, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    const v6, 0x7f060397

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    const v7, 0x7f06003f

    invoke-virtual {v5, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    iget-object v8, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->orderedModes:Ljava/util/List;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-ltz v10, :cond_5

    check-cast v11, Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iget-object v13, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-ne v11, v13, :cond_1

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    :goto_2
    iget-object v14, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    new-instance v15, Landroid/widget/FrameLayout;

    invoke-direct {v15, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v10, :cond_2

    const/4 v10, 0x0

    goto :goto_3

    :cond_2
    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    :goto_3
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v0, v10}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dpToPx(F)F

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v13, :cond_3

    move/from16 v16, v2

    move v2, v7

    goto :goto_4

    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    move/from16 v16, v2

    const v2, 0x7f06038f

    invoke-virtual {v10, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_4
    invoke-virtual {v9, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v15, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v10, 0x11

    invoke-direct {v9, v3, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->getIconRes()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz v13, :cond_4

    move v9, v6

    goto :goto_5

    :cond_4
    move v9, v4

    :goto_5
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v10, v12

    move/from16 v2, v16

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    iget-boolean v2, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentVerticalAnchor:Landroid/view/View;

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    new-instance v4, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$$ExternalSyntheticLambda0;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final resetAutoClose()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isUserInteracting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->orderedModes:Ljava/util/List;

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

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

.method public final updateSelectedMode(Lcom/deepalhome/launcher/navigation/WindDirectionMode;Z)V
    .locals 10

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eq p1, v0, :cond_5

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rebuildModes()V

    if-eqz p2, :cond_5

    iget-boolean p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    iget-object p2, p1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object p2

    new-instance v9, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    iget-object v3, p1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    const-string p1, "modeLayout"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v6, "getChildAt(I)Landroid/view/View;"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Landroid/widget/LinearLayout;

    const-string v5, "getChildAt"

    const/4 v8, 0x6

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p2, v9}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object p1

    iget-object p2, p1, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of p1, v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onModePreviewChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isNight:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    if-ne v0, p1, :cond_0

    iget-object v0, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isNight:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->applyPopupBackground()V

    iget-object p1, v1, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rebuildModes()V

    :cond_1
    return-void
.end method
