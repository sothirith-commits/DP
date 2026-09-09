.class public Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final FADE_COLORS:[I

.field public static final FADE_COLORS_REVERSE:[I


# instance fields
.field public final fadeBottom:Z

.field public final fadeLeft:Z

.field public final fadeRight:Z

.field public final fadeTop:Z

.field public gradientDirtyFlags:I

.field public final gradientPaintBottom:Landroid/graphics/Paint;

.field public final gradientPaintLeft:Landroid/graphics/Paint;

.field public final gradientPaintRight:Landroid/graphics/Paint;

.field public final gradientPaintTop:Landroid/graphics/Paint;

.field public final gradientRectBottom:Landroid/graphics/Rect;

.field public final gradientRectLeft:Landroid/graphics/Rect;

.field public final gradientRectRight:Landroid/graphics/Rect;

.field public final gradientRectTop:Landroid/graphics/Rect;

.field public final gradientSizeBottom:I

.field public final gradientSizeLeft:I

.field public final gradientSizeRight:I

.field public final gradientSizeTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sput-object v2, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS:[I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x42a00000    # 80.0f

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout:[I

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    and-int/lit8 v2, v0, 0x1

    if-ne v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    and-int/lit8 v2, v0, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    and-int/lit8 v2, v0, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    move v3, v1

    :cond_3
    iput-boolean v3, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    invoke-virtual {p2, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    invoke-virtual {p2, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_4
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_5
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_6
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v0, :cond_7

    if-lez p1, :cond_7

    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    :cond_8
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    :goto_3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x1

    sget-object v2, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS:[I

    if-ne v1, v3, :cond_3

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/2addr v0, v3

    iget-object v6, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v9, v1

    int-to-float v8, v3

    int-to-float v10, v0

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    move v7, v9

    move-object v11, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_3
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v7, v1

    int-to-float v10, v3

    int-to-float v9, v0

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    move v8, v10

    move-object v11, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x2

    sget-object v2, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/2addr v1, v4

    iget-object v6, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v6, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v9, v3

    int-to-float v8, v4

    int-to-float v10, v1

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v0

    move v7, v9

    move-object v11, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x8

    if-ne v1, v5, :cond_6

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v0, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v7, v3

    int-to-float v10, v0

    int-to-float v9, v1

    const/4 v12, 0x0

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v6, v4

    move v8, v10

    move-object v11, v2

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_7
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v1, :cond_8

    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_8
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_9
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0xc

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    if-eq p2, p4, :cond_1

    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    return-void
.end method

.method public final setPadding(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-eq v0, p2, :cond_1

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_2

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_3

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
