.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperView$transitionHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$transitionHelper$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperView$transitionHelper$2;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperViewBinding;->wallpaperTransitionShadowView:Landroid/view/View;

    const-string v1, "wallpaperTransitionShadowView"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperScrollTransitionHelper;-><init>(Landroid/view/View;)V

    return-object v0
.end method
