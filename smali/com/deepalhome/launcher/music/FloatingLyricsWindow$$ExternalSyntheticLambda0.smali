.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdatePosted:Z

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    and-int/lit8 v0, v1, 0x3

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit8 v0, v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    if-eqz v1, :cond_5

    iget v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    :cond_5
    invoke-static {v3, v0, v4, v2}, Lcom/lzf/easyfloat/EasyFloat$Companion;->updateFloat(IIII)V

    :goto_3
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->dismissInternal()V

    :goto_4
    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->captureBaseLyricContainerHeight()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_7
    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-nez v0, :cond_16

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-nez v0, :cond_15

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getWindowBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_9

    :cond_a
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-virtual {v6, v3, v4, v5, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->updateAnchor(IIII)V

    iget-object v0, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    move-object v4, v3

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->lockBtn:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    add-int/2addr v8, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/2addr v9, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v4, v7, v8, v9, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_5
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_d

    const v0, 0x7f060081

    goto :goto_6

    :cond_d
    const v0, 0x7f060080

    :goto_6
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v2, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v5, :cond_16

    if-gtz v4, :cond_e

    goto/16 :goto_9

    :cond_e
    iget v6, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->touchTargetPx:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int v8, v7, v5

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v8

    sub-int v8, v6, v4

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v2, v8

    iget-object v8, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->iconView:Landroid/widget/ImageView;

    const v9, 0x7f08013c

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const-string v9, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v9, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput v5, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x11

    iput v4, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v8}, Landroid/view/View;->requestLayout()V

    iget-boolean p0, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->isAdded:Z

    iget-object v4, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->overlayView:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->windowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_12

    if-nez p0, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_10

    move-object v3, p0

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    :cond_10
    if-nez v3, :cond_11

    goto :goto_9

    :cond_11
    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    invoke-interface {v5, v4, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_9

    :cond_12
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v7, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x3

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v3, 0x800033

    iput v3, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x7f6

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x208

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_1
    invoke-interface {v5, v4, p0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->isAdded:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    const-string v0, "FloatingLockOverlay"

    const-string v1, "Failed to add overlay view"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_13
    :goto_7
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_14
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz p0, :cond_16

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9

    :cond_15
    :goto_8
    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->dismiss()V

    :catch_1
    :cond_16
    :goto_9
    return-void

    :pswitch_3
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->captureBaseLyricContainerHeight()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_17
    return-void

    :pswitch_4
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideActionButtons()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
