.class public abstract Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final splashTextureView:Landroid/view/TextureView;

.field public final splashVideoContainer:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/TextureView;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;->splashTextureView:Landroid/view/TextureView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;->splashVideoContainer:Landroid/widget/FrameLayout;

    return-void
.end method
