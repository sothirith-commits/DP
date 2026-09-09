.class public final Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/blankj/utilcode/util/PermissionUtils$SingleCallback;
.implements Lcom/deepalhome/launcher/util/WeatherUtil$Callback;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "granted"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "deniedForever"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "denied"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    sget p1, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastManualRequestTimestamp:J

    sget-object p1, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "getContext(...)"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->oneTimeLocationCallback:Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;

    invoke-static {p2, p0}, Lcom/deepalhome/launcher/util/LocationUtil;->startOneTimeLocation(Landroid/content/Context;Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;)V

    :cond_1
    return-void
.end method

.method public onLoaded(Lcom/deepalhome/launcher/weather/Weather;)V
    .locals 1

    const-string v0, "weather"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$requestWeather$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->access$handleLoadedWeather(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;Lcom/deepalhome/launcher/weather/Weather;)V

    return-void
.end method
