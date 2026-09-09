.class public abstract Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final maskView:Landroid/widget/ImageView;

.field public final startMapBtn:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->maskView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MapAppWindowBinding;->startMapBtn:Landroid/widget/ImageView;

    return-void
.end method
