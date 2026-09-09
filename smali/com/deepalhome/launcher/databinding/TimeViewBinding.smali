.class public abstract Lcom/deepalhome/launcher/databinding/TimeViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final dateTv:Landroid/widget/TextView;

.field public final dayTv:Landroid/widget/TextView;

.field public final timeTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/TimeViewBinding;->dateTv:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/TimeViewBinding;->dayTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/TimeViewBinding;->timeTv:Landroid/widget/TextView;

    return-void
.end method
