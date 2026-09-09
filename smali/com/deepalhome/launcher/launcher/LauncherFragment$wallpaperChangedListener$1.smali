.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/wallpaper/WallpaperChangeEvent;

    const-string v0, "it"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {p1, v2}, Lcom/deepalhome/launcher/widget/WidgetsView;->setBlurRootView(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$activeNavigationBarView(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$refreshActiveNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    iget-object v2, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v0, "wallpaperView"

    iget-object v1, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->startBlur(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$wallpaperChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$updateWallpaperVideoPlaybackState(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
