.class public final Lcom/deepalhome/launcher/navigation/FanSpeedRingView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public final activePaint:Landroid/graphics/Paint;

.field public forceWhiteContentColor:Z

.field public final inactivePaint:Landroid/graphics/Paint;

.field public isNight:Z

.field public final ringInsetPx:F

.field public final ringRect:Landroid/graphics/RectF;

.field public final strokeWidthPx:F

.field public windLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->ringRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->inactivePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->activePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x40700000    # 3.75f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->strokeWidthPx:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v1, 0x40200000    # 2.5f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->ringInsetPx:F

    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->strokeWidthPx:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    iget v4, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->ringInsetPx:F

    add-float/2addr v3, v4

    iget-object v10, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->ringRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    div-float/2addr v4, v2

    add-float/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v2

    add-float/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    div-float/2addr v6, v2

    sub-float/2addr v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v0

    div-float/2addr v7, v2

    sub-float/2addr v7, v3

    invoke-virtual {v10, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v9, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->inactivePaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->activePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->forceWhiteContentColor:Z

    if-eqz v2, :cond_0

    const v2, 0x7f06038c

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->isNight:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060099

    goto :goto_0

    :cond_1
    const v2, 0x7f060098

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06003f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x43b40000    # 360.0f

    move-object v4, p1

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->windLevel:I

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    const/16 v2, 0x8

    if-eq p0, v2, :cond_2

    int-to-float p0, p0

    const/high16 v2, 0x41000000    # 8.0f

    div-float/2addr p0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr p0, v2

    :goto_1
    move v7, p0

    goto :goto_2

    :cond_2
    const p0, 0x43b3f333    # 359.9f

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_2
    cmpl-float p0, v7, v1

    if-lez p0, :cond_4

    const/4 v8, 0x0

    const/high16 v6, -0x3d4c0000    # -90.0f

    move-object v4, p1

    move-object v5, v10

    move-object v9, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public final setForceWhiteContentColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->forceWhiteContentColor:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->forceWhiteContentColor:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setWindLevel(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->windLevel:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedRingView;->windLevel:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
