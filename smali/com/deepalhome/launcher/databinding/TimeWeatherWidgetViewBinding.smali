.class public abstract Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final dateTv:Landroid/widget/TextView;

.field public final dayTv:Landroid/widget/TextView;

.field public final temperatureTv:Landroid/widget/TextView;

.field public final timeTv:Landroid/widget/TextView;

.field public final weahterIv:Landroid/widget/ImageView;

.field public final weatherTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->dateTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->dayTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->temperatureTv:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->timeTv:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->weahterIv:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/TimeWeatherWidgetViewBinding;->weatherTv:Landroid/widget/TextView;

    return-void
.end method
