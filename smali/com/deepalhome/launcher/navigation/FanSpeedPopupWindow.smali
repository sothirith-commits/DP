.class public final Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$Companion;


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

.field public final capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

.field public final closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public final context:Landroid/content/Context;

.field public currentHorizontalAnchor:Landroid/view/View;

.field public currentVerticalAnchor:Landroid/view/View;

.field public initialLevel:I

.field public isAnchorTouchActive:Z

.field public isDismissing:Z

.field public isShowing:Z

.field public isUserInteracting:Z

.field public lastAnchorFeedbackUptimeMs:J

.field public onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

.field public onAnchorTapRequested:Lkotlin/jvm/functions/Function0;

.field public onDismissed:Lkotlin/jvm/functions/Function0;

.field public onLevelConfirmed:Lkotlin/jvm/functions/Function1;

.field public onLevelPreviewChanged:Lkotlin/jvm/functions/Function1;

.field public onOpenPanelRequested:Lkotlin/jvm/functions/Function0;

.field public final popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public popupSwipeBaseLevel:I

.field public popupSwipeStartX:F

.field public popupWindow:Lcom/hjq/window/EasyWindow;

.field public final rootView:Landroid/view/ViewGroup;

.field public selectedLevel:I

.field public suppressSeekBarCallback:Z

.field public final swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final windowTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->Companion:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->$r8$clinit:I

    sget-object v1, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v1, 0x7f0e0057

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    const-string v1, "inflate(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fan_speed_popup_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->windowTag:Ljava/lang/String;

    new-instance v1, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    invoke-direct {v1, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    new-instance p1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$swipeStartThresholdPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$swipeStartThresholdPx$2;-><init>(Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->swipeStartThresholdPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$swipeStepPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$swipeStepPx$2;-><init>(Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->swipeStepPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$popupShowTranslationPx$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow$popupShowTranslationPx$2;-><init>(Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v2, 0x10

    invoke-direct {p1, v2, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    iget-object p1, p2, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1, v0}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    invoke-virtual {p1, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Landroid/widget/AbsSeekBar;->setSplitTrack(Z)V

    new-instance p2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;

    invoke-direct {p2, v0, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

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
.method public final applyIconTint()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f06038c

    goto :goto_0

    :cond_0
    const v0, 0x7f06038b

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v1, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->leftFanIcon:Landroid/widget/ImageView;

    const/16 v2, 0xc4

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->rightFanIcon:Landroid/widget/ImageView;

    invoke-static {p0, v0}, Landroidx/core/widget/ImageViewCompat$Api21Impl;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final applyPopupBackground()V
    .locals 4

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
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContentContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dpToPx(F)F

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 p0, 0xf2

    invoke-static {v0, p0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final applySeekBarStyle()V
    .locals 14

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

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
    iget-object v6, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const/high16 v7, 0x41000000    # 8.0f

    invoke-virtual {p0, v7}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dpToPx(F)F

    move-result v7

    invoke-static {v7}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v7

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    const/high16 v3, 0x41e00000    # 28.0f

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dpToPx(F)F

    move-result v3

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    :goto_2
    sub-int/2addr v3, v7

    div-int/2addr v3, v2

    if-gez v3, :cond_3

    move v3, v1

    :cond_3
    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/16 v8, 0x48

    invoke-static {v5, v8}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v8, v5

    move v11, v3

    move v13, v3

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    new-instance v9, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v9}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const v7, 0x7f06003f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v9, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    move-object v8, v6

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const v7, 0x800003

    invoke-direct {v3, v6, v7, v0}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v2, [Landroid/graphics/drawable/DrawableWrapper;

    aput-object v5, v2, v1

    aput-object v3, v2, v0

    invoke-direct {v6, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v2, 0x1020000

    invoke-virtual {v6, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v1, 0x102000d

    invoke-virtual {v6, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    if-ne v1, v0, :cond_4

    goto :goto_3

    :cond_4
    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_3
    return-void
.end method

.method public final completeDismiss(Z)V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->windowTag:Ljava/lang/String;

    invoke-static {v1}, Lcom/hjq/window/EasyWindow;->cancelByTag(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isDismissing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isAnchorTouchActive:Z

    iput-object v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->lastAnchorFeedbackUptimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final confirmAndScheduleClose()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->selectedLevel:I

    iget v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onLevelConfirmed:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->initialLevel:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->lastAnchorFeedbackUptimeMs:J

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dismiss()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final dismiss()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isDismissing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

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
    iput-boolean v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isDismissing:Z

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

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

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Landroidx/transition/Transition$3;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->completeDismiss(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final dpToPx(F)F
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

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
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->setDragging(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->resetAutoClose()V

    return-void
.end method

.method public final positionPopup(Landroid/view/View;Landroid/view/View;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->rootView:Landroid/view/ViewGroup;

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

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v4, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v1, v3, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/view/View;->layout(IIII)V

    iget-object v1, v3, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

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

    div-int/lit8 v4, v2, 0x2

    sub-int/2addr p1, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v0, v2

    if-gez v0, :cond_0

    move v0, v5

    :cond_0
    invoke-static {p1, v5, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    sub-int/2addr p2, v3

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dpToPx(F)F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p2, p0

    if-gez p2, :cond_1

    move p2, v5

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

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

    invoke-virtual {v1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final resetAutoClose()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->closeWindowRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isUserInteracting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c001a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-static {v1, v2, v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final updateSelectedLevel(IZ)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iget v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->selectedLevel:I

    if-ne v2, p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->selectedLevel:I

    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->capsuleThumbDrawable:Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    iget v2, p2, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->levelValue:I

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iput v1, p2, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->levelValue:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_0
    iget-object p2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;

    iget-object v1, p2, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq v1, p1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->suppressSeekBarCallback:Z

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/FanSpeedPopupWindowBinding;->fanSpeedSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->suppressSeekBarCallback:Z

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->onLevelPreviewChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method
