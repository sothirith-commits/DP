.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    return-void
.end method


# virtual methods
.method public final onWindowsDismiss()V
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$updateBottomNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldAutoShowNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$showNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$maybeScheduleGestureGuideAfterAutoStart(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$updateWallpaperVideoPlaybackState(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->show(Z)V

    :cond_4
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    :cond_5
    return-void

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onWindowsDismissStart()V
    .locals 0

    return-void
.end method

.method public final onWindowsShow()V
    .locals 5

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "binding"

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->bottomNavigationBar:Lcom/deepalhome/launcher/navigation/BottomNavigationBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$updateBottomNavigationBarAppearance(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationGestureBar:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {p0, v2, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$hideNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZZ)V

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const-string v4, "wallpaperView"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/window/AppWindowsManager;->startBlur(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getGestureGuideRunnable$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$updateWallpaperVideoPlaybackState(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    sget-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsPinned()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->getInstance(Landroid/content/Context;)Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    move-result-object p0

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->dismissInternal()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final onWindowsShowComplete()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onWindowsChangedListener$1;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->wallpaperView:Lcom/deepalhome/launcher/wallpaper/WallpaperView;

    const-string v1, "wallpaperView"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->startBlur(Lcom/deepalhome/launcher/wallpaper/WallpaperView;)V

    return-void

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
