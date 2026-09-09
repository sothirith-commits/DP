.class public abstract Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final nightMaskView:Landroid/view/View;

.field public final wallpaperImageContainer:Landroid/widget/FrameLayout;

.field public final wallpaperIv:Landroid/widget/ImageView;

.field public final wallpaperNextIv:Landroid/widget/ImageView;

.field public final wallpaperTransitionShadowView:Landroid/view/View;

.field public final wallpaperVideoContainer:Landroid/widget/FrameLayout;

.field public final wallpaperVideoView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/view/View;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;ILandroid/view/View;)V

    iput-object p3, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->nightMaskView:Landroid/view/View;

    iput-object p4, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperImageContainer:Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperIv:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperNextIv:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperTransitionShadowView:Landroid/view/View;

    iput-object p8, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoContainer:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperVideoView:Landroid/view/TextureView;

    return-void
.end method
