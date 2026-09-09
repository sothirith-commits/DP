.class public final Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$Companion;


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

.field public final closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public final context:Landroid/content/Context;

.field public currentHorizontalAnchor:Landroid/view/View;

.field public currentVerticalAnchor:Landroid/view/View;

.field public initialTemperature:F

.field public isAnchorTouchActive:Z

.field public isDismissing:Z

.field public isShowing:Z

.field public isUserInteracting:Z

.field public lastAnchorFeedbackUptimeMs:J

.field public onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

.field public onAnchorTapRequested:Lkotlin/jvm/functions/Function0;

.field public onDismissed:Lkotlin/jvm/functions/Function0;

.field public onModeSelected:Lkotlin/jvm/functions/Function1;

.field public onOpenPanelRequested:Lkotlin/jvm/functions/Function0;

.field public onTemperatureConfirmed:Lkotlin/jvm/functions/Function1;

.field public onTemperaturePreviewChanged:Lkotlin/jvm/functions/Function1;

.field public final popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public popupSwipeBaseTemp:F

.field public popupSwipeStartX:F

.field public popupWindow:Lcom/hjq/window/EasyWindow;

.field public final rootView:Landroid/view/ViewGroup;

.field public selectedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public selectedTemperature:F

.field public final swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final windowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->$r8$clinit:I

    sget-object p2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f0e0105

    invoke-static {p1, v1, p2, v0, p2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    const-string p2, "inflate(...)"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "temperature_popup_"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->windowTag:Ljava/lang/String;

    const/high16 p1, 0x41c80000    # 25.0f

    iput p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    iput p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    iput p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupSwipeBaseTemp:F

    new-instance p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$swipeStartThresholdPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$swipeStartThresholdPx$2;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$swipeStepPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$swipeStepPx$2;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$popupShowTranslationPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$popupShowTranslationPx$2;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 p2, 0x13

    invoke-direct {p1, p2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

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
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->buildPopupBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->buildPopupBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final buildPopupBackgroundDrawable()Landroid/graphics/drawable/GradientDrawable;
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
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p0, 0xf2

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v1
.end method

.method public final cancelInteraction()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    iget v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->updateSelectedTemperature(FZ)V

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final completeDismiss(Z)V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->windowTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isDismissing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentVerticalAnchor:Landroid/view/View;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->lastAnchorFeedbackUptimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final confirmAndScheduleClose()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    iget v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onTemperatureConfirmed:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->initialTemperature:F

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isDismissing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

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
    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isDismissing:Z

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

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

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->completeDismiss(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final dpToPx(F)F
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

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

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final positionPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 9

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rootView:Landroid/view/ViewGroup;

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

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

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

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v6, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/2addr v6, v7

    add-int/2addr v6, v4

    new-array v4, v7, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v4, v4, v5

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/2addr p1, v7

    add-int/2addr p1, v4

    new-array v4, v7, [I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p2, 0x1

    aget p2, v4, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v4

    sub-int/2addr p1, v6

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

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p2, p0

    if-gez p2, :cond_1

    move p2, v5

    :cond_1
    iget-object p0, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

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

    iget-object p1, v3, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final rebuildGearAround(F)V
    .locals 19

    move-object/from16 v0, p0

    const/4 v2, 0x1

    const/4 v3, 0x6

    int-to-float v4, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    const/4 v6, 0x3

    int-to-float v6, v6

    mul-float/2addr v6, v5

    sub-float v6, p1, v6

    const/high16 v7, 0x42020000    # 32.5f

    sub-float/2addr v7, v4

    const/high16 v4, 0x418c0000    # 17.5f

    invoke-static {v6, v4, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v4

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static {v7, v6}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v6

    :goto_0
    iget-boolean v9, v6, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    sget-object v10, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v9, v4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v7

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    cmpg-float v9, v9, p1

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v6, v2

    goto :goto_1

    :cond_2
    const/4 v6, -0x1

    :goto_2
    if-gez v6, :cond_3

    move v6, v7

    :cond_3
    iget-object v4, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object v9, v4, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v9, 0x42600000    # 56.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v10

    float-to-int v10, v10

    const/high16 v11, 0x42c00000    # 96.0f

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v9

    float-to-int v9, v9

    sget-object v12, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v12

    if-eqz v12, :cond_4

    const v12, 0x7f06038c

    goto :goto_3

    :cond_4
    const v12, 0x7f06038b

    :goto_3
    iget-object v13, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v13, v12}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v14, v7

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    add-int/lit8 v15, v14, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->floatValue()F

    move-result v16

    if-ne v14, v6, :cond_5

    move/from16 v17, v2

    goto :goto_5

    :cond_5
    move/from16 v17, v7

    :goto_5
    sub-int v18, v14, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v1, v4, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    if-eqz v17, :cond_b

    sget-object v5, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;->displayModel(F)Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;

    move-result-object v5

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0e0104

    invoke-virtual {v2, v3, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v14, :cond_6

    move v14, v7

    goto :goto_6

    :cond_6
    const/high16 v14, 0x40000000    # 2.0f

    invoke-virtual {v0, v14}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v14

    float-to-int v14, v14

    :goto_6
    invoke-virtual {v3, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v3, 0x7f0b044c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    iget-object v14, v5, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->integerPart:Ljava/lang/String;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v3, 0x7f0b044a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v14, "."

    if-eqz v3, :cond_8

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    const v3, 0x7f0b044e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_9

    const-string v7, "\u00b0"

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    const v3, 0x7f0b044b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    iget-object v5, v5, Lcom/deepalhome/launcher/navigation/temperature/TemperatureDisplayModel;->decimalPart:Ljava/lang/String;

    invoke-static {v5, v14}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    move/from16 v16, v6

    move-object/from16 p1, v8

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_a

    :cond_b
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v14, :cond_c

    const/4 v7, 0x0

    goto :goto_7

    :cond_c
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    :goto_7
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "tnum"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    sget-object v3, Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;->INSTANCE:Lcom/deepalhome/launcher/navigation/temperature/TemperatureUiFormatter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result v3

    sget-object v7, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v14, 0x1

    invoke-static {v3, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v14, "%.1f"

    invoke-static {v7, v14, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x2e

    move/from16 v16, v6

    const/4 v6, 0x0

    const/4 v14, 0x6

    invoke-static {v3, v7, v6, v6, v14}, Lkotlin/text/StringsKt__StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    const v6, 0x3f333333    # 0.7f

    if-gez v7, :cond_d

    move-object/from16 p1, v8

    goto :goto_8

    :cond_d
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 p1, v8

    new-instance v8, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {v8, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x21

    invoke-virtual {v14, v8, v7, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v3, v14

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41c00000    # 24.0f

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v3, "sans-serif-medium"

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, 0x1

    if-eq v5, v3, :cond_f

    if-eq v5, v6, :cond_e

    const v6, 0x3eb33333    # 0.35f

    goto :goto_9

    :cond_e
    const/high16 v6, 0x3f000000    # 0.5f

    goto :goto_9

    :cond_f
    const v6, 0x3f333333    # 0.7f

    :goto_9
    invoke-virtual {v2, v6}, Landroid/view/View;->setAlpha(F)V

    :goto_a
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v8, p1

    move v2, v3

    move v14, v15

    move/from16 v6, v16

    const/4 v3, 0x6

    const/high16 v5, 0x3f000000    # 0.5f

    goto/16 :goto_4

    :cond_10
    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentVerticalAnchor:Landroid/view/View;

    if-eqz v1, :cond_11

    if-eqz v2, :cond_11

    new-instance v3, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;

    const/4 v5, 0x2

    invoke-direct {v3, v0, v1, v2, v5}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, v4, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final rebuildModes()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object v2, v1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/high16 v2, 0x429c0000    # 78.0f

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x42b00000    # 88.0f

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x42080000    # 34.0f

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f060099

    goto :goto_0

    :cond_0
    const v5, 0x7f060098

    :goto_0
    iget-object v6, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    sget-object v7, Lcom/deepalhome/launcher/navigation/AirConditionMode;->Companion:Lcom/deepalhome/launcher/navigation/AirConditionMode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/deepalhome/launcher/navigation/AirConditionMode;->ordered:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_a

    check-cast v10, Lcom/deepalhome/launcher/navigation/AirConditionMode;

    iget-object v12, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const/4 v13, 0x1

    if-ne v12, v10, :cond_1

    move v12, v13

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_5

    if-eq v14, v13, :cond_4

    if-eq v14, v15, :cond_3

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_3
    const v14, 0x7f060040

    goto :goto_4

    :cond_4
    const v14, 0x7f060048

    goto :goto_4

    :cond_5
    :goto_3
    const v14, 0x7f06003f

    :goto_4
    invoke-virtual {v6, v14}, Landroid/content/Context;->getColor(I)I

    move-result v14

    if-eqz v12, :cond_6

    move v15, v14

    goto :goto_5

    :cond_6
    move v15, v5

    :goto_5
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v13, 0x11

    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->setGravity(I)V

    move/from16 v16, v5

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v7

    const/4 v7, -0x2

    invoke-direct {v5, v7, v7, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v13, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v13, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/navigation/AirConditionMode;->getIconRes()I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v15}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v5, v13}, Landroid/view/View;->setAlpha(F)V

    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move/from16 v18, v4

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x40c00000    # 6.0f

    move/from16 v19, v11

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v13, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0x11

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v4, 0x0

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/navigation/AirConditionMode;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41500000    # 13.0f

    const/4 v7, 0x2

    invoke-virtual {v13, v7, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string v7, "sans-serif-medium"

    invoke-static {v7, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v9, :cond_7

    const/4 v7, 0x0

    goto :goto_6

    :cond_7
    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v7

    float-to-int v7, v7

    :goto_6
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v9, 0x41900000    # 18.0f

    invoke-virtual {v0, v9}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dpToPx(F)F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    if-eqz v12, :cond_9

    sget-object v9, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x24

    goto :goto_7

    :cond_8
    const/16 v9, 0x18

    :goto_7
    invoke-static {v14, v9}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v9

    goto :goto_8

    :cond_9
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v11, 0x7f06038f

    invoke-virtual {v9, v11}, Landroid/content/Context;->getColor(I)I

    move-result v9

    :goto_8
    invoke-virtual {v4, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v4, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;

    const/4 v9, 0x1

    invoke-direct {v4, v0, v10, v8, v9}, Lcom/deepalhome/launcher/HelperActivity$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, v1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move/from16 v5, v16

    move-object/from16 v7, v17

    move/from16 v4, v18

    move/from16 v9, v19

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_b
    iget-boolean v2, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iget-object v3, v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->currentVerticalAnchor:Landroid/view/View;

    if-eqz v2, :cond_c

    if-eqz v3, :cond_c

    new-instance v4, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;Landroid/view/View;Landroid/view/View;I)V

    iget-object v0, v1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final resetAutoClose()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isUserInteracting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final updateSelectedTemperature(FZ)V
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Companion;->normalizeTemperature(F)F

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->rebuildGearAround(F)V

    if-eqz p2, :cond_6

    iget-boolean p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->isShowing:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->binding:Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;

    iget-object p2, p1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    invoke-static {v1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object p2

    new-instance v8, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    iget-object v2, p1, Lcom/deepalhome/launcher/databinding/TemperaturePopupWindowBinding;->gearLayout:Landroid/widget/LinearLayout;

    const-string p1, "gearLayout"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "getChildAt(I)Landroid/view/View;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Landroid/widget/LinearLayout;

    const-string v4, "getChildAt"

    const/4 v7, 0x5

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p2, v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object p1

    iget-object p2, p1, Lkotlin/sequences/DistinctSequence;->source:Lkotlin/sequences/Sequence;

    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p1, Lkotlin/sequences/DistinctSequence;->keySelector:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Ljava/lang/Float;

    :cond_2
    iget v2, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_3
    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x7f0b044d

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p1

    :goto_1
    sget-object p1, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->INSTANCE:Lcom/deepalhome/launcher/util/TouchFeedbackHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/TouchFeedbackHelper;->playPressAnimation(Landroid/view/View;)V

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->onTemperaturePreviewChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_7

    iget p0, p0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->selectedTemperature:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method
