.class public abstract Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final contentContainer:Landroid/widget/FrameLayout;

.field public final root:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->contentContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/FirstLaunchViewBinding;->root:Landroid/widget/FrameLayout;

    return-void
.end method
