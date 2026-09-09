.class public abstract Lcom/deepalhome/launcher/databinding/DialogViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final cancelBtn:Landroid/widget/TextView;

.field public final messageScrollView:Landroid/widget/ScrollView;

.field public final messageTv:Landroid/widget/TextView;

.field public final okBtn:Landroid/widget/TextView;

.field public final rootView:Landroidx/cardview/widget/CardView;

.field public final titleTv:Landroid/widget/TextView;

.field public final viewContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->cancelBtn:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageScrollView:Landroid/widget/ScrollView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->messageTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->okBtn:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->rootView:Landroidx/cardview/widget/CardView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->titleTv:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/DialogViewBinding;->viewContainer:Landroid/widget/FrameLayout;

    return-void
.end method
