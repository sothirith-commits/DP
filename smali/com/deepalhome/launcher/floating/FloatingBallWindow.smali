.class public final Lcom/deepalhome/launcher/floating/FloatingBallWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

.field public static control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

.field public static final gestureHandler:Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;

.field public static gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

.field public static gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

.field public static final iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

.field public static iconView:Landroid/widget/ImageView;

.field public static isDragging:Z

.field public static lastDragAt:J

.field public static rootView:Landroid/view/View;

.field public static final touchListener:Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;

.field public static final viewLifecycle:Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$1;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$1;

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$2;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$2;

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$3;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$3;

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;-><init>(Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$1;Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$2;Lcom/deepalhome/launcher/floating/FloatingBallWindow$iconController$3;)V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$1;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$1;

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;-><init>(Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$1;Lcom/deepalhome/launcher/floating/FloatingBallWindow$gestureHandler$2;)V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gestureHandler:Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->viewLifecycle:Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->touchListener:Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyBallConfig()V
    .locals 21

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallSize()I

    move-result v1

    const/16 v2, 0x40

    const/16 v3, 0xf0

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallSize()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallSize(I)V

    :cond_0
    int-to-float v1, v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallBackgroundEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0800c4

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_4
    sget-object v2, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallAlpha()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_3
    int-to-float v2, v1

    const/high16 v5, 0x3e000000    # 0.125f

    mul-float/2addr v2, v5

    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v2

    sget-object v5, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_6
    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7

    move v1, v2

    :cond_7
    sget-object v5, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    if-nez v5, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_9

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_4

    :cond_9
    move-object v6, v3

    :goto_4
    const/16 v7, 0x11

    if-nez v6, :cond_a

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v1, v1, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    :cond_a
    iget v8, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v8, v1, :cond_b

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move v8, v2

    goto :goto_5

    :cond_b
    move v8, v4

    :goto_5
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v9, v1, :cond_c

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move v8, v2

    :cond_c
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v9, v7, :cond_d

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_6

    :cond_d
    if-nez v8, :cond_e

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-nez v7, :cond_f

    :cond_e
    :goto_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_f
    :goto_7
    sget-object v11, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_10

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v6

    const v7, 0x7f08013b

    if-eq v6, v7, :cond_11

    invoke-virtual {v5, v7}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconResId(I)V

    :cond_11
    iget-object v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->iconViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/ImageView;

    iget-object v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/deepalhome/launcher/floating/GifTextureView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    const/16 v6, 0x8

    const/4 v7, -0x2

    if-eqz v5, :cond_2e

    sget-object v5, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->isGif(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    if-eqz v15, :cond_22

    iget-object v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_12

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_12
    if-nez v12, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v15}, Lcom/deepalhome/launcher/floating/GifTextureView;->getHasDrawable()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_9

    :cond_14
    move v0, v4

    :goto_9
    if-eqz v0, :cond_15

    iget v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    goto :goto_a

    :cond_15
    move v5, v4

    :goto_a
    iget-object v6, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget v7, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    if-ne v7, v1, :cond_16

    move v7, v2

    goto :goto_b

    :cond_16
    move v7, v4

    :goto_b
    if-eqz v0, :cond_1a

    if-eq v5, v1, :cond_17

    goto :goto_d

    :cond_17
    if-eqz v6, :cond_19

    if-nez v7, :cond_19

    iget-object v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    add-int/2addr v0, v2

    iput v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    :cond_18
    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    iput v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    :cond_19
    :goto_c
    move-object v9, v15

    goto/16 :goto_10

    :cond_1a
    :goto_d
    if-nez v7, :cond_19

    iput-object v14, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    iput v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    iget v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    add-int/lit8 v7, v0, 0x1

    iput v7, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    new-instance v0, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;

    move-object v5, v0

    move-object v6, v11

    move-object v8, v14

    move v9, v1

    move-object v10, v15

    move-object v11, v12

    invoke-direct/range {v5 .. v11}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;-><init>(Lcom/deepalhome/launcher/floating/FloatingBallIconController;ILjava/lang/String;ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/widget/ImageView;)V

    if-ge v1, v2, :cond_1b

    move v1, v2

    :cond_1b
    iget-object v3, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->currentPath:Ljava/lang/String;

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    iget v3, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->targetSizePx:I

    if-ne v1, v3, :cond_1c

    iget-object v3, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->animatedDrawable:Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v3, :cond_1c

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_1c
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1e

    :cond_1d
    move-object v8, v14

    move-object v9, v15

    goto :goto_f

    :cond_1e
    iget v4, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->loadGeneration:I

    add-int/2addr v4, v2

    iput v4, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->loadGeneration:I

    iget-object v5, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    if-eqz v5, :cond_1f

    goto :goto_e

    :cond_1f
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "GifRender"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    iput-object v5, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->renderThread:Landroid/os/HandlerThread;

    new-instance v6, Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v6, v15, Lcom/deepalhome/launcher/floating/GifTextureView;->renderHandler:Landroid/os/Handler;

    move-object v5, v6

    :goto_e
    new-instance v6, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;

    move-object v13, v6

    move-object v8, v14

    move-object v14, v3

    move-object v9, v15

    move/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;Lcom/deepalhome/launcher/floating/GifTextureView;IIZLjava/lang/String;Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    :goto_f
    if-nez v18, :cond_20

    invoke-virtual {v9}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/floating/GifTextureView;->releaseDrawable()V

    iput-object v8, v9, Lcom/deepalhome/launcher/floating/GifTextureView;->currentPath:Ljava/lang/String;

    iput v4, v9, Lcom/deepalhome/launcher/floating/GifTextureView;->targetSizePx:I

    iput-boolean v4, v9, Lcom/deepalhome/launcher/floating/GifTextureView;->hasDrawable:Z

    :cond_20
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconController$applyGifIcon$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    iget-boolean v0, v9, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz v0, :cond_21

    goto/16 :goto_17

    :cond_21
    iput-boolean v2, v9, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    invoke-virtual {v9}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {v9}, Lcom/deepalhome/launcher/floating/GifTextureView;->startRenderLoop()V

    goto/16 :goto_17

    :cond_22
    move-object v8, v14

    iget-object v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    if-eqz v5, :cond_23

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    iget-object v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iput v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    :cond_23
    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    if-lt v4, v1, :cond_24

    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_26

    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_24

    goto :goto_11

    :cond_24
    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifPath:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    iget v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifSizePx:I

    if-lt v4, v1, :cond_25

    goto :goto_11

    :cond_25
    iput-object v8, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifPath:Ljava/lang/String;

    iput v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingGifSizePx:I

    iget v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifLoadToken:I

    add-int/lit8 v9, v4, 0x1

    iput v9, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->gifLoadToken:I

    invoke-static {v7}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v4, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;

    const/4 v10, 0x1

    move-object v5, v4

    move-object v6, v8

    move v7, v1

    move-object v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_26
    :goto_11
    iget-object v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2c

    instance-of v0, v1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_27

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimatedImageDrawable;

    goto :goto_12

    :cond_27
    move-object v0, v3

    :goto_12
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz v12, :cond_28

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_13

    :cond_28
    move-object v2, v3

    :goto_13
    if-ne v2, v1, :cond_29

    goto/16 :goto_17

    :cond_29
    if-eqz v12, :cond_2a

    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2a
    if-eqz v12, :cond_2b

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2b
    if-eqz v0, :cond_37

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedImageDrawable;->setRepeatCount(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto/16 :goto_17

    :cond_2c
    iget-object v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2d

    if-eqz v12, :cond_37

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_17

    :cond_2d
    if-eqz v12, :cond_37

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_17

    :cond_2e
    move-object v8, v14

    move-object v9, v15

    iget-object v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    if-eqz v5, :cond_2f

    iget v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    add-int/2addr v5, v2

    iput v5, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->textureGifLoadToken:I

    :cond_2f
    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifPath:Ljava/lang/String;

    iput v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->pendingTextureGifSizePx:I

    if-eqz v9, :cond_30

    invoke-virtual {v9}, Lcom/deepalhome/launcher/floating/GifTextureView;->release()V

    :cond_30
    if-nez v9, :cond_31

    goto :goto_14

    :cond_31
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_14
    if-nez v12, :cond_32

    goto :goto_15

    :cond_32
    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_15
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_36

    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_35

    iget-object v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget v4, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    if-ge v4, v1, :cond_33

    goto :goto_16

    :cond_33
    iget-object v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_34

    if-eqz v12, :cond_37

    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_17

    :cond_34
    if-eqz v12, :cond_37

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_17

    :cond_35
    :goto_16
    iget-object v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->stopAnimatedDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconBitmap:Landroid/graphics/Bitmap;

    iput-object v8, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconPath:Ljava/lang/String;

    iput v1, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->cachedIconSizePx:I

    iget v0, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->staticLoadToken:I

    add-int/lit8 v9, v0, 0x1

    iput v9, v11, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->staticLoadToken:I

    invoke-static {v7}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;

    const/4 v10, 0x2

    move-object v5, v2

    move-object v6, v8

    move v7, v1

    move-object v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;ILjava/lang/Object;II)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_17

    :cond_36
    invoke-virtual {v11}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->clearCache()V

    if-eqz v12, :cond_37

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconResId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_37
    :goto_17
    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_38
    return-void
.end method

.method public static ensureVisible(Landroid/content/Context;Z)V
    .locals 5

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEnabled()Z

    move-result v1

    const-string v2, "floating_ball"

    if-eqz v1, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_6

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_6

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->requestPermission(Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    if-nez p1, :cond_1

    new-instance p1, Lcom/deepalhome/launcher/util/GestureHelper;

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gestureHandler:Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;

    iget-object v1, v1, Lcom/deepalhome/launcher/floating/FloatingBallGestureHandler;->gestureListener:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/util/GestureHelper;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;)V

    sput-object p1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    :cond_1
    sget-object p1, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {v2}, Lcom/petterp/floatingx/FloatingX;->control(Ljava/lang/String;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    goto/16 :goto_0

    :cond_2
    sget-object p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->Companion:Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;

    invoke-direct {p1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallX()I

    move-result v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallY()I

    move-result v3

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->setContext(Landroid/content/Context;)V

    const p0, 0x7f0e0060

    iput p0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->layoutId:I

    sget-object p0, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v4, "scope"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-virtual {p1, v2}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->setTag(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->enableSafeArea:Z

    sget-object v2, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    const-string v4, "gravity"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    if-ltz v1, :cond_3

    if-ltz v3, :cond_3

    int-to-float v1, v1

    int-to-float v2, v3

    iput v1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultX:F

    iput v2, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultY:F

    :cond_3
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeOffset:F

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEdgeAdsorptionEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeAdsorption:Z

    sget-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "direction"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeAdsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    const-string v1, "mode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow$FloatingBallStorage;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow$FloatingBallStorage;

    const-string v1, "iFxConfigStorage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean p0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableSaveDirection:Z

    iput-object v0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->viewLifecycle:Lcom/deepalhome/launcher/floating/FloatingBallWindow$viewLifecycle$1;

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->touchListener:Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    invoke-virtual {p1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->build()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/petterp/floatingx/FloatingX;->install(Lcom/petterp/floatingx/assist/helper/FxAppHelper;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    :cond_5
    sget-object p0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->hide()V

    :cond_6
    :goto_0
    return-void
.end method

.method public static restartAnimatedIconAfterPositionChange()V
    .locals 9

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallEdgeAdsorptionEnabled()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide/16 v4, 0xdc

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallIconFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->isGif(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->rootViewProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v8, 0x9

    invoke-direct {v7, v8, v1, v0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    invoke-virtual {v6, v7, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v7}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static updateIcon$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconResId(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconFilePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->clearCache()V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconView:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public static updateIconByFile$default(Lcom/deepalhome/launcher/floating/FloatingBallWindow;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "path"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconFilePath(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const p1, 0x7f08013b

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconResId(I)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->iconController:Lcom/deepalhome/launcher/floating/FloatingBallIconController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/floating/FloatingBallIconController;->clearCache()V

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->applyBallConfig()V

    return-void
.end method
