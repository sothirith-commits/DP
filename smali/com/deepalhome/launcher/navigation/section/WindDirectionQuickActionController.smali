.class public final Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$Companion;


# instance fields
.field public final airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;

.field public final clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

.field public committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

.field public forceWhiteContentColor:Z

.field public frontAirEnabledForUi:Z

.field public iconView:Landroid/widget/ImageView;

.field public interactive:Z

.field public isNight:Z

.field public isSwiping:Z

.field public observeVehicleState:Z

.field public pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public popupParentViewProvider:Lkotlin/jvm/functions/Function0;

.field public popupVerticalAnchor:Landroid/view/View;

.field public previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

.field public rootView:Landroid/view/View;

.field public swipeStartThresholdPx:F

.field public swipeStartX:F

.field public swipeStartY:F

.field public swipeStepPx:F

.field public tapSlopPx:F

.field public touchFeedbackEnabled:Z

.field public touchMoved:Z

.field public windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->Companion:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->HOME:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->touchFeedbackEnabled:Z

    sget-object v0, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "cache"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getWindModeFront()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getFrontDefrost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v1, Lcom/deepalhome/launcher/navigation/section/AirConditionController;->Companion:Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/AirConditionController$Companion;->resolveFrontAirConditionEnabledForUi(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->frontAirEnabledForUi:Z

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->airConditionStateChangedListener:Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$airConditionStateChangedListener$1;

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    return-void
.end method


# virtual methods
.method public final dismissWindDirectionPopup()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->cancelInteraction()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dismiss()V

    return-void
.end method

.method public final render()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->previewMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->committedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-nez v1, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->Companion:Lcom/deepalhome/launcher/navigation/WindDirectionMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->FACE:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->forceWhiteContentColor:Z

    if-eqz v3, :cond_2

    const p0, 0x7f06038c

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isNight:Z

    if-eqz p0, :cond_3

    const p0, 0x7f060099

    goto :goto_0

    :cond_3
    const p0, 0x7f060098

    :goto_0
    invoke-virtual {v2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/navigation/WindDirectionMode;->getIconRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final showWindDirectionPopup(Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/navigation/WindDirectionMode;)V
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->dismissOtherTransientUi:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

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
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->popupParentViewProvider:Lkotlin/jvm/functions/Function0;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

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
    new-instance v3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    invoke-direct {v3, v0, v2}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->isNight:Z

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->updateUIMode(Z)V

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$1;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onAnchorFeedbackRequested:Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$2;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$2;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onModePreviewChanged:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$3;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$3;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onModeConfirmed:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController$ensureWindDirectionPopup$1$4;-><init>(Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;)V

    iput-object v0, v3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->onDismissed:Lkotlin/jvm/functions/Function0;

    iput-object v3, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    :goto_3
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz p0, :cond_e

    const-string v0, "horizontalAnchor"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "verticalAnchor"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rootView:Landroid/view/ViewGroup;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentHorizontalAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->currentVerticalAnchor:Landroid/view/View;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->initialMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->selectedMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->applyPopupBackground()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->rebuildModes()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->applyPopupBackground()V

    iget-boolean p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isDismissing:Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->binding:Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;

    if-eqz p3, :cond_8

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isDismissing:Z

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    iget-boolean p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-eqz p3, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    goto/16 :goto_5

    :cond_9
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    iget-object p3, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of v4, p3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    check-cast p3, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_a
    move-object p3, v1

    :goto_4
    iget-object v4, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz p3, :cond_b

    invoke-virtual {p3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    new-instance p3, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;

    const/16 v5, 0xb

    invoke-direct {p3, v5, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance p3, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;

    const/4 v1, 0x7

    invoke-direct {p3, v1, p0}, Lcom/deepalhome/launcher/pip/PipAppWindow$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v4, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p3, Landroid/view/GestureDetector;

    new-instance v1, Lme/wcy/lrcview/LrcView$4;

    const/4 v5, 0x4

    invoke-direct {v1, v5, p0}, Lme/wcy/lrcview/LrcView$4;-><init>(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->context:Landroid/content/Context;

    invoke-direct {p3, v5, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {p3, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    new-instance v1, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;

    const/4 v3, 0x4

    invoke-direct {v1, v3, p0, p3}, Lcom/lzf/easyfloat/utils/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->modeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p3, v2, Lcom/deepalhome/launcher/databinding/WindDirectionPopupWindowBinding;->popupContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupShowTranslationPx$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p3

    invoke-static {p3}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object p3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->windowTag:Ljava/lang/String;

    iput-object v0, p3, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v4}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {p3, v0}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {p3}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    iput-object p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->positionPopup(Landroid/view/View;Landroid/view/View;)V

    iget-object p3, p0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->popupWindow:Lcom/hjq/window/EasyWindow;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/hjq/window/EasyWindow;->show()V

    :cond_c
    new-instance p3, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p1, p2, v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v4, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->resetAutoClose()V

    goto :goto_5

    :cond_d
    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->completeDismiss(Z)V

    :cond_e
    :goto_5
    return-void
.end method

.method public final updatePendingClearSchedule()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->clearPendingRunnable:Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
