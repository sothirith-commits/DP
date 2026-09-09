.class public abstract Lcom/deepalhome/launcher/databinding/ShortcutsViewItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final iconView:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final updateBadgeView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/ShortcutsViewItemBinding;->iconView:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/ShortcutsViewItemBinding;->updateBadgeView:Landroid/view/View;

    return-void
.end method
