.class public Lcom/deepalhome/launcher/view/VerticalSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX:I = 0x64

.field private static final MIN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VerticalSeekBar"


# instance fields
.field private backgroundColor:I

.field private dRect:Landroid/graphics/Rect;

.field private firstRun:Z

.field private mCornerRadius:F

.field private mDefaultImage:Landroid/graphics/Bitmap;

.field private mDefaultValue:I

.field private mEnabled:Z

.field private mImageEnabled:Z

.field private mMax:I

.field private mMaxImage:Landroid/graphics/Bitmap;

.field private mMin:I

.field private mMinImage:Landroid/graphics/Bitmap;

.field private mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

.field private mPoints:I

.field private mProgressPaint:Landroid/graphics/Paint;

.field private mProgressSweep:F

.field private mStep:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mTouchDisabled:Z

.field private mtextEnabled:Z

.field private scrHeight:I

.field private scrWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mtextEnabled:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTouchDisabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressSweep:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->firstRun:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mtextEnabled:Z

    iput-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTouchDisabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressSweep:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->firstRun:Z

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private convertTouchEventPoint(F)D
    .locals 1

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    mul-int/lit8 v0, p0, 0x2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    mul-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    float-to-double p0, p0

    return-wide p0

    :cond_0
    const/4 p0, 0x0

    cmpg-float v0, p1, p0

    if-gez v0, :cond_1

    move p1, p0

    :cond_1
    float-to-double p0, p1

    return-wide p0
.end method

.method private drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, p0

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    sub-int/2addr v4, p0

    int-to-float p0, v4

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 p0, 0x0

    invoke-virtual {p2, p1, p0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p2, p3, v3, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->dRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700b3

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, p3, v0, p0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float p0, p3

    int-to-float p3, v3

    div-float/2addr p0, p3

    int-to-float p2, p2

    int-to-float p3, v4

    div-float/2addr p2, p3

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p0, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "INIT"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v0, 0x7f06002a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const v1, 0x7f06008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->backgroundColor:I

    const v1, 0x7f060397

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextSize:F

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    if-eqz p2, :cond_1

    sget-object v2, Lcom/deepalhome/launcher/R$styleable;->BoxedVertical:[I

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/16 v2, 0xb

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    const/4 v2, 0x7

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    const/16 v2, 0x9

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    const/16 v2, 0xd

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    const/4 v2, 0x3

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    const/4 v2, 0x6

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    const/4 v2, 0x5

    iget-boolean v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    invoke-virtual {p2, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultImage:Landroid/graphics/Bitmap;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMinImage:Landroid/graphics/Bitmap;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMaxImage:Landroid/graphics/Bitmap;

    :cond_0
    const/16 v2, 0xc

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->backgroundColor:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->backgroundColor:I

    const/16 v2, 0x11

    iget v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextSize:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextSize:F

    const/16 v2, 0xf

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    const/16 v2, 0x12

    iget-boolean v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTouchDisabled:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTouchDisabled:Z

    const/16 v2, 0x10

    iget-boolean v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mtextEnabled:Z

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mtextEnabled:Z

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    iget p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    if-le p2, v2, :cond_2

    move p2, v2

    :cond_2
    iput p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    if-ge p2, v2, :cond_3

    move p2, v2

    :cond_3
    iput p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextSize:F

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    return-void
.end method

.method private updateOnTouch(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->convertTouchEventPoint(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->updateProgress(I)V

    return-void
.end method

.method private updateProgress(I)V
    .locals 4

    int-to-float v0, p1

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressSweep:F

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    sub-int v3, v1, v2

    mul-int/2addr v3, p1

    div-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int p1, v1, v2

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    rem-int v1, p1, v0

    sub-int/2addr p1, v1

    rem-int/2addr v2, v0

    add-int/2addr v2, p1

    iput v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    :cond_2
    iget-object p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    invoke-interface {p1, p0, v0}, Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;->onPointsChanged(Lcom/deepalhome/launcher/view/VerticalSeekBar;I)V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateProgressByValue(IZ)V
    .locals 4

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    iget v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    sub-int v2, p1, v1

    iget v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v1

    div-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v3

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressSweep:F

    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;->onPointsChanged(Lcom/deepalhome/launcher/view/VerticalSeekBar;I)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    return p0
.end method

.method public getDefaultValue()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    return p0
.end method

.method public getMax()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    return p0
.end method

.method public getStep()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    return p0
.end method

.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    return p0
.end method

.method public isImageEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0xff

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    int-to-float v4, v4

    invoke-direct {v2, v0, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    sget-object v0, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->backgroundColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrWidth:I

    int-to-float v3, v0

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    int-to-float v4, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget v5, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressSweep:F

    iget-object v6, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMinImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMaxImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    iget v4, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    if-ne v3, v2, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->drawIcon(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mtextEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->drawText(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;)V

    :cond_3
    iget-boolean p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->firstRun:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->firstRun:Z

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mPoints:I

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->setValue(IZ)V

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrHeight:I

    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mProgressPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->scrWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;->onStopTrackingTouch(Lcom/deepalhome/launcher/view/VerticalSeekBar;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->updateOnTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    if-eqz p1, :cond_4

    invoke-interface {p1, p0}, Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;->onStopTrackingTouch(Lcom/deepalhome/launcher/view/VerticalSeekBar;)V

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0}, Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;->onStartTrackingTouch(Lcom/deepalhome/launcher/view/VerticalSeekBar;)V

    :cond_6
    iget-boolean v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mTouchDisabled:Z

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->updateOnTouch(Landroid/view/MotionEvent;)V

    :cond_7
    :goto_0
    return v2

    :cond_8
    return v1
.end method

.method public setCornerRadius(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mCornerRadius:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDefaultValue(I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mDefaultValue:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Default value should not be bigger than max value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mEnabled:Z

    return-void
.end method

.method public setImageEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mImageEnabled:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    if-le p1, v0, :cond_0

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Max should not be less than zero"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnBoxedPointsChangeListener(Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mOnValuesChangeListener:Lcom/deepalhome/launcher/view/VerticalSeekBar$OnValuesChangeListener;

    return-void
.end method

.method public setStep(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mStep:I

    return-void
.end method

.method public setValue(IZ)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/view/VerticalSeekBar;->mMin:I

    if-ge p1, v0, :cond_1

    move p1, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/VerticalSeekBar;->updateProgressByValue(IZ)V

    return-void
.end method
