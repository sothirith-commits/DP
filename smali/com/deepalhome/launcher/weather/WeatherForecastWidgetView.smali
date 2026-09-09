.class public final Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;",
        ">;",
        "Lcom/deepalhome/launcher/widget/BackgroundConfigurableWidget;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public blurInitialized:Z

.field public final coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

.field public final forecastViews$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final incompleteForecastRetryDelayMs:J

.field public isNightMode:Z

.field public lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

.field public lastManualRequestTimestamp:J

.field public lastWeatherRefreshTimestamp:J

.field public final manualRefreshCooldownMs:J

.field public final maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

.field public final weatherRefreshIntervalMs:J

.field public final weatherRefreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public final weatherUpdateListener:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

.field public weatherUpdatesStarted:Z

.field public widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;-><init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->forecastViews$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 p2, 0x17

    invoke-direct {p1, p2, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    new-instance p1, Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdateListener:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

    new-instance p1, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;-><init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    new-instance p1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$maxBlurRadius$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$maxBlurRadius$2;-><init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshIntervalMs:J

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->manualRefreshCooldownMs:J

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->incompleteForecastRetryDelayMs:J

    return-void
.end method

.method public static final access$handleLoadedWeather(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;Lcom/deepalhome/launcher/weather/Weather;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->INSTANCE:Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;

    new-instance v9, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v5, "resolveIcon(Ljava/lang/String;)I"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const-string v4, "resolveIcon"

    const/16 v7, 0xc

    move-object v0, v9

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v10, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;

    const-string v5, "labelFor(ILjava/lang/String;)Ljava/lang/String;"

    const/4 v6, 0x0

    const/4 v1, 0x2

    const-class v3, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const-string v4, "labelFor"

    const/4 v7, 0x1

    move-object v0, v10

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v9, v10}, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->buildItems(Lcom/deepalhome/launcher/weather/Weather;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->incompleteForecastRetryDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastWeatherRefreshTimestamp:J

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->renderForecast(Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->scheduleNextWeatherRefresh()V

    :goto_0
    return-void
.end method

.method public static final access$labelFor(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const-string p1, "Day after tomorrow"

    goto :goto_0

    :cond_1
    const-string p1, "Tomorrow"

    goto :goto_0

    :cond_2
    const-string p1, "Today"

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_4

    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "substring(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "/"

    const-string v2, "-"

    invoke-static {p2, v2, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v3

    :goto_2
    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v0

    if-eqz p2, :cond_6

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    const/16 v6, 0x3e

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getForecastViews()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->forecastViews$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getMaxBlurRadius()F
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->maxBlurRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public static resolveIcon(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->INSTANCE:Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->FALLBACK_ICON_RES:I

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/WeatherUtil;->getIcon(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public final applyBlurRadius$2()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->blurInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v0, v0, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    const-string v1, "blurView"

    if-gtz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    return-void

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getMaxBlurRadius()F

    move-result v2

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptBlurRadius(IF)F

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v2, v0}, Leightbitlab/com/blurview/BlurView;->setBlurRadius(F)V

    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->isNightMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f06002b

    goto :goto_0

    :cond_0
    const v1, 0x7f060398

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v1, v1, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundOpacityPercent:I

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->overlayColor(II)I

    move-result v0

    invoke-virtual {p1, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->applyBlurRadius$2()V

    return-void
.end method

.method public final canProcessWeatherUpdates()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdatesStarted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e011d

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->startWeatherUpdates()V

    :cond_0
    return-void
.end method

.method public final onClicked()V
    .locals 6

    invoke-super {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onClicked()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastManualRequestTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->manualRefreshCooldownMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f1304cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->hasLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastManualRequestTimestamp:J

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->requestPermission(Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;)V

    :goto_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdatesStarted:Z

    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdateListener:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->removeCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->maybeRemoveLogcatListener()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    const-string v2, "blurView"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->INSTANCE:Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;

    new-instance v9, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-class v4, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const-string v5, "resolveIcon"

    const/4 v2, 0x1

    const-string v6, "resolveIcon(Ljava/lang/String;)I"

    const/4 v7, 0x0

    const/16 v8, 0xd

    move-object v1, v9

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v1, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;

    const-class v13, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const-string v14, "labelFor"

    const/4 v11, 0x2

    const-string v15, "labelFor(ILjava/lang/String;)Ljava/lang/String;"

    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object v10, v1

    move-object/from16 v12, p0

    invoke-direct/range {v10 .. v17}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/weather/Cast;

    const/16 v24, 0x10

    const/16 v25, 0x0

    const-string v19, "28"

    const-string v20, "Clear"

    const-string v21, "18"

    const-string v22, "Partly cloudy"

    const/16 v23, 0x0

    move-object/from16 v18, v0

    invoke-direct/range {v18 .. v25}, Lcom/deepalhome/launcher/weather/Cast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v2, Lcom/deepalhome/launcher/weather/Cast;

    const/16 v16, 0x10

    const/16 v17, 0x0

    const-string v11, "29"

    const-string v12, "Clear with periods of clouds"

    const-string v13, "19"

    const-string v14, "Cloudy"

    const/4 v15, 0x0

    move-object v10, v2

    invoke-direct/range {v10 .. v17}, Lcom/deepalhome/launcher/weather/Cast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/deepalhome/launcher/weather/Cast;

    const-string v19, "27"

    const-string v20, "Cloudy"

    const-string v21, "17"

    const-string v22, "Overcast"

    move-object/from16 v18, v3

    invoke-direct/range {v18 .. v25}, Lcom/deepalhome/launcher/weather/Cast;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v0, v2, v3}, [Lcom/deepalhome/launcher/weather/Cast;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v8, Lcom/deepalhome/launcher/weather/Weather;

    new-instance v2, Lcom/deepalhome/launcher/weather/Forecast;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/weather/Forecast;-><init>(Ljava/util/List;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/weather/Live;

    const-string v0, "26"

    const-string v2, "Clear"

    invoke-direct {v4, v0, v2}, Lcom/deepalhome/launcher/weather/Live;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/weather/Weather;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/weather/Live;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v8, v9, v1}, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->buildItems(Lcom/deepalhome/launcher/weather/Weather;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    move-object/from16 v1, p0

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->INSTANCE:Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;

    new-instance v9, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;

    const-class v4, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const-string v5, "labelFor"

    const/4 v2, 0x2

    const-string v6, "labelFor(ILjava/lang/String;)Ljava/lang/String;"

    const/4 v7, 0x0

    const/4 v8, 0x3

    move-object v1, v9

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v0

    :goto_1
    iget-boolean v2, v0, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v2

    new-instance v3, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v9, v2, v4}, Lcom/deepalhome/launcher/navigation/BottomNavigationBar$onInit$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget v4, Lcom/deepalhome/launcher/weather/WeatherForecastFormatter;->FALLBACK_ICON_RES:I

    const-string v5, "--\u00b0/--\u00b0"

    const-string v6, "--"

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->renderForecast(Ljava/util/ArrayList;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->startWeatherUpdates()V

    :cond_2
    return-void
.end method

.method public final renderForecast(Ljava/util/ArrayList;)V
    .locals 3

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getForecastViews()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->zip(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->dateTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->temperatureTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;->temperature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherTv:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;->condition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p1, Lcom/deepalhome/launcher/weather/WeatherForecastUiItem;->iconRes:I

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez p3, :cond_1

    iget-wide v4, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastWeatherRefreshTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-eqz p3, :cond_1

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshIntervalMs:J

    cmp-long p3, v2, v4

    if-gez p3, :cond_1

    return v1

    :cond_1
    sget-object p3, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    new-instance v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdateListener:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

    invoke-static {p1, p2, v0, p3}, Lcom/deepalhome/launcher/util/WeatherUtil;->updateWeatherByCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->scheduleNextWeatherRefresh()V

    const/4 p0, 0x1

    return p0
.end method

.method public final scheduleNextWeatherRefresh()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherRefreshIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBlurEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Leightbitlab/com/blurview/BlurView;->setBlurEnabled(Z)V

    const-string v0, "blurView"

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->INSTANCE:Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/BlurAutoUpdateHelper;->cancelFreeze(Leightbitlab/com/blurview/BlurView;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->blurRadius(IF)F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getMaxBlurRadius()F

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    iget v3, v3, Lcom/deepalhome/launcher/widget/WidgetStyleConfig;->backgroundBlurPercent:I

    invoke-static {v3, v2}, Lcom/deepalhome/launcher/widget/WidgetBackgroundStyleApplier;->renderScriptSetupBlurRadius(IF)F

    move-result v2

    :goto_0
    if-lt v0, v1, :cond_1

    new-instance v0, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v0}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1, p1, v0}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object p1

    iput v2, p1, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->blurInitialized:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    sget-object v1, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->applyBlurRadius$2()V

    return-void
.end method

.method public final startWeatherUpdates()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdatesStarted:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdatesStarted:Z

    sget-object v0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->weatherUpdateListener:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;

    const-string v1, "listener"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/util/WeatherUtil;->weatherUpdateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->coordinateCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$coordinateCallback$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->addCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->scheduleNextWeatherRefresh()V

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->hasLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->isNightMode:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->widgetStyle:Lcom/deepalhome/launcher/widget/WidgetStyleConfig;

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->applyWidgetStyle(Lcom/deepalhome/launcher/widget/WidgetStyleConfig;)V

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getForecastViews()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iget-object v4, v3, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->dateTv:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->temperatureTv:Landroid/widget/TextView;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherTv:Landroid/widget/TextView;

    filled-new-array {v4, v5, v3}, [Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_3

    const p1, 0x7f060075

    goto :goto_3

    :cond_3
    const p1, 0x7f060074

    :goto_3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->dividerTomorrow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->dividerAfterTomorrow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->getForecastViews()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iget-object v0, p1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "to"

    invoke-static {v0, v1}, Lkotlin/text/StringsKt__StringsKt;->substringBefore$default(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherIv:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->resolveIcon(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_7
    return-void
.end method