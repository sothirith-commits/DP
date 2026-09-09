.class public final Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iget-object v1, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView$forecastViews$2;->this$0:Lcom/deepalhome/launcher/weather/WeatherForecastWidgetView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    filled-new-array {v0, v1, p0}, [Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
