.class public final Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;
.implements Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;",
        "Lcom/deepalhome/launcher/widget/WidgetMoreMenuProvider;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public final coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

.field public isNightMode:Z

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public onResizeRequest:Lkotlin/jvm/functions/Function2;

.field public final oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

.field public final weatherRefreshRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

.field public widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p2, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$maxBlurRadius$2;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p2, Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    new-instance p2, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-direct {p2, p0, v0}, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    new-instance p2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    invoke-direct {p2, v0, p1, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->weatherRefreshRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    return-void
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method


# virtual methods
.method public final applyBlurRadius$1()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->applyBlurRadius$1()V

    return-void
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e007b

    return p0
.end method

.method public getMoreMenuActions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/widget/WidgetMoreMenuAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetInfo:Lcom/deepalhome/launcher/widget/WidgetInfo;

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->INSTANCE:Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->location:Lcom/deepalhome/launcher/widget/WidgetLocation;

    iget v3, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->width:I

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetLocation;->height:I

    new-instance v4, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$getMoreMenuActions$1;

    invoke-direct {v4, p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView$getMoreMenuActions$1;-><init>(Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, v0, v4}, Lcom/deepalhome/launcher/time/CompassWidgetResizeMenu;->actions(Landroid/content/Context;IILkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getOnResizeRequest()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->onResizeRequest:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v1, "blurView"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->removeCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->maybeRemoveLogcatListener()V

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->weatherRefreshRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1304cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/WeatherUtil;->getIcon(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->lunarCompassClockView:Lcom/deepalhome/launcher/time/LunarCompassClockView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1304cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/deepalhome/launcher/time/LunarCompassClockView;->temperatureText:Ljava/lang/String;

    iput-object v0, v3, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherText:Ljava/lang/String;

    iput v2, v3, Lcom/deepalhome/launcher/time/LunarCompassClockView;->weatherIconResId:I

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->addCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->weatherRefreshRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda7;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :goto_0
    return-void
.end method

.method public setBlurRootView(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "rootView"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v1}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    new-instance v1, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    :goto_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LunarCompassClockWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->applyBlurRadius$1()V

    return-void
.end method

.method public final setOnResizeRequest(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->onResizeRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->isNightMode:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

    return-void
.end method
