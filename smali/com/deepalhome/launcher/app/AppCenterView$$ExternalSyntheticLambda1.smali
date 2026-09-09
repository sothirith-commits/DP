.class public final synthetic Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p3, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/deepalhome/launcher/wallpaper/VideoWallpaperController;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$1:I

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "this$0"

    const/4 v3, 0x0

    iget v4, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$1:I

    iget-object v5, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast v5, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p0, v5, Lcom/google/android/material/sidesheet/SideSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {v5, p0, v4, v3}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->startSettling$1(Landroid/view/View;IZ)V

    :cond_0
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->$r8$clinit:I

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->navAdapter:Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperNavAdapter;->setSelectedPosition(I)V

    if-ltz v4, :cond_2

    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperCenterActivityBinding;->navRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_0

    :cond_1
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string p0, "navAdapter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    check-cast v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckToken:I

    if-eq v4, p0, :cond_4

    goto/16 :goto_5

    :cond_4
    iput-object v1, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->playbackCheckRunnable:Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->callback:Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isPlaybackEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isWindowVisible()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperViewCallback;->isViewAttached()Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->videoPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-ne v1, v0, :cond_6

    move v1, v0

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v4, v1, Lkotlin/Result$Failure;

    if-eqz v4, :cond_7

    move-object v1, v2

    :cond_7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-wide v6, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->lastFrameUpdateAt:J

    iget-wide v8, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->lastPlaybackRequestAt:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_8

    goto :goto_4

    :cond_8
    move v0, v3

    :goto_4
    if-eqz p0, :cond_9

    iget-boolean p0, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->isVideoPrepared:Z

    if-eqz p0, :cond_9

    if-eqz v1, :cond_9

    if-eqz v0, :cond_b

    :cond_9
    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->currentVideoPath:Ljava/lang/String;

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v5, p0}, Lcom/deepalhome/launcher/wallpaper/VideoWallpaperController;->prepareVideo(Ljava/lang/String;)V

    :cond_b
    :goto_5
    return-void

    :pswitch_2
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->Companion:Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment$Companion;

    check-cast v5, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_6

    :cond_c
    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadProgressBar:Landroid/widget/ProgressBar;

    if-eqz p0, :cond_f

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    const-string v2, "downloadBtn"

    if-eqz p0, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, v5, Lcom/deepalhome/launcher/wallpaper/FloatBallIconDialogFragment;->downloadBtn:Lcom/google/android/material/button/MaterialButton;

    if-eqz p0, :cond_d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f13019e

    invoke-virtual {v5, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    return-void

    :cond_d
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    const-string p0, "downloadProgressBar"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_3
    check-cast v5, Lcom/deepalhome/launcher/wallpaper/FileBrowserAdapter;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    :pswitch_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_5
    check-cast v5, Ljava/lang/String;

    const-string p0, "$text"

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventToast;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->dismissRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/deepalhome/launcher/ble/BleEventToast;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_10

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_10
    sput-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->dismissRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->elevateRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_11

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    sput-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->elevateRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_12
    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->cancel()V

    :cond_13
    sput-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    sget-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p0, :cond_14

    invoke-virtual {p0, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_14
    sput-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0e0030

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0b01e7

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v4, -0x1

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v4, v8}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v4, 0x7f0b01e8

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/hjq/window/EasyWindow;->with(Landroid/app/Application;)Lcom/hjq/window/EasyWindow;

    move-result-object p0

    const-string v4, "ble_event_toast"

    iput-object v4, p0, Lcom/hjq/window/EasyWindow;->mTag:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    const/4 v4, -0x2

    invoke-virtual {p0, v4}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {p0, v4}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    iget-object v4, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x118

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    iget-object v4, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    iget-object v4, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x51

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance v4, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;-><init>(Lcom/hjq/window/EasyWindow;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sget-object v5, Lcom/hjq/window/EasyWindow;->HANDLER:Landroid/os/Handler;

    invoke-virtual {v5, v4, p0, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v4, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v7, 0xc8

    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance v4, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/hjq/window/EasyWindow$$ExternalSyntheticLambda0;-><init>(Lcom/hjq/window/EasyWindow;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v4, p0, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object v0, p0, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->show()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    sput-object p0, Lcom/deepalhome/launcher/ble/BleEventToast;->currentWindow:Lcom/hjq/window/EasyWindow;

    sput-object v1, Lcom/deepalhome/launcher/ble/BleEventToast;->currentView:Landroid/view/View;

    new-instance v0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v1, v3}, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;-><init>(Lcom/hjq/window/EasyWindow;Landroid/view/View;I)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->elevateRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    new-instance v0, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;Lcom/hjq/window/EasyWindow;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventToast;->dismissRunnable:Lcom/deepalhome/launcher/ble/BleEventToast$$ExternalSyntheticLambda1;

    return-void

    :pswitch_6
    check-cast v5, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    invoke-virtual {v5, v4}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->onFontRetrievalFailed(I)V

    return-void

    :pswitch_7
    check-cast v5, Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v5, v4}, Lcom/deepalhome/launcher/app/AppCenterView;->$r8$lambda$TLg2T-47BlIrRVrNjzKp2E_dkok(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
