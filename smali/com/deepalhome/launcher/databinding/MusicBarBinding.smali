.class public abstract Lcom/deepalhome/launcher/databinding/MusicBarBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final coverBackground:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

.field public final loadingPb:Landroid/widget/ProgressBar;

.field public final nextSongBtn:Landroid/widget/ImageView;

.field public final playBtn:Landroid/widget/ImageView;

.field public final progressBar:Landroid/widget/ProgressBar;

.field public final titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Lcom/makeramen/roundedimageview/RoundedImageView;Lcom/makeramen/roundedimageview/RoundedImageView;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverBackground:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->coverIv:Lcom/makeramen/roundedimageview/RoundedImageView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->loadingPb:Landroid/widget/ProgressBar;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->nextSongBtn:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->playBtn:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->progressBar:Landroid/widget/ProgressBar;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/MusicBarBinding;->titleTv:Landroid/widget/TextView;

    return-void
.end method
