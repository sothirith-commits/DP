.class public final Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;
.implements Lcom/deepalhome/launcher/settings/S05AppUpdateManager$UpdateCheckCallback;


# instance fields
.field public final synthetic this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldFinishNavShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$finishNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_5

    sget-object v3, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->DOUBLE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, v3, :cond_7

    :cond_5
    invoke-static {p0, p2, p3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$canSwitchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;FF)Z

    move-result p2

    if-eqz p2, :cond_7

    if-ne p1, v0, :cond_6

    move v1, v2

    :cond_6
    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$switchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return v2

    :cond_7
    sget-object p0, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->THREE_GINGER_UP_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, p0, :cond_9

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result p0

    if-nez p0, :cond_8

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    :cond_8
    return v2

    :cond_9
    return v1
.end method

.method public mutiFingerSlipProcess()Z
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldFinishNavShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$finishNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public onDoubleTap()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDown(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$canStartSingleFingerDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/VelocityTracker;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Landroid/view/VelocityTracker;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :goto_0
    return-void
.end method

.method public onFailure()V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setCheckingAnnouncementUpdate$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->widgetsView:Lcom/deepalhome/launcher/widget/WidgetsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/WidgetsView;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBlankDesktopArea(Lcom/deepalhome/launcher/launcher/LauncherFragment;FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$startEditDesktop(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onSingleTapUp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSuccess(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Z)V
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setCheckingAnnouncementUpdate$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getAnnouncementDialog$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object p2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateVersion(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getS05IgnoredUpdateVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->markUpdateBadge(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$showUpdateReleaseAnnouncement(Lcom/deepalhome/launcher/launcher/LauncherFragment;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-static {p0, v1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldFinishNavShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$computeNavDragVelocityX(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v0

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldFinishNavShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z

    move-result v0

    :goto_0
    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$finishNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_6

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, p1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result v1

    sub-float/2addr p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_5

    move p1, v3

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$computeWindowsDragVelocityY(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$shouldFinishWindowsShow(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)Z

    move-result p1

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->finishDrag(Z)V

    :cond_7
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_8
    return v3
.end method

.method public singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isRealCar()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-eq p1, v0, :cond_2

    sget-object v3, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, v3, :cond_4

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p0, v3, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$canSwitchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;FF)Z

    move-result p2

    if-eqz p2, :cond_4

    if-ne p1, v0, :cond_3

    move v2, v1

    :cond_3
    invoke-static {p0, v2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$switchDownloadedWallpaper(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    return v1

    :cond_4
    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_DOWN_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, p2, :cond_6

    sget-object p1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarStatusBarVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$showSystemStatusBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_5
    return v1

    :cond_6
    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_UP_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, p2, :cond_8

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->isAppCenterShown()Z

    move-result p0

    if-nez p0, :cond_7

    sget-object p0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->showWindow()V

    :cond_7
    return v1

    :cond_8
    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_RIGHT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, p2, :cond_a

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$showNavigationBar(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_9
    return v1

    :cond_a
    sget-object p2, Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;->SINGLE_GINGER_LEFT_SLIP:Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;

    if-ne p1, p2, :cond_c

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, v1, v2, p1, p2}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->hideNavigationBar$default(Lcom/deepalhome/launcher/launcher/LauncherFragment;ZZILjava/lang/Object;)V

    :cond_b
    return v1

    :cond_c
    return v2
.end method

.method public singleFingeronSlipProcess(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragVelocityTracker$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Landroid/view/VelocityTracker;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_5
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "binding"

    const/4 v5, 0x0

    if-eqz v1, :cond_a

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragWidth$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    cmpl-float v1, v1, v5

    if-lez v1, :cond_6

    goto :goto_0

    :cond_6
    move-object v6, v2

    :goto_0
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_1

    :cond_7
    invoke-static {p0, v3}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resolveNavWidth(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)F

    move-result v1

    :goto_1
    cmpg-float v3, v1, v5

    if-gtz v3, :cond_8

    return v0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v3

    add-float/2addr v3, p1

    neg-float p1, v1

    invoke-static {v3, p1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    return v0

    :cond_9
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v1

    sub-float/2addr p1, v1

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getWindowHeight()I

    move-result v1

    if-gtz v1, :cond_b

    return v0

    :cond_b
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result p0

    add-float/2addr p0, p1

    int-to-float p1, v1

    invoke-static {p0, v5, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/launcher/window/AppWindowsManager;->updateDragTranslation(F)V

    return v0

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragStartX$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v6

    sub-float/2addr v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragStartY$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v6

    sub-float/2addr p1, v6

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragSlop(Lcom/deepalhome/launcher/launcher/LauncherFragment;)I

    move-result v8

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$isBottomNavigationStyle$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v9

    if-nez v9, :cond_19

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v7

    cmpl-float v9, v6, v9

    if-lez v9, :cond_19

    mul-int/lit8 v8, v8, 0x2

    int-to-float p1, v8

    cmpg-float p1, v6, p1

    if-gez p1, :cond_d

    return v0

    :cond_d
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result p1

    if-nez p1, :cond_e

    return v0

    :cond_e
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p1

    if-eqz p1, :cond_18

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, v5

    if-ltz p1, :cond_10

    move v3, v0

    goto :goto_2

    :cond_f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_10
    :goto_2
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_11

    cmpl-float p1, v1, v5

    if-lez p1, :cond_12

    goto :goto_3

    :cond_11
    if-eqz v3, :cond_13

    cmpg-float p1, v1, v5

    if-gez p1, :cond_12

    goto :goto_3

    :cond_12
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return v0

    :cond_13
    :goto_3
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$beginNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    :cond_14
    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setNavDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragWidth$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_16

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result p1

    add-float/2addr p1, v1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getNavDragWidth$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)F

    move-result v1

    neg-float v1, v1

    invoke-static {p1, v1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result p1

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getBinding$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/LauncherFragmentBinding;->navigationBar:Lcom/deepalhome/launcher/navigation/NavigationBar;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_15
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_4
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    goto/16 :goto_8

    :cond_17
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_19
    int-to-float v1, v8

    cmpg-float v1, v7, v1

    if-gez v1, :cond_1a

    return v0

    :cond_1a
    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$getWindowsDragTracking$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v0

    :cond_1b
    cmpl-float p1, p1, v5

    if-ltz p1, :cond_1c

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetWindowsDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    return v0

    :cond_1c
    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->windowsView:Lcom/deepalhome/launcher/window/WindowsView;

    if-nez v1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_8

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShown()Z

    move-result p1

    invoke-static {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager;->cancelViewAnimation(Landroid/view/View;)V

    sget-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-eqz v2, :cond_1f

    sget-boolean v2, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    if-eqz v2, :cond_1e

    goto :goto_5

    :cond_1e
    move v2, v3

    goto :goto_6

    :cond_1f
    :goto_5
    move v2, v0

    :goto_6
    sput-boolean v3, Lcom/deepalhome/launcher/window/AppWindowsManager;->showPending:Z

    sput-boolean v3, Lcom/deepalhome/launcher/window/AppWindowsManager;->isAnimating:Z

    invoke-virtual {v1}, Landroid/view/View;->isLaidOut()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-nez v4, :cond_20

    goto :goto_8

    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_21

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    if-nez p1, :cond_22

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v1, v5}, Lcom/deepalhome/launcher/window/WindowsView;->updateBlurAlpha(F)V

    :cond_22
    invoke-virtual {v1}, Lcom/deepalhome/launcher/window/WindowsView;->beginBlurUpdate()V

    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->shouldShow:Z

    if-eqz v2, :cond_23

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;

    invoke-interface {v1}, Lcom/deepalhome/launcher/window/AppWindowsManager$OnWindowsChangedListeners;->onWindowsShow()V

    goto :goto_7

    :cond_23
    sput-boolean v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->isDragging:Z

    invoke-static {p0, v0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragActive$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;Z)V

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->getCurrentTranslationY()F

    move-result p1

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$setWindowsDragStartTranslation$p(Lcom/deepalhome/launcher/launcher/LauncherFragment;F)V

    invoke-static {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$resetNavDrag(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_24
    :goto_8
    return v0
.end method
