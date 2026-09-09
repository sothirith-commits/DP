.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/widget/WidgetsView;->setBlurRootView(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$activeNavigationBarView(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$refreshActiveNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resolveAppCenterView(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/app/AppCenterView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/wallpaper/WallpaperView;->getBlurRootView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/app/AppCenterView;->setBlurRootView(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$7;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "wallpaperView"

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->startBlur(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
