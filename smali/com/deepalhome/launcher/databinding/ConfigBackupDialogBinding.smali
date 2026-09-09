.class public abstract Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final cancelBtn:Landroid/widget/TextView;

.field public final messageTv:Landroid/widget/TextView;

.field public final okBtn:Landroid/widget/TextView;

.field public final progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final rootView:Landroidx/cardview/widget/CardView;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/CircularProgressIndicator;Landroidx/cardview/widget/CardView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->cancelBtn:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->messageTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->okBtn:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->progressBar:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->rootView:Landroidx/cardview/widget/CardView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;
    .locals 3

    sget-object v0, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const/4 v0, 0x0

    const v1, 0x7f0e003d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0, v2}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/ConfigBackupDialogBinding;

    return-object p0
.end method
