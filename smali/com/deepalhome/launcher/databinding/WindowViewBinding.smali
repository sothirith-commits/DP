.class public abstract Lcom/deepalhome/launcher/databinding/WindowViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final dragBtn:Landroid/widget/ImageView;

.field public final rootContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

.field public final windowContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/ImageView;Lcom/deepalhome/launcher/view/RoundedFrameLayout;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->dragBtn:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->rootContainer:Lcom/deepalhome/launcher/view/RoundedFrameLayout;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WindowViewBinding;->windowContainer:Landroid/widget/FrameLayout;

    return-void
.end method
