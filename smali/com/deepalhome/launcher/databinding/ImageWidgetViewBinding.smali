.class public abstract Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final contentContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

.field public final imageIv:Landroid/widget/ImageView;

.field public final placeholderContainer:Landroid/widget/LinearLayout;

.field public final placeholderIconIv:Landroid/widget/ImageView;

.field public final placeholderTextTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/deepalhome/launcher/view/RoundedFrameLayout;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->contentContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->imageIv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderContainer:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderIconIv:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/ImageWidgetViewBinding;->placeholderTextTv:Landroid/widget/TextView;

    return-void
.end method
