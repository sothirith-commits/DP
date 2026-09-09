.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    iput p6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$5:I

    iput p7, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$6:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v0, "this$0"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$1:Lkotlin/jvm/internal/Ref$IntRef;

    const-string v1, "$initialWidth"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$2:Lkotlin/jvm/internal/Ref$IntRef;

    const-string v2, "$initialHeight"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$3:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v3, "$initialTouchX"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v4, "$initialTouchY"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v4, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    iget-object v6, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    if-eqz v4, :cond_8

    const/4 v7, 0x0

    if-eq v4, v5, :cond_4

    const/4 v8, 0x2

    if-eq v4, v8, :cond_1

    const/4 p0, 0x3

    if-eq v4, p0, :cond_4

    move v5, v7

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v4

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v2, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr v9, v2

    float-to-int v2, v9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    sget v3, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->BOUND_MARGIN_H:I

    sub-int/2addr v4, v3

    iget v3, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    sub-int/2addr v4, v3

    iget-object v3, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f070055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v8, v3

    iget v3, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    sub-int/2addr v8, v3

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result v3

    sub-int/2addr v8, v3

    if-gez v8, :cond_2

    goto :goto_0

    :cond_2
    move v7, v8

    :goto_0
    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$5:I

    if-le v3, v7, :cond_3

    move v3, v7

    :cond_3
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v2

    iget p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda16;->f$6:I

    invoke-static {v0, p0, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    iput p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeWidth:I

    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p0, p2

    invoke-static {p0, v3, v7}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    iput p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeHeight:I

    iget p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget p1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeWidth:I

    invoke-virtual {v6, p2, v0, p1, p0}, Lcom/umeng/analytics/filter/d;->update(IIII)V

    goto/16 :goto_3

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-ne p0, v5, :cond_5

    move p0, v5

    goto :goto_1

    :cond_5
    move p0, v7

    :goto_1
    invoke-virtual {v6}, Lcom/umeng/analytics/filter/d;->dismiss()V

    if-eqz p0, :cond_6

    iget p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeWidth:I

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iget p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeHeight:I

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result p2

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result v1

    neg-int v1, v1

    iget v2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-virtual {p1, p2, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMaxWindowY(II)I

    move-result p2

    invoke-static {v0, v1, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iput v7, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseLyricContainerHeight:I

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetLyricViewportHeight(Landroid/view/View;)V

    sget-object p2, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget v2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iget v3, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3}, Lcom/lzf/easyfloat/EasyFloat$Companion;->updateFloat(IIII)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateTitleVisibility()V

    sget-object p2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsX(I)V

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iput v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsY(I)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    int-to-float v1, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsWidth(I)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    int-to-float v0, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsHeight(I)V

    iget-object p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz p2, :cond_7

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    iput v7, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeWidth:I

    iput v7, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeHeight:I

    :cond_7
    :goto_2
    xor-int/2addr p0, v5

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->endInteraction(Z)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideActionButtons()V

    iget p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iput p0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iput p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    iput p0, v2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    iput p0, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->beginInteraction()V

    iget p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iput p0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeWidth:I

    iget p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iput p2, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingResizeHeight:I

    iget v0, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget p1, p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    invoke-virtual {v6, v0, p1, p0, p2}, Lcom/umeng/analytics/filter/d;->show(IIII)V

    :goto_3
    return v5
.end method
