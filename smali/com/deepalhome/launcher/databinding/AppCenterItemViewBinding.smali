.class public abstract Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final iconContainer:Landroid/widget/FrameLayout;

.field public final iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final nameTv:Landroid/widget/TextView;

.field public final pinIv:Landroid/widget/ImageView;

.field public final updateBadgeView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/FrameLayout;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->iconContainer:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->nameTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->pinIv:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/AppCenterItemViewBinding;->updateBadgeView:Landroid/view/View;

    return-void
.end method
