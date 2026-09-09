.class public final Lcom/lzf/easyfloat/widget/DefaultAddView;
.super Lcom/lzf/easyfloat/widget/BaseSwitchView;
.source "SourceFile"


# instance fields
.field public height:F

.field public final paint:Landroid/graphics/Paint;

.field public final path:Landroid/graphics/Path;

.field public final region:Landroid/graphics/Region;

.field public final totalRegion:Landroid/graphics/Region;

.field public width:F

.field public final zoomSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->path:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->region:Landroid/graphics/Region;

    new-instance p1, Landroid/graphics/Region;

    invoke-direct {p1}, Landroid/graphics/Region;-><init>()V

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->totalRegion:Landroid/graphics/Region;

    const/high16 p1, 0x41900000    # 18.0f

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->zoomSize:F

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const-string p2, "#AA000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget v1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->width:F

    iget v2, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->height:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->zoomSize:F

    sub-float/2addr v3, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->totalRegion:Landroid/graphics/Region;

    float-to-int v2, v4

    float-to-int v3, v4

    iget v4, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->width:F

    float-to-int v4, v4

    iget v5, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->height:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v2, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->region:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    const-string p0, "paint"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->width:F

    int-to-float p1, p2

    iput p1, p0, Lcom/lzf/easyfloat/widget/DefaultAddView;->height:F

    return-void
.end method
