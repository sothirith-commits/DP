.class public abstract Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final dividerAfterTomorrow:Landroid/view/View;

.field public final dividerTomorrow:Landroid/view/View;

.field public final forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

.field public final forecastContainer:Landroid/widget/LinearLayout;

.field public final forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

.field public final forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Landroid/view/View;Landroid/view/View;Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;Landroid/widget/LinearLayout;Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->dividerAfterTomorrow:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->dividerTomorrow:Landroid/view/View;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastAfterTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastContainer:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastToday:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetViewBinding;->forecastTomorrow:Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;

    return-void
.end method
