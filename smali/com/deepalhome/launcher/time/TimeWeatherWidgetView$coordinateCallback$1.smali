.class public final Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$coordinateCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/LocationUtil$CoordinateCallback;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$coordinateCallback$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    return-void
.end method


# virtual methods
.method public final onCoordinateChanged(Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$coordinateCallback$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;->access$setLastCoordinate$p(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;)V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;->access$requestWeather(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V

    return-void
.end method
