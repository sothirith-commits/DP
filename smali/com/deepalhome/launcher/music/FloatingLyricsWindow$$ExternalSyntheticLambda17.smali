.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

.field public final synthetic f$4:Ljava/io/Serializable;

.field public final synthetic f$5:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$3:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$0:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$4:Ljava/io/Serializable;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$5:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$0:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$3:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$4:Ljava/io/Serializable;

    iput-object p6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$5:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, -0x1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$5:Ljava/io/Serializable;

    iget-object v3, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$4:Ljava/io/Serializable;

    iget-object v4, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v5, "$isDragging"

    iget-object v6, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v7, "$initialTouchY"

    iget-object v8, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$0:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v9, "$initialTouchX"

    iget-object v10, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->f$3:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v11, "this$0"

    const/4 v12, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x3

    iget v0, v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda17;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$isLongPress"

    check-cast v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$initialHue"

    check-cast v2, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v5, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    if-eq v0, v14, :cond_5

    if-eq v0, v12, :cond_0

    if-eq v0, v15, :cond_5

    goto/16 :goto_2

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v8, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v6, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v8, v6

    iget-boolean v6, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v6, :cond_2

    mul-float v6, v0, v0

    mul-float/2addr v8, v8

    add-float/2addr v8, v6

    const/high16 v6, 0x43c80000    # 400.0f

    cmpl-float v6, v8, v6

    if-lez v6, :cond_2

    iput-boolean v14, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v6, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-boolean v1, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v1, :cond_4

    iget v1, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    cmpg-float v2, v0, v7

    if-gez v2, :cond_3

    add-float/2addr v0, v1

    :cond_3
    new-array v1, v15, [F

    aput v0, v1, v13

    const v0, 0x3f333333    # 0.7f

    aput v0, v1, v14

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, v1, v12

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsColor()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsColor(I)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricColor()V

    :cond_4
    :goto_0
    move v13, v14

    goto :goto_2

    :cond_5
    iget-object v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    iput-object v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :cond_7
    invoke-static/range {p1 .. p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput-boolean v13, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v13, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsColor()I

    move-result v0

    if-ne v0, v1, :cond_8

    goto :goto_1

    :cond_8
    new-array v1, v15, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v7, v1, v13

    :goto_1
    iput v7, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget-object v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    const v1, 0x7f130206

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/4 v1, 0x6

    invoke-direct {v0, v4, v3, v10, v1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 v1, 0x4b0

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    goto :goto_0

    :goto_2
    return v13

    :pswitch_0
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Lkotlin/jvm/internal/Ref$IntRef;

    const-string v0, "$initialX"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v2, Lkotlin/jvm/internal/Ref$IntRef;

    const-string v0, "$initialY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_19

    if-eq v0, v14, :cond_e

    if-eq v0, v12, :cond_9

    if-eq v0, v15, :cond_e

    goto/16 :goto_8

    :cond_9
    iget-boolean v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_a

    goto/16 :goto_9

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v0, v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v5, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v1, v5

    iget-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v5, :cond_b

    mul-float v5, v0, v0

    mul-float v6, v1, v1

    add-float/2addr v6, v5

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_b

    iput-boolean v14, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideActionButtons()V

    iget-object v5, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    invoke-virtual {v5}, Lcom/umeng/analytics/filter/d;->dismiss()V

    :cond_b
    iget-boolean v4, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result v5

    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    float-to-int v0, v0

    add-int/2addr v3, v0

    iget v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    float-to-int v1, v1

    add-int/2addr v0, v1

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result v1

    neg-int v1, v1

    sget v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->BOUND_MARGIN_H:I

    sub-int/2addr v4, v2

    iget v6, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    sub-int/2addr v4, v6

    if-ge v4, v2, :cond_c

    move v4, v2

    :cond_c
    iget v6, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-virtual {v10, v5, v6}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMaxWindowY(II)I

    move-result v5

    invoke-static {v3, v2, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    iput v2, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    invoke-static {v0, v1, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    invoke-virtual {v10, v14}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->scheduleWindowUpdate(I)V

    :cond_d
    :goto_3
    move v13, v14

    goto/16 :goto_8

    :cond_e
    iget-boolean v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-nez v0, :cond_16

    iget-object v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    iget-object v2, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdateRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v13, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdatePosted:Z

    iget v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    iput v13, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    sget-object v2, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_11

    goto :goto_7

    :cond_11
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_12

    iget v3, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    goto :goto_4

    :cond_12
    move v3, v1

    :goto_4
    if-eqz v2, :cond_13

    iget v2, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    goto :goto_5

    :cond_13
    move v2, v1

    :goto_5
    and-int/2addr v0, v12

    if-eqz v0, :cond_14

    iget v5, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    goto :goto_6

    :cond_14
    move v5, v1

    :goto_6
    if-eqz v0, :cond_15

    iget v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    :cond_15
    invoke-static {v3, v2, v5, v1}, Lcom/lzf/easyfloat/EasyFloat$Companion;->updateFloat(IIII)V

    :goto_7
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    iget v2, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsX(I)V

    iget v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iput v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsY(I)V

    invoke-virtual {v10, v14}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->endInteraction(Z)V

    :cond_16
    iget-boolean v0, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_d

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v14, :cond_d

    iget-boolean v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_17

    goto :goto_3

    :cond_17
    iget-boolean v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-eqz v0, :cond_18

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideActionButtons()V

    goto :goto_3

    :cond_18
    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showActionButtons()V

    goto :goto_3

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, v8, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, v6, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput-boolean v13, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-boolean v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-nez v0, :cond_d

    iget v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget v0, v10, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v10}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->beginInteraction()V

    goto/16 :goto_3

    :goto_8
    move v14, v13

    :goto_9
    return v14

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
