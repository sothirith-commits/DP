.class public abstract Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final batteryChip:Landroid/widget/LinearLayout;

.field public final batteryValueTv:Landroid/widget/TextView;

.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final humidityCard:Landroid/widget/FrameLayout;

.field public final humidityUnitTv:Landroid/widget/TextView;

.field public final humidityValueTv:Landroid/widget/TextView;

.field public final statusDotView:Landroid/view/View;

.field public final statusWrap:Landroid/widget/LinearLayout;

.field public final tempCard:Landroid/widget/FrameLayout;

.field public final temperatureUnitTv:Landroid/widget/TextView;

.field public final temperatureValueTv:Landroid/widget/TextView;

.field public final updatedTextTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/TextView;Leightbitlab/com/blurview/BlurView;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryChip:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->batteryValueTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityCard:Landroid/widget/FrameLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityUnitTv:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->humidityValueTv:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusDotView:Landroid/view/View;

    iput-object p10, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->statusWrap:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->tempCard:Landroid/widget/FrameLayout;

    iput-object p12, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureUnitTv:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->temperatureValueTv:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/deepalhome/launcher/databinding/MiTempWidgetViewBinding;->updatedTextTv:Landroid/widget/TextView;

    return-void
.end method
