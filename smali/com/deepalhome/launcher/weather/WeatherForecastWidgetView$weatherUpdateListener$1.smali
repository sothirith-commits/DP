.class public final Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    return-void
.end method


# virtual methods
.method public final onWeatherUpdated(DDLcom/deepalhome/launcher/weather/Weather;)V
    .locals 2

    const-string v0, "weather"

    invoke-static {v0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$weatherUpdateListener$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/LocationUtil;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    sget-object v1, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p3, p4}, Lcom/deepalhome/launcher/util/WeatherUtil;->cacheKey(DD)Ljava/lang/String;

    move-result-object p1

    iget-wide p2, v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->longitude:D

    iget-wide v0, v0, Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;->latitude:D

    invoke-static {p2, p3, v0, v1}, Lcom/deepalhome/launcher/util/WeatherUtil;->cacheKey(DD)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {p0, p5}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->access$handleLoadedWeather(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;Lcom/deepalhome/launcher/weather/Weather;)V

    return-void
.end method
