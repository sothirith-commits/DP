.class public final Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

.field public static autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static currentActivity:Ljava/lang/ref/WeakReference;

.field public static currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

.field public static final handler:Landroid/os/Handler;

.field public static overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->HIDDEN:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sput-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleRotate(I)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    sget-object v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v4, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->SHOWING:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    if-eq v3, v4, :cond_0

    return-void

    :cond_0
    sget-object v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v4, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    add-int/2addr v4, p0

    if-ltz v4, :cond_5

    iget-object p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt v4, p0, :cond_2

    goto :goto_1

    :cond_2
    iget p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    iput v4, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    iget-object v5, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->scaleAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    aget v6, v6, p0

    new-array v7, v2, [F

    aput v6, v7, v1

    const v6, 0x3f59999a    # 0.85f

    aput v6, v7, v0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v9, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, p0, v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuView;II)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    aget p0, p0, v4

    new-array v6, v2, [F

    aput p0, v6, v1

    const p0, 0x3faccccd    # 1.35f

    aput p0, v6, v0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v4, v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuView;II)V

    invoke-virtual {p0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_5
    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handler:Landroid/os/Handler;

    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    :cond_6
    new-instance p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sput-object p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static hideMenu(Lkotlin/jvm/functions/Function0;)V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;->HIDDEN:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->autoHideRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    :cond_1
    sput-object v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->currentState:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$MenuState;

    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    sput-object v2, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->overlay:Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$hideMenu$1;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$hideMenu$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    iget-boolean p0, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->isShowing:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->isShowing:Z

    iget-object v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->container:Landroid/widget/FrameLayout;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v3, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;->menuView:Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x43960000    # 300.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v6}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/high16 v6, -0x34000000    # -3.3554432E7f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v6, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$$ExternalSyntheticLambda1;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$$ExternalSyntheticLambda1;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-virtual {p0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;

    invoke-direct {v3, v0, v2, v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay$dismiss$1$2;-><init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuOverlay;Landroid/widget/FrameLayout;Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$hideMenu$1;)V

    invoke-virtual {p0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    :goto_0
    return-void
.end method

.method public static synthetic hideMenu$default(Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->hideMenu(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static tintedDrawable(I)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_0
    const/16 v2, 0x60

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-lez v4, :cond_3

    move-object v1, v5

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const-string v5, "createBitmap(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v7, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_5
    :goto_2
    return-object v1
.end method
