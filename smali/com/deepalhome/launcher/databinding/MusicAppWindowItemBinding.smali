.class public abstract Lcom/deepalhome/launcher/databinding/MusicAppWindowItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final nameTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowItemBinding;->iconIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowItemBinding;->nameTv:Landroid/widget/TextView;

    return-void
.end method
