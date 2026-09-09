.class public final Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final airConditionStateChangedListener:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;

.field public blurInitialized:Z

.field public confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public isNightMode:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final modes:Ljava/util/List;

.field public pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    sget-object p2, Lcom/deepalhome/launcher/navigation/AirConditionMode;->AUTO:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const v0, 0x7f1300a0

    invoke-direct {p1, p2, v0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/navigation/AirConditionMode;I)V

    new-instance p2, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    sget-object v0, Lcom/deepalhome/launcher/navigation/AirConditionMode;->COOLING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const v1, 0x7f1300a1

    invoke-direct {p2, v0, v1}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/navigation/AirConditionMode;I)V

    new-instance v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    sget-object v1, Lcom/deepalhome/launcher/navigation/AirConditionMode;->HEATING:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const v2, 0x7f1300a2

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/navigation/AirConditionMode;I)V

    new-instance v1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    sget-object v2, Lcom/deepalhome/launcher/navigation/AirConditionMode;->VENTILATION:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    const v3, 0x7f1300a3

    invoke-direct {v1, v2, v3}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;-><init>(Lcom/deepalhome/launcher/navigation/AirConditionMode;I)V

    filled-new-array {p1, p2, v0, v1}, [Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->modes:Ljava/util/List;

    new-instance p1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$modeViews$2;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->airConditionStateChangedListener:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-static {}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->loadCurrentMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method private final getModeViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->modeViews$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static loadCurrentMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v1, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->fromCache(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;)Lcom/deepalhome/launcher/carinfo/AirConditionState;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/AirConditionModeStateResolver;->resolve(Lcom/deepalhome/launcher/carinfo/AirConditionState;)Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final applyBlurRadius$3()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    return-void
.end method

.method public final applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V
    .locals 2

    const-string v0, "style"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->sanitize()V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->applyBlurRadius$3()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e0026

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->airConditionStateChangedListener:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->loadCurrentMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->airConditionStateChangedListener:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$airConditionStateChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->loadCurrentMode()Lcom/deepalhome/launcher/navigation/AirConditionMode;

    move-result-object v3

    iput-object v3, v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_0

    check-cast v6, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v8, v0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    iget-object v8, v6, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    iget-object v9, v5, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;->mode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/navigation/AirConditionMode;->getIconRes()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v8, v6, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    iget v9, v5, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;->labelRes:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    new-instance v8, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v9, 0x11

    invoke-direct {v8, v9, v0, v5}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v6, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v5, v7

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeAuto:Landroid/widget/LinearLayout;

    const-string v5, "modeAuto"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeCooling:Landroid/widget/LinearLayout;

    const-string v6, "modeCooling"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeHeating:Landroid/widget/LinearLayout;

    const-string v7, "modeHeating"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v7, v7, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->modeVentilation:Landroid/widget/LinearLayout;

    const-string v8, "modeVentilation"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v8, v1, [Landroid/view/View;

    aput-object v3, v8, v4

    aput-object v5, v8, v2

    const/4 v3, 0x2

    aput-object v6, v8, v3

    const/4 v3, 0x3

    aput-object v7, v8, v3

    :goto_1
    if-ge v4, v1, :cond_2

    aget-object v3, v8, v4

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v5, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v14, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$1;->INSTANCE:Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$1;

    new-instance v15, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$2;

    invoke-direct {v15, v0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$2;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    new-instance v6, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$3;

    invoke-direct {v6, v0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$3;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    new-instance v7, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$4;

    invoke-direct {v7, v0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$4;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    new-instance v13, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$5;

    invoke-direct {v13, v0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$installActionGestureBridge$1$5;-><init>(Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;)V

    const/16 v18, 0x0

    const/16 v22, 0x386

    const-wide/16 v11, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v9, v5

    move-object/from16 v21, v13

    move/from16 v13, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v22}, Lcom/deepalhome/launcher/util/FixedLongPressTouchListener;-><init>(Landroid/content/Context;JFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/app/FunctionListAdapter$bindTouchInteractions$touchListener$2;Lcom/deepalhome/launcher/app/AppCenterAdapter$onBindViewHolder$handleClick$1;ZLkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/2addr v4, v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    return-void
.end method

.method public final refreshModeStates()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->pendingMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->confirmedMode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getModeViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_5

    check-cast v4, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;

    iget-object v6, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;

    iget-object v3, v3, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeItem;->mode:Lcom/deepalhome/launcher/navigation/AirConditionMode;

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iget-object v6, v4, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->setSelected(Z)V

    if-eqz v3, :cond_2

    const v6, 0x7f0800bc

    goto :goto_2

    :cond_2
    const v6, 0x7f0800bd

    :goto_2
    iget-object v7, v4, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->container:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v3, :cond_3

    const v3, 0x7f060397

    goto :goto_3

    :cond_3
    iget-boolean v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isNightMode:Z

    if-eqz v3, :cond_4

    const v3, 0x7f06038c

    goto :goto_3

    :cond_4
    const v3, 0x7f06038b

    :goto_3
    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v6, v4, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->icon:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, v4, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView$ModeViews;->label:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    move v3, v5

    goto :goto_0

    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->scheduleFreeze(Leightbitlab/com/blurview/BlurView;J)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :goto_0
    return-void
.end method

.method public setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->setBlurRootView(Landroid/view/ViewGroup;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AirConditionModeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->applyBlurRadius$3()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/AirConditionModeWidgetView;->refreshModeStates()V

    return-void
.end method
