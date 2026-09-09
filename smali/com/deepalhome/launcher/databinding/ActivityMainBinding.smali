.class public abstract Lcom/deepalhome/launcher/databinding/ActivityMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final fragmentContainer:Landroid/widget/FrameLayout;

.field public final splashLogoIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    return-void
.end method
