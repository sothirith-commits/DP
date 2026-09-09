.class public abstract Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final iconIv:Landroid/widget/ImageView;

.field public final labelTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Leightbitlab/com/blurview/BlurView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->iconIv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/MagiskWidgetViewBinding;->labelTv:Landroid/widget/TextView;

    return-void
.end method
