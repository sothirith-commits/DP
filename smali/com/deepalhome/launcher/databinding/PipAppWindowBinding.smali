.class public abstract Lcom/deepalhome/launcher/databinding/PipAppWindowBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final pipOverlay:Landroid/widget/FrameLayout;

.field public final pipOverlayText:Landroid/widget/TextView;

.field public final pipTexture:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/view/TextureView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/PipAppWindowBinding;->pipOverlay:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/PipAppWindowBinding;->pipOverlayText:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/PipAppWindowBinding;->pipTexture:Landroid/view/TextureView;

    return-void
.end method
