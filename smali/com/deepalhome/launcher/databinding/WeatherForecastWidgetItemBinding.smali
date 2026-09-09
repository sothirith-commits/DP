.class public abstract Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final dateTv:Landroid/widget/TextView;

.field public final temperatureTv:Landroid/widget/TextView;

.field public final weatherIv:Landroid/widget/ImageView;

.field public final weatherTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->dateTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->temperatureTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherIv:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/WeatherForecastWidgetItemBinding;->weatherTv:Landroid/widget/TextView;

    return-void
.end method
