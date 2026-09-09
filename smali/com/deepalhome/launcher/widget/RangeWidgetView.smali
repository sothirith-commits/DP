.class public final Lcom/deepalhome/launcher/widget/RangeWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public final carInfoChangedListener:Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;

.field public isNightMode:Z

.field public isRuntimeListenersRegistered:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/widget/RangeWidgetView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/widget/RangeWidgetView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;-><init>(Lcom/deepalhome/launcher/widget/RangeWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->carInfoChangedListener:Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/widget/RangeWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/widget/RangeWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static normalizeMileage(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final applyBlurRadius$8()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->applyBlurRadius$8()V

    return-void
.end method

.method public final bindMetric(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V
    .locals 2

    iget v0, p5, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget p1, p5, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->percent:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f1303ee

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p5, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->valueText:Ljava/lang/String;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean p0, p5, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;->showValue:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public final dp$1(I)I
    .locals 1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    return p0
.end method

.method public final formatDistanceValue(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1303e8

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00e5

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isRuntimeListenersRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->carInfoChangedListener:Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->refreshContent()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isRuntimeListenersRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isRuntimeListenersRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->carInfoChangedListener:Lcom/deepalhome/launcher/widget/RangeWidgetView$carInfoChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->refreshContent()V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07009c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    mul-int/lit8 p2, p2, 0x2

    :goto_1
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final refreshContent()V
    .locals 23

    move-object/from16 v6, p0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v2

    :goto_1
    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/util/CarUtil;->SL03_DEVICES:Ljava/util/Set;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->getDevice()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v8, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v4

    const v7, 0x7f1303eb

    const-string v9, "getString(...)"

    const v10, 0x7f1303ed

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v12, 0x42340000    # 45.0f

    const v13, 0x7f1303ec

    const/16 v14, 0x64

    const-string v15, ""

    const v5, 0x7f1303e9

    if-eqz v4, :cond_5

    if-eqz v8, :cond_3

    new-instance v0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    new-instance v1, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    const/16 v4, 0x48

    invoke-direct {v1, v5, v4, v15, v2}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    new-instance v4, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    invoke-virtual {v6, v2}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->formatDistanceValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v13, v2, v5, v3}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    const/16 v20, 0x1d1

    const/16 v18, 0x1

    const v19, 0x7f1303ef

    move-object/from16 v17, v0

    move-object/from16 v21, v1

    move-object/from16 v22, v4

    invoke-direct/range {v17 .. v22}, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;-><init>(ZIILcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    new-instance v1, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    const/16 v4, 0x37

    invoke-direct {v1, v5, v4, v15, v2}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    new-instance v4, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    const/16 v5, 0x15

    int-to-float v8, v5

    div-float/2addr v8, v12

    mul-float/2addr v8, v11

    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    invoke-static {v8, v2, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v11, v10, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v4, v7, v8, v5, v3}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    const/16 v10, 0x5f

    const/4 v8, 0x0

    const v9, 0x7f1303ea

    move-object v7, v0

    move-object v11, v1

    move-object v12, v4

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;-><init>(ZIILcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    new-instance v15, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    const/16 v1, 0xd7

    invoke-virtual {v6, v1}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->formatDistanceValue(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2e

    const v5, 0x7f1303ea

    invoke-direct {v15, v5, v4, v1, v3}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    new-instance v1, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    const/16 v4, 0x2c6

    invoke-virtual {v6, v4}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->formatDistanceValue(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x45

    invoke-direct {v1, v13, v5, v4, v3}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    const/16 v14, 0x39d

    const/4 v12, 0x0

    const v13, 0x7f1303ef

    move-object v11, v0

    move-object/from16 v16, v1

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;-><init>(ZIILcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    :goto_3
    move-object v7, v0

    goto/16 :goto_11

    :cond_5
    const v4, 0x7f1303ea

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSocRemainRange()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->normalizeMileage(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getOilRemainRange()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->normalizeMileage(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getFuelLevelLiters()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    if-gez v16, :cond_6

    move/from16 v16, v2

    :cond_6
    move/from16 v7, v16

    goto :goto_4

    :cond_7
    move v7, v2

    :goto_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getTotalRemainRange()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->normalizeMileage(Ljava/lang/String;)I

    move-result v19

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_9

    if-lez v19, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v8, :cond_a

    :goto_5
    move/from16 v19, v4

    goto :goto_6

    :cond_a
    if-lez v19, :cond_b

    goto :goto_6

    :cond_b
    add-int v19, v4, v5

    :goto_6
    new-instance v20, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;

    if-eqz v1, :cond_c

    const v21, 0x7f1303ea

    goto :goto_7

    :cond_c
    const v21, 0x7f1303ef

    :goto_7
    new-instance v13, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    if-nez v8, :cond_e

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    const v3, 0x7f1303ea

    goto :goto_9

    :cond_e
    :goto_8
    const v3, 0x7f1303e9

    :goto_9
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getHvPercent()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_f

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10, v2, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v10

    goto :goto_a

    :cond_f
    move v10, v2

    :goto_a
    if-nez v8, :cond_11

    if-eqz v1, :cond_10

    goto :goto_b

    :cond_10
    invoke-virtual {v6, v4}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->formatDistanceValue(I)Ljava/lang/String;

    move-result-object v15

    :cond_11
    :goto_b
    if-nez v8, :cond_12

    if-nez v1, :cond_12

    const/4 v4, 0x1

    goto :goto_c

    :cond_12
    move v4, v2

    :goto_c
    invoke-direct {v13, v3, v10, v15, v4}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    new-instance v3, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    if-eqz v1, :cond_13

    const v4, 0x7f1303eb

    goto :goto_d

    :cond_13
    const v4, 0x7f1303ec

    :goto_d
    if-eqz v1, :cond_14

    int-to-float v0, v7

    div-float/2addr v0, v12

    mul-float/2addr v0, v11

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    invoke-static {v0, v2, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    goto :goto_e

    :cond_14
    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getFuelPercent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v2, v14}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    goto :goto_e

    :cond_15
    move v0, v2

    :goto_e
    if-eqz v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const v7, 0x7f1303ed

    invoke-virtual {v1, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_f
    const/4 v5, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->formatDistanceValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :goto_10
    invoke-direct {v3, v4, v0, v1, v5}, Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;-><init>(IILjava/lang/String;Z)V

    move-object/from16 v7, v20

    move/from16 v9, v21

    move/from16 v10, v19

    move-object v11, v13

    move-object v12, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;-><init>(ZIILcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    :goto_11
    iget-boolean v0, v7, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->isPureElectric:Z

    const/16 v1, 0xc

    const/16 v3, 0xa

    if-eqz v0, :cond_17

    move v4, v3

    goto :goto_12

    :cond_17
    move v4, v1

    :goto_12
    invoke-virtual {v6, v4}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricContainer:Landroid/widget/LinearLayout;

    const-string v8, "fuelMetricContainer"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    xor-int/lit8 v8, v0, 0x1

    const/16 v9, 0x8

    if-eqz v8, :cond_18

    goto :goto_13

    :cond_18
    move v2, v9

    :goto_13
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->metricsContainer:Landroid/widget/LinearLayout;

    const-string v5, "metricsContainer"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_34

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_19

    const/4 v8, 0x0

    goto :goto_14

    :cond_19
    const/high16 v8, 0x3f000000    # 0.5f

    :goto_14
    iput v8, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v2, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->contentContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v5, 0x12

    const/16 v8, 0x16

    if-eqz v0, :cond_1a

    move v10, v5

    goto :goto_15

    :cond_1a
    move v10, v8

    :goto_15
    invoke-virtual {v6, v10}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v10

    const/4 v11, 0x6

    if-eqz v0, :cond_1b

    move v12, v11

    goto :goto_16

    :cond_1b
    move v12, v8

    :goto_16
    invoke-virtual {v6, v12}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v12

    if-eqz v0, :cond_1c

    goto :goto_17

    :cond_1c
    move v5, v8

    :goto_17
    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v5

    if-eqz v0, :cond_1d

    move v13, v11

    goto :goto_18

    :cond_1d
    const/16 v13, 0x14

    :goto_18
    invoke-virtual {v6, v13}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v13

    invoke-virtual {v2, v10, v12, v5, v13}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryLabelTv:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    if-eqz v0, :cond_1e

    const/high16 v10, 0x41600000    # 14.0f

    goto :goto_19

    :cond_1e
    move v10, v5

    :goto_19
    const/4 v12, 0x2

    invoke-virtual {v2, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->totalRangeValueTv:Landroid/widget/TextView;

    if-eqz v0, :cond_1f

    const/high16 v10, 0x42380000    # 46.0f

    goto :goto_1a

    :cond_1f
    const/high16 v10, 0x42780000    # 62.0f

    :goto_1a
    invoke-virtual {v2, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryUnitTv:Landroid/widget/TextView;

    if-eqz v0, :cond_20

    const/high16 v10, 0x41800000    # 16.0f

    goto :goto_1b

    :cond_20
    const/high16 v10, 0x41900000    # 18.0f

    :goto_1b
    invoke-virtual {v2, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryLabelTv:Landroid/widget/TextView;

    const-string v10, "summaryLabelTv"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    const-string v13, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v10, :cond_33

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_21

    goto :goto_1c

    :cond_21
    const/16 v11, 0xb

    :goto_1c
    invoke-virtual {v6, v11}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v11

    iput v11, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->totalRangeValueTv:Landroid/widget/TextView;

    const-string v10, "totalRangeValueTv"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_32

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryUnitTv:Landroid/widget/TextView;

    const-string v10, "summaryUnitTv"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-eqz v10, :cond_31

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v4, 0x5

    if-eqz v0, :cond_22

    move v9, v4

    :cond_22
    invoke-virtual {v6, v9}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v9

    iput v9, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricIconContainer:Landroid/widget/FrameLayout;

    const-string v9, "electricMetricIconContainer"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    if-eqz v9, :cond_30

    const/16 v11, 0x32

    const/16 v14, 0x2c

    if-eqz v0, :cond_23

    move v15, v14

    goto :goto_1d

    :cond_23
    move v15, v11

    :goto_1d
    invoke-virtual {v6, v15}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v15

    iput v15, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_24

    move v11, v14

    :cond_24
    invoke-virtual {v6, v11}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricIconIv:Landroid/widget/ImageView;

    const-string v9, "electricMetricIconIv"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_2f

    const/16 v10, 0x1a

    if-eqz v0, :cond_25

    move v11, v8

    goto :goto_1e

    :cond_25
    move v11, v10

    :goto_1e
    invoke-virtual {v6, v11}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v11

    iput v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_26

    goto :goto_1f

    :cond_26
    move v8, v10

    :goto_1f
    invoke-virtual {v6, v8}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v8

    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricNameTv:Landroid/widget/TextView;

    const/high16 v8, 0x41500000    # 13.0f

    if-eqz v0, :cond_27

    move v9, v8

    goto :goto_20

    :cond_27
    move v9, v5

    :goto_20
    invoke-virtual {v2, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricPercentTv:Landroid/widget/TextView;

    if-eqz v0, :cond_28

    const/high16 v9, 0x41880000    # 17.0f

    goto :goto_21

    :cond_28
    const/high16 v9, 0x41980000    # 19.0f

    :goto_21
    invoke-virtual {v2, v12, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricRangeTv:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    move v5, v8

    :cond_29
    invoke-virtual {v2, v12, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricRangeTv:Landroid/widget/TextView;

    const-string v5, "electricMetricRangeTv"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_2e

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2a

    move v9, v3

    goto :goto_22

    :cond_2a
    move v9, v1

    :goto_22
    invoke-virtual {v6, v9}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricProgressPb:Landroid/widget/ProgressBar;

    const-string v8, "electricMetricProgressPb"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_2d

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2b

    move v1, v3

    :cond_2b
    invoke-virtual {v6, v1}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v1

    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v0, :cond_2c

    const/4 v4, 0x4

    :cond_2c
    invoke-virtual {v6, v4}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->dp$1(I)I

    move-result v0

    iput v0, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryLabelTv:Landroid/widget/TextView;

    iget v1, v7, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryLabelRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->totalRangeValueTv:Landroid/widget/TextView;

    iget v1, v7, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->summaryValueKm:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricNameTv:Landroid/widget/TextView;

    const-string v0, "electricMetricNameTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricPercentTv:Landroid/widget/TextView;

    const-string v0, "electricMetricPercentTv"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricRangeTv:Landroid/widget/TextView;

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v4, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricProgressPb:Landroid/widget/ProgressBar;

    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v7, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->electricMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->bindMetric(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricNameTv:Landroid/widget/TextView;

    const-string v0, "fuelMetricNameTv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricPercentTv:Landroid/widget/TextView;

    const-string v0, "fuelMetricPercentTv"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v3, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricRangeTv:Landroid/widget/TextView;

    const-string v0, "fuelMetricRangeTv"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v4, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricProgressPb:Landroid/widget/ProgressBar;

    const-string v0, "fuelMetricProgressPb"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v7, Lcom/deepalhome/launcher/widget/RangeWidgetView$RangeWidgetState;->fuelMetric:Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->bindMetric(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/deepalhome/launcher/widget/RangeWidgetView$MetricState;)V

    return-void

    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->applyBlurRadius$8()V

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->isNightMode:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/RangeWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/widget/RangeWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x7f06038c

    goto :goto_0

    :cond_0
    const v1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    const/16 v1, 0xa8

    goto :goto_1

    :cond_1
    const/16 v1, 0x96

    :goto_1
    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    if-eqz p1, :cond_2

    const/16 p1, 0xc2

    goto :goto_2

    :cond_2
    const/16 p1, 0xb0

    :goto_2
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->totalRangeValueTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricPercentTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricPercentTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryLabelTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricNameTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->summaryUnitTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricRangeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricRangeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->electricMetricIconIv:Landroid/widget/ImageView;

    const v0, -0xed9452

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/RangeWidgetViewBinding;->fuelMetricIconIv:Landroid/widget/ImageView;

    const p1, -0x581dd

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method
