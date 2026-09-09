.class public abstract Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final cardView:Landroidx/cardview/widget/CardView;

.field public final hybridBtn:Landroid/widget/TextView;

.field public final socBtn:Landroid/widget/TextView;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->cardView:Landroidx/cardview/widget/CardView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->hybridBtn:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->socBtn:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/InitCarDialogBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method
