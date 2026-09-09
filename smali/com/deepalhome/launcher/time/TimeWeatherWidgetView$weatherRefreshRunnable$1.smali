.class public final Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$weatherRefreshRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$weatherRefreshRunnable$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView$weatherRefreshRunnable$1;->this$0:Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-static {p0}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;->access$getLastCoordinate$p(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;)Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v1}, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;->access$requestWeather(Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;Lcom/deepalhome/launcher/util/LocationUtil$Coordinate;ZZ)V

    :cond_0
    return-void
.end method
