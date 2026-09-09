.class public final Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anchorRect:Landroid/graphics/Rect;

.field public final appContext:Landroid/content/Context;

.field public final cachedPopupRect:Landroid/graphics/Rect;

.field public final closeBtn:Landroid/widget/ImageView;

.field public final colorBtn:Landroid/widget/ImageView;

.field public final cornerRadiusPx:F

.field public final fontDecreaseBtn:Landroid/widget/ImageView;

.field public final fontIncreaseBtn:Landroid/widget/ImageView;

.field public final horizontalMarginPx:I

.field public isAdded:Z

.field public final lockBtn:Landroid/widget/ImageView;

.field public final lyricAlignBtn:Landroid/widget/ImageView;

.field public final opacityBtn:Landroid/widget/ImageView;

.field public final pinBtn:Landroid/widget/ImageView;

.field public final popupContainer:Landroid/view/View;

.field public final popupEnterTranslationPx:F

.field public final popupFixedWidthPx:I

.field public final popupSpacingPx:I

.field public final popupStrokeWidthPx:I

.field public final popupView:Landroid/view/View;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->appContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->windowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupView:Landroid/view/View;

    const v1, 0x7f0b0448

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "findViewById(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070097

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupSpacingPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->horizontalMarginPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700b4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupFixedWidthPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->cornerRadiusPx:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupStrokeWidthPx:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->anchorRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->cachedPopupRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070095

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupEnterTranslationPx:F

    const p1, 0x7f0b010f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->closeBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b0352

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->lockBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b0230

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->fontIncreaseBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b022f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->fontDecreaseBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b040f

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->opacityBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b0113

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->colorBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b0358

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->lyricAlignBtn:Landroid/widget/ImageView;

    const p1, 0x7f0b0439

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->pinBtn:Landroid/widget/ImageView;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method public final calculatePopupRect()Landroid/graphics/Rect;
    .locals 8

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupFixedWidthPx:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupView:Landroid/view/View;

    invoke-virtual {v3, v0, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v3, v1, v1, v0, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result v3

    iget v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->horizontalMarginPx:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    if-ge v2, v4, :cond_0

    move v2, v4

    :cond_0
    iget-object v5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v0, 0x2

    sub-int/2addr v6, v7

    invoke-static {v6, v4, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    sget-object v4, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->appContext:Landroid/content/Context;

    const-string v7, "appContext"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v3, v1

    if-ge v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    iget v3, v5, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupSpacingPx:I

    add-int/2addr v3, v5

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    add-int/2addr v0, v2

    add-int/2addr v1, v4

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->cachedPopupRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p0
.end method

.method public final dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    return-void
.end method

.method public final updateAnchor(IIII)V
    .locals 1

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->updateLayout()V

    :cond_0
    return-void
.end method

.method public final updateLayout()V
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p0, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    return-void
.end method
