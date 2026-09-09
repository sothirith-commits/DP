.class public Lcom/scwang/smart/refresh/header/MaterialHeader;
.super Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/scwang/smart/refresh/layout/api/RefreshHeader;


# instance fields
.field public final mBezierPaint:Landroid/graphics/Paint;

.field public final mBezierPath:Landroid/graphics/Path;

.field public final mCircleDiameter:I

.field public final mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

.field public mFinished:Z

.field public mHeadHeight:I

.field public final mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

.field public final mShowBezierWave:Z

.field public mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

.field public mWaveHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    sget-object v2, Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;->MatchLayout:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    iput-object v2, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->mSpinnerStyle:Lcom/scwang/smart/refresh/layout/constant/SpinnerStyle;

    sget v2, Lcom/scwang/smart/refresh/layout/util/SmartUtil;->density:F

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    new-instance v2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    invoke-direct {v2, p0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    const v3, -0x559934

    const/16 v4, -0x7800

    const v5, -0xff6634

    const v6, -0xbbbc

    const v7, -0x996700

    filled-new-array {v5, v6, v7, v3, v4}, [I

    move-result-object v3

    iget-object v4, v2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iput-object v3, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    iput v1, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v3, v3, v1

    iput v3, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    new-instance v3, Lcom/scwang/smart/refresh/header/material/CircleImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v4, v6

    invoke-virtual {v3, v4}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {v5}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    const v6, -0x50506

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleDiameter:I

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mBezierPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mBezierPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Lcom/scwang/smart/refresh/header/material/R$styleable;->MaterialHeader:[I

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    const/4 v6, 0x6

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x5

    const v8, -0xee4401

    invoke-virtual {p1, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v9

    const/high16 v10, -0x1000000

    const/4 v11, 0x2

    if-eqz v9, :cond_0

    invoke-virtual {p1, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    int-to-float v7, v7

    invoke-virtual {v3, v7, v2, v2, v9}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    const/4 v7, 0x4

    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    invoke-virtual {p1, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    int-to-float v1, v1

    invoke-virtual {v3, v1, v2, v2, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mBezierPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mWaveHeight:I

    int-to-float v4, v4

    const v5, 0x3ff33333    # 1.9f

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v4, v3, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mBezierPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onFinish(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Z)I
    .locals 0

    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    invoke-virtual {p2}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->stop()V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mFinished:Z

    const/4 p0, 0x0

    return p0
.end method

.method public final onInitialized(Lcom/umeng/analytics/pro/ah;II)V
    .locals 2

    iget-boolean p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    if-nez p3, :cond_1

    iget-object p1, p1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;

    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshHeader:Lcom/scwang/smart/refresh/layout/api/RefreshHeader;

    invoke-virtual {p0, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-boolean p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    if-nez p3, :cond_1

    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualHeaderTranslationContent:Z

    iput-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableHeaderTranslationContent:Z

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mRefreshFooter:Lcom/scwang/smart/refresh/layout/api/RefreshFooter;

    invoke-virtual {p0, p3}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    if-nez p3, :cond_1

    iput-boolean v1, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mManualFooterTranslationContent:Z

    iput-boolean v0, p1, Lcom/scwang/smart/refresh/layout/SmartRefreshLayout;->mEnableFooterTranslationContent:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mWaveHeight:I

    :cond_2
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    iget p5, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    if-lez p5, :cond_2

    div-int/lit8 v1, p4, 0x2

    sub-int/2addr p5, v1

    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int v1, p2, p3

    add-int/2addr p2, p3

    add-int/2addr p4, p5

    invoke-virtual {p1, v1, p5, p2, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->showArrow(Z)V

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    const/4 p3, 0x0

    iput p3, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    const p3, 0x3f4ccccd    # 0.8f

    iput p3, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget p3, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    const/high16 p4, 0x3f800000    # 1.0f

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_1

    iput p4, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    invoke-virtual {p1, p4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    div-int/lit8 p2, p2, 0x2

    div-int/lit8 p3, p3, 0x2

    sub-int p0, p2, p3

    neg-int p4, p4

    add-int/2addr p2, p3

    invoke-virtual {p1, p0, p4, p2, v0}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    iget p0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleDiameter:I

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public final onMoving(ZFIII)V
    .locals 7

    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    sget-object p5, Lcom/scwang/smart/refresh/layout/constant/RefreshState;->Refreshing:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    if-ne p2, p5, :cond_0

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mShowBezierWave:Z

    if-eqz p2, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mHeadHeight:I

    const/4 p2, 0x0

    sub-int v0, p3, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mWaveHeight:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    iget-object p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    if-nez p1, :cond_2

    iget-boolean p1, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mFinished:Z

    if-nez p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-eq p1, p5, :cond_4

    int-to-float p1, p3

    mul-float/2addr p1, v1

    int-to-float p5, p4

    div-float/2addr p1, p5

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    float-to-double v3, p1

    const-wide v5, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    double-to-float p1, v3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr p1, v3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int/2addr v3, p4

    int-to-float p4, v3

    mul-float v3, p5, v2

    invoke-static {p4, v3}, Ljava/lang/Math;->min(FF)F

    move-result p4

    div-float/2addr p4, p5

    const/4 p5, 0x0

    invoke-static {p5, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    div-float/2addr p4, v0

    float-to-double v3, p4

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float p4, v3

    mul-float/2addr p4, v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v4, p1, v3

    const/4 v5, 0x1

    invoke-virtual {p2, v5}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->showArrow(Z)V

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p2, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iput p5, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v3, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p5

    iget v3, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    cmpl-float v3, v3, p5

    if-eqz v3, :cond_3

    iput p5, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_3
    const p5, 0x3ecccccd    # 0.4f

    mul-float/2addr p1, p5

    const/high16 p5, -0x41800000    # -0.25f

    add-float/2addr p1, p5

    mul-float/2addr p4, v2

    add-float/2addr p4, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p4, p1

    iput p4, v4, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    int-to-float p2, p3

    div-float p3, p2, v2

    iget p0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleDiameter:I

    int-to-float p0, p0

    div-float p4, p0, v2

    add-float/2addr p4, p3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    mul-float/2addr p2, v0

    div-float/2addr p2, p0

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_5
    return-void
.end method

.method public final onStartAnimator(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;II)V
    .locals 0

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mProgress:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->start()V

    return-void
.end method

.method public final onStateChanged(Lcom/scwang/smart/refresh/layout/api/RefreshLayout;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 0

    iget-object p1, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mCircleView:Lcom/scwang/smart/refresh/header/material/CircleImageView;

    iput-object p3, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mState:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mFinished:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method public varargs setPrimaryColors([I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/MaterialHeader;->mBezierPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
