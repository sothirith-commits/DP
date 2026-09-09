.class public final Lcom/deepalhome/launcher/weather/WeatherWidgetView;
.super Lcom/deepalhome/launcher/widget/BaseWidgetView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/widget/BaseWidgetView<",
        "Lcom/deepalhome/launcher/databinding/WeatherWidgetViewBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/weather/WeatherWidgetView$Companion;

.field private static final TAG:Ljava/lang/String; = "WeatherWidgetView"


# instance fields
.field private lastCityName:Ljava/lang/String;

.field private lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

.field private lastManualRequestTimestamp:J

.field private lastWeatherRefreshTimestamp:J

.field private final locationCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

.field private final logCoordinateCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;

.field private final manualRefreshCooldownMs:J

.field private final weatherRefreshIntervalMs:J

.field private final weatherRefreshRunnable:Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/weather/WeatherWidgetView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/weather/WeatherWidgetView$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->Companion:Lcom/deepalhome/launcher/weather/WeatherWidgetView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/widget/BaseWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshIntervalMs:J

    const-wide/16 v0, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->manualRefreshCooldownMs:J

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshRunnable:Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->logCoordinateCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;

    new-instance p1, Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;-><init>(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->locationCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static final synthetic access$getLastCityName$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastCityName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLastCoordinate$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    return-object p0
.end method

.method public static final synthetic access$getLocationCallback$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->locationCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

    return-object p0
.end method

.method public static final synthetic access$recordManualRequestAttempt(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->recordManualRequestAttempt()V

    return-void
.end method

.method public static final synthetic access$requestWeather(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V

    return-void
.end method

.method public static final synthetic access$setLastCityName$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastCityName:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setLastCoordinate$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    return-void
.end method

.method public static final synthetic access$setLastWeatherRefreshTimestamp$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;J)V
    .locals 0

    iput-wide p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastWeatherRefreshTimestamp:J

    return-void
.end method

.method private final checkPermissionAndLocate()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->hasLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WeatherWidgetView"

    const-string v1, "Location permission already granted, start locating"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->recordManualRequestAttempt()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->locationCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/LocationUtil;->requestPermission(Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;)V

    return-void
.end method

.method private final recordManualRequestAttempt()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastManualRequestTimestamp:J

    return-void
.end method

.method private final requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p3, :cond_0

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastWeatherRefreshTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-eqz p3, :cond_0

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshIntervalMs:J

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    return-void

    :cond_0
    sget-object p3, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    new-instance v0, Landroidx/cardview/widget/CardView$1;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Landroidx/cardview/widget/CardView$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-static {p3, p1, p2, v0}, Lcom/deepalhome/launcher/util/WeatherUtil;->updateWeatherByCoordinate$default(Lcom/deepalhome/launcher/util/WeatherUtil;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->scheduleNextWeatherRefresh()V

    return-void
.end method

.method private final scheduleNextWeatherRefresh()V
    .locals 4

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshRunnable:Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshRunnable:Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final startInitialLocation(Z)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->hasLocationPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastManualRequestTimestamp:J

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->locationCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    goto :goto_0

    :cond_1
    const-string p0, "WeatherWidgetView"

    const-string p1, "Location permission not granted, skip silent locate"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic startInitialLocation$default(Lcom/deepalhome/launcher/weather/WeatherWidgetView;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->startInitialLocation(Z)V

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e011e

    return p0
.end method

.method public onClicked()V
    .locals 6

    invoke-super {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->onClicked()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->lastManualRequestTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->manualRefreshCooldownMs:J

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
    const-string v0, "WeatherWidgetView"

    const-string v1, "Weather widget clicked, checking location permission"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->checkPermissionAndLocate()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    sget-object v0, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->weatherRefreshRunnable:Lcom/deepalhome/launcher/weather/WeatherWidgetView$weatherRefreshRunnable$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->logCoordinateCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/LocationUtil;->removeCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->stopActiveLocationListener()V

    invoke-static {}, Lcom/deepalhome/launcher/util/LocationUtil;->maybeRemoveLogcatListener()V

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInit()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Weather widget initialized, isPreview="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeatherWidgetView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->logCoordinateCallback:Lcom/deepalhome/launcher/weather/WeatherWidgetView$logCoordinateCallback$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/LocationUtil;->addCoordinateCallback(Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->startInitialLocation(Z)V

    :cond_0
    return-void
.end method

.method public updateUIMode(Z)V
    .locals 0

    return-void
.end method
