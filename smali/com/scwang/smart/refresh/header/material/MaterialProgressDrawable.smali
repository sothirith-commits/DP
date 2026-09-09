.class public final Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final COLORS:[I

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

.field public static final MATERIAL_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# instance fields
.field public final mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

.field public mFinishing:Z

.field public final mHeight:F

.field public mIsRunning:Z

.field public final mParent:Landroid/view/View;

.field public final mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

.field public mRotation:F

.field public mRotationCount:F

.field public final mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    const/high16 v0, -0x1000000

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    invoke-direct {v0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;-><init>()V

    iput-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iput-object p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mParent:Landroid/view/View;

    sget-object p1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->COLORS:[I

    iput-object p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget p1, p1, v1

    iput p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/16 v2, 0x28

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mWidth:F

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mHeight:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    iget-object v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    aget v1, v2, v1

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    iget-object v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v1, 0x410c0000    # 8.75f

    mul-float/2addr v1, p1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowWidth:I

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowHeight:I

    iget p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mWidth:F

    float-to-int p1, p1

    iget v1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mHeight:F

    float-to-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-wide v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v3, 0x0

    cmpg-double v3, v1, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v3, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, v4

    float-to-double v3, p1

    sub-double/2addr v3, v1

    double-to-float p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    iget p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    div-float/2addr p1, v4

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-float p1, v1

    :goto_1
    iput p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    new-instance p1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    invoke-direct {p1, p0, v0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;-><init>(Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    sget-object v1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;

    invoke-direct {v1, p0, v0}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$2;-><init>(Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object p1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    return-void
.end method

.method public static updateRingColor(FLcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;)V
    .locals 8

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_0

    sub-float/2addr p0, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p0, v0

    iget-object v0, p1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    iget v1, p1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    rem-int/2addr v1, v3

    aget v0, v0, v1

    shr-int/lit8 v1, v2, 0x18

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v5, v1

    int-to-float v5, v5

    mul-float/2addr v5, p0

    float-to-int v5, v5

    add-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x18

    sub-int/2addr v6, v3

    int-to-float v5, v6

    mul-float/2addr v5, p0

    float-to-int v5, v5

    add-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    sub-int/2addr v7, v4

    int-to-float v3, v7

    mul-float/2addr v3, p0

    float-to-int v3, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v1, v3

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    add-int/2addr v2, p0

    or-int p0, v1, v2

    iput p0, p1, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iget-object v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeInset:F

    invoke-virtual {v3, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iget v4, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    add-float/2addr v2, v4

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float v8, v2, v5

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    add-float/2addr v2, v4

    mul-float/2addr v2, v5

    sub-float v9, v2, v8

    const/4 v10, 0x0

    cmpl-float v2, v9, v10

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v6, 0x0

    move-object v2, p1

    move v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeInset:F

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v2, v3

    iget-wide v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v11, v3

    double-to-float v3, v11

    iget-wide v11, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRingCenterRadius:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v11

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v6

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v5, v10, v10}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v6, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    iget v6, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowScale:F

    mul-float/2addr v6, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    iget v10, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowHeight:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-virtual {v5, v6, v10}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    sub-float/2addr v3, v2

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->offset(FF)V

    iget-object v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v8, v9

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v8, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-virtual {p1, v8, v3, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrow:Landroid/graphics/Path;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mHeight:F

    float-to-int p0, p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iget-object v0, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final showArrow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iget-boolean v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mShowArrow:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mShowArrow:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 6

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    iget v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iget v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iget v3, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    iput v3, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    cmpl-float v1, v2, v1

    iget-object v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mParent:Landroid/view/View;

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mFinishing:Z

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    const-wide/16 v4, 0x29a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    iget-object v4, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    aget v1, v4, v1

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    const-wide/16 v4, 0x534

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mAnimation:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$1;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    iput-boolean v3, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    :cond_1
    return-void
.end method

.method public final stop()V
    .locals 3

    iget-boolean v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRing:Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    iput v1, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColorIndex:I

    iget-object v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mColors:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mCurrentColor:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingStartTrim:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingEndTrim:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartingRotation:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v2, v0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    invoke-virtual {p0, v1}, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->showArrow(Z)V

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-boolean v1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable;->mIsRunning:Z

    :cond_0
    return-void
.end method
