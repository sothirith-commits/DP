.class public final Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/LocationUtil$OneTimeLocationCallback;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/weather/WeatherWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/weather/WeatherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    return-void
.end method


# virtual methods
.method public final onLocationFailed(Ljava/lang/String;)V
    .locals 0

    const-string p0, "Location failed: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "WeatherWidgetView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onLocationResult(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherWidgetView$locationCallback$1;->this$0:Lcom/deepalhome/launcher/weather/WeatherWidgetView;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->access$setLastCoordinate$p(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/deepalhome/launcher/weather/WeatherWidgetView;->access$requestWeather(Lcom/deepalhome/launcher/weather/WeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V

    return-void
.end method
