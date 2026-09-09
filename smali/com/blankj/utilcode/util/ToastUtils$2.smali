.class public final Lcom/blankj/utilcode/util/ToastUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$duration:I

.field public final synthetic val$text:Ljava/lang/Object;

.field public final synthetic val$utils:Ljava/lang/Object;

.field public final synthetic val$view:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILcom/deepalhome/launcher/floating/GifTextureView;Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    iput-object p3, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Ljava/lang/Object;

    iput-object p4, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Ljava/lang/Object;

    iput-object p2, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/Object;

    iput p3, p0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->$r8$classId:I

    packed-switch v5, :pswitch_data_0

    iget v1, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    iget-object v5, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    check-cast v5, Lcom/deepalhome/launcher/floating/GifTextureView;

    iget v5, v5, Lcom/deepalhome/launcher/floating/GifTextureView;->renderGeneration:I

    if-ne v1, v5, :cond_7

    iget-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/GifTextureView;

    iget-boolean v1, v1, Lcom/deepalhome/launcher/floating/GifTextureView;->isRendering:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/GifTextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/floating/GifTextureView;

    iget-object v5, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {v1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v6, :cond_1

    goto :goto_4

    :cond_1
    :try_start_1
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    if-lez v4, :cond_6

    if-lez v7, :cond_6

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    if-lez v8, :cond_2

    goto :goto_0

    :cond_2
    move-object v9, v3

    :goto_0
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_1
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimatedImageDrawable;->getIntrinsicHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    if-lez v9, :cond_4

    move-object v3, v10

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_5
    move v3, v7

    :goto_2
    int-to-float v9, v4

    int-to-float v8, v8

    div-float/2addr v9, v8

    int-to-float v10, v7

    int-to-float v3, v3

    div-float/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    mul-float/2addr v8, v9

    invoke-static {v8}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v8

    mul-float/2addr v3, v9

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    sub-int/2addr v4, v8

    div-int/2addr v4, v2

    sub-int/2addr v7, v3

    div-int/2addr v7, v2

    add-int/2addr v8, v4

    add-int/2addr v3, v7

    invoke-virtual {v5, v4, v7, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/AnimatedImageDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    invoke-virtual {v1, v6}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    :try_start_3
    invoke-virtual {v1, v6}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    throw v0

    :catch_1
    :goto_4
    iget-object v1, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/Object;

    check-cast v1, Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_5
    return-void

    :pswitch_0
    new-instance v5, Lcom/blankj/utilcode/util/ToastUtils$1;

    invoke-direct {v5}, Lcom/blankj/utilcode/util/ToastUtils$1;-><init>()V

    invoke-static {v5}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v5, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$utils:Ljava/lang/Object;

    check-cast v5, Lcom/blankj/utilcode/util/ToastUtils;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    new-instance v7, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v7, v6}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    iget-object v6, v7, Landroidx/core/app/NotificationManagerCompat;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-static {v6}, Landroidx/core/app/NotificationManagerCompat$Api24Impl;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Lcom/blankj/utilcode/util/ToastUtils$SystemToast;

    invoke-direct {v6, v5}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-direct {v6, v5, v1}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    goto :goto_6

    :cond_9
    new-instance v6, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;

    invoke-direct {v6, v5, v4}, Lcom/blankj/utilcode/util/ToastUtils$ActivityToast;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    :goto_6
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v5, Lcom/blankj/utilcode/util/ToastUtils;->sWeakToast:Ljava/lang/ref/WeakReference;

    iget-object v5, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$view:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_a

    iput-object v5, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v5}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_a
    iget-object v5, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastUtils:Lcom/blankj/utilcode/util/ToastUtils;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "dark"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v5, Lcom/blankj/utilcode/util/ToastUtils;->mIcons:[Landroid/graphics/drawable/Drawable;

    const v10, 0x7f0e010c

    const-string v11, "layout_inflater"

    iget-object v12, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$text:Ljava/lang/Object;

    check-cast v12, Ljava/lang/CharSequence;

    const/4 v13, -0x1

    const v14, 0x102000b

    const/4 v15, 0x3

    if-nez v8, :cond_b

    const-string v8, "light"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    aget-object v8, v9, v4

    if-nez v8, :cond_b

    aget-object v8, v9, v1

    if-nez v8, :cond_b

    aget-object v8, v9, v2

    if-nez v8, :cond_b

    aget-object v8, v9, v15

    if-nez v8, :cond_b

    move-object v8, v3

    goto/16 :goto_7

    :cond_b
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    invoke-virtual {v8, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/GradientDrawable;

    const-string v16, "#BB000000"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v3, v9, v4

    if-eqz v3, :cond_d

    const v3, 0x7f0b065b

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aget-object v7, v9, v4

    sget-object v10, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v3, v7}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    aget-object v3, v9, v1

    if-eqz v3, :cond_e

    const v3, 0x7f0b065d

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aget-object v1, v9, v1

    sget-object v7, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    aget-object v1, v9, v2

    if-eqz v1, :cond_f

    const v1, 0x7f0b065c

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aget-object v2, v9, v2

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    aget-object v1, v9, v15

    if-eqz v1, :cond_10

    const v1, 0x7f0b065a

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aget-object v2, v9, v15

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    :goto_7
    if-eqz v8, :cond_11

    iput-object v8, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v8}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v6}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    goto/16 :goto_9

    :cond_11
    iget-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    if-eqz v1, :cond_12

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_13

    :cond_12
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0e010c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    iget-object v2, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :cond_13
    iget-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, v5, Lcom/blankj/utilcode/util/ToastUtils;->mTextColor:I

    const v3, -0x1000001

    if-eq v2, v3, :cond_14

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_14
    iget v2, v5, Lcom/blankj/utilcode/util/ToastUtils;->mTextSize:I

    if-eq v2, v13, :cond_15

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_15
    iget v2, v5, Lcom/blankj/utilcode/util/ToastUtils;->mBgResource:I

    if-eq v2, v13, :cond_16

    iget-object v3, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    :cond_16
    iget v2, v5, Lcom/blankj/utilcode/util/ToastUtils;->mBgColor:I

    if-eq v2, v3, :cond_1a

    iget-object v3, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v3, :cond_17

    if-eqz v5, :cond_17

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_8

    :cond_17
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    :cond_18
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_8

    :cond_19
    iget-object v1, v6, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1a
    :goto_8
    invoke-virtual {v6}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->processRtlIfNeed()V

    :goto_9
    iget v0, v0, Lcom/blankj/utilcode/util/ToastUtils$2;->val$duration:I

    invoke-virtual {v6, v0}, Lcom/blankj/utilcode/util/ToastUtils$AbsToast;->show(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
