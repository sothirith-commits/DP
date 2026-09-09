.class public abstract Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final coverIv:Landroid/widget/ImageView;

.field public final resolutionTv:Landroid/widget/TextView;

.field public final titleTv:Landroid/widget/TextView;

.field public final videoIv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->coverIv:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->resolutionTv:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->titleTv:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterItemBinding;->videoIv:Landroid/widget/ImageView;

    return-void
.end method
