.class public final Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/deepalhome/launcher/widget/BaseWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;->this$0:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onLocationFailed$com$deepalhome$launcher$time$CompassClockWidgetView$oneTimeLocationCallback$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onLocationFailed$com$deepalhome$launcher$time$LunarCompassClockWidgetView$oneTimeLocationCallback$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onLocationFailed$com$deepalhome$launcher$weather$WeatherForecastWidgetView$oneTimeLocationCallback$1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onLocationFailed(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;->$r8$classId:I

    return-void
.end method

.method public final onLocationResult(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;->this$0:Lcom/deepalhome/launcher/widget/BaseWidgetView;

    iget p0, p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView$oneTimeLocationCallback$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->$r8$clinit:I

    check-cast v2, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->canProcessWeatherUpdates()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, v2, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->lastCoordinate:Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    invoke-virtual {v2, p1, v1, v1}, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;->requestWeather(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)Z

    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;->$r8$clinit:I

    check-cast v2, Lcom/deepalhome/launcher/time/LunarCompassClockWidgetView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    new-instance v3, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, v3, v0}, Lcom/deepalhome/launcher/util/WeatherUtil;->updateWeatherByCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/time/CompassClockWidgetView;->$r8$clinit:I

    check-cast v2, Lcom/deepalhome/launcher/time/CompassClockWidgetView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/util/WeatherUtil;->INSTANCE:Lcom/deepalhome/launcher/util/WeatherUtil;

    new-instance v3, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v2}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, v3, v0}, Lcom/deepalhome/launcher/util/WeatherUtil;->updateWeatherByCoordinate(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZLcom/deepalhome/launcher/util/WeatherUtil$Callback;Lcom/deepalhome/launcher/util/WeatherUtil$WeatherUpdateListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
