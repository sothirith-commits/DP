.class public abstract Lcom/deepalhome/launcher/databinding/ConnectionDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final devBtn:Landroid/widget/Button;

.field public final helpBtn:Landroid/widget/Button;

.field public final noWirelessAdbBtn:Landroid/widget/Button;

.field public final portEt:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ConnectionDialogBinding;->devBtn:Landroid/widget/Button;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ConnectionDialogBinding;->helpBtn:Landroid/widget/Button;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ConnectionDialogBinding;->noWirelessAdbBtn:Landroid/widget/Button;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ConnectionDialogBinding;->portEt:Landroid/widget/EditText;

    return-void
.end method
