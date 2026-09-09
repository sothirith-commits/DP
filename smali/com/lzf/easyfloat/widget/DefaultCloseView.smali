.class public final Lcom/lzf/easyfloat/widget/DefaultCloseView;
.super Lcom/lzf/easyfloat/widget/BaseSwitchView;
.source "SourceFile"


# instance fields
.field public height:F

.field public final inRangeColor:I

.field public final normalColor:I

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;

.field public final rectF:Landroid/graphics/RectF;

.field public final region:Landroid/graphics/Region;

.field public final shapeType:I

.field public final totalRegion:Landroid/graphics/Region;

.field public width:F

.field public final zoomSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->normalColor:I

    const-string v1, "#99FF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->inRangeColor:I

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->rectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->region:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->totalRegion:Landroid/graphics/Region;

    sget-object v1, Lcom/lzf/easyfloat/utils/DisplayUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/DisplayUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int p1, v1

    int-to-float p1, p1

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    const/4 p1, 0x1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/lzf/easyfloat/R$styleable;->DefaultCloseView:[I

    invoke-virtual {v1, p2, v2, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->normalColor:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->normalColor:I

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->inRangeColor:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->inRangeColor:I

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->shapeType:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->shapeType:I

    const/4 v1, 0x3

    iget v2, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :goto_0
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->normalColor:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p2, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    iget-object v0, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const-string v3, "paint"

    if-eqz v1, :cond_5

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->normalColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->shapeType:I

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->rectF:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->totalRegion:Landroid/graphics/Region;

    if-eqz v1, :cond_2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_1

    if-eq v1, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    int-to-float v4, v4

    div-float/2addr v1, v4

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    iget v5, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    sub-float v5, v4, v5

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    float-to-int v1, v1

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    float-to-int v5, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    iget v7, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    invoke-virtual {v5, v1, v4, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    float-to-int v7, v7

    invoke-virtual {v6, v1, v4, v5, v7}, Landroid/graphics/Region;->set(IIII)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v7, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    add-float/2addr v1, v7

    iget v8, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    sub-float/2addr v8, v9

    iget v10, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    sub-float/2addr v10, v9

    int-to-float v4, v4

    mul-float/2addr v10, v4

    invoke-virtual {v5, v1, v7, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    float-to-int v5, v4

    add-int/2addr v1, v5

    float-to-int v4, v4

    iget v5, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iget v7, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->zoomSize:F

    sub-float/2addr v5, v7

    float-to-int v5, v5

    iget v7, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    float-to-int v7, v7

    invoke-virtual {v6, v1, v4, v5, v7}, Landroid/graphics/Region;->set(IIII)Z

    :goto_0
    iget-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->region:Landroid/graphics/Region;

    invoke-virtual {v1, v0, v6}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->width:F

    int-to-float p1, p2

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultCloseView;->height:F

    return-void
.end method
