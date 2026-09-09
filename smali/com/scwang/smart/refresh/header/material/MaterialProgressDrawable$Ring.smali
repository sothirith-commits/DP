.class public final Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mArrow:Landroid/graphics/Path;

.field public mArrowHeight:I

.field public final mArrowPaint:Landroid/graphics/Paint;

.field public mArrowScale:F

.field public mArrowWidth:I

.field public mColorIndex:I

.field public mColors:[I

.field public mCurrentColor:I

.field public mEndTrim:F

.field public final mPaint:Landroid/graphics/Paint;

.field public mRingCenterRadius:D

.field public mRotation:F

.field public mShowArrow:Z

.field public mStartTrim:F

.field public mStartingEndTrim:F

.field public mStartingRotation:F

.field public mStartingStartTrim:F

.field public mStrokeInset:F

.field public mStrokeWidth:F

.field public final mTempBounds:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mTempBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mArrowPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStartTrim:F

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mEndTrim:F

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mRotation:F

    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeWidth:F

    const/high16 v2, 0x40200000    # 2.5f

    iput v2, p0, Lcom/scwang/smart/refresh/header/material/MaterialProgressDrawable$Ring;->mStrokeInset:F

    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method
