.class public final Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final backgroundPaint:Landroid/graphics/Paint;

.field public final context:Landroid/content/Context;

.field public final intrinsicHeightPx:I

.field public final intrinsicWidthPx:I

.field public isDragging:Z

.field public isNight:Z

.field public levelValue:I

.field public final strokePaint:Landroid/graphics/Paint;

.field public final textPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->context:Landroid/content/Context;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->dpToPx(F)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->strokePaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->dpToPx(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->textPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x42080000    # 34.0f

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->dpToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->intrinsicWidthPx:I

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->dpToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->intrinsicHeightPx:I

    return-void
.end method


# virtual methods
.method public final dpToPx(F)F
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 13

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-string v1, "getBounds(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v3, 0x7f06003f

    iget-object v4, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-boolean v5, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isNight:Z

    if-eqz v5, :cond_0

    const v5, 0x7f06038c

    goto :goto_0

    :cond_0
    const v5, 0x7f06038b

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    iget-object v10, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->backgroundPaint:Landroid/graphics/Paint;

    iget-boolean v5, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isDragging:Z

    if-eqz v5, :cond_1

    const v5, 0x3da3d70a    # 0.08f

    invoke-static {v3, v5, v4}, Landroidx/core/graphics/ColorUtils;->blendARGB(IFI)I

    move-result v3

    :cond_1
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isDragging:Z

    if-eqz v3, :cond_2

    const/16 v3, 0xa0

    goto :goto_1

    :cond_2
    const/16 v3, 0x48

    :goto_1
    invoke-static {v4, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v12, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    move-object v3, p1

    move v8, v1

    move v9, v1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    move-object v3, p1

    move-object v10, v11

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {v12}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    iget v4, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v1

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->levelValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1, p0, v0, v3, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->intrinsicHeightPx:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->intrinsicWidthPx:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setDragging(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isDragging:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/navigation/FanSpeedCapsuleThumbDrawable;->isDragging:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
