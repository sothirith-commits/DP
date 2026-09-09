.class public final Lcom/deepalhome/launcher/ble/menu/RadialMenuView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final bitmapPaint:Landroid/graphics/Paint;

.field public final cancelPaint:Landroid/graphics/Paint;

.field public centerX:F

.field public centerY:F

.field public final emptyPaint:Landroid/graphics/Paint;

.field public final entranceAnimators:Ljava/util/ArrayList;

.field public entranceRunning:Z

.field public entranceScales:[F

.field public final glowPaint:Landroid/graphics/Paint;

.field public final halfIcon:F

.field public iconBitmaps:Ljava/util/List;

.field public iconScales:[F

.field public final iconSizePx:I

.field public items:Ljava/util/List;

.field public final labelPaint:Landroid/text/TextPaint;

.field public radius:F

.field public final scaleAnimators:Ljava/util/ArrayList;

.field public selectedIndex:I

.field public truncatedLabels:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 8

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconBitmaps:Ljava/util/List;

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->truncatedLabels:Ljava/util/List;

    const/16 p1, 0x30

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconSizePx:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->halfIcon:F

    new-array p1, v1, [F

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->scaleAnimators:Ljava/util/ArrayList;

    new-array p1, v1, [F

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceScales:[F

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceAnimators:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->glowPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v2, 0x40ffffff    # 7.9999995f

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, v1}, Landroid/text/TextPaint;-><init>(I)V

    const/4 v2, -0x1

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x14

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v4, 0x4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    invoke-virtual {p1, v5, v6, v0, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->labelPaint:Landroid/text/TextPaint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    const v0, -0x55000001

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x12

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v5

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->emptyPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v0

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->cancelPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final getSelectedItem()Lcom/deepalhome/launcher/ble/menu/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    iget p0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/ble/menu/MenuItem;

    return-object p0
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->scaleAnimators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceAnimators:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v1, "canvas"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f13011e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerX:F

    iget v3, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerY:F

    iget v4, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->radius:F

    mul-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v0, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v9, :cond_6

    iget v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    sub-int v1, v10, v1

    const/4 v2, -0x6

    if-lt v1, v2, :cond_5

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    int-to-float v1, v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float v3, v1, v2

    add-float/2addr v3, v2

    rem-float/2addr v3, v2

    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    iget v3, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerX:F

    iget v4, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->radius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v4, v3

    iget v3, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerY:F

    iget v5, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->radius:F

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v5, v1

    add-float/2addr v5, v3

    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    aget v1, v1, v10

    iget-object v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceScales:[F

    aget v2, v2, v10

    mul-float/2addr v1, v2

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v2, v1, v2

    if-lez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v7, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    iget v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->halfIcon:F

    if-ne v10, v1, :cond_3

    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->glowPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/RadialGradient;

    const v4, 0x3fe66666    # 1.8f

    mul-float v14, v2, v4

    const v5, -0x7f000001

    const v6, 0xffffff

    filled-new-array {v5, v6}, [I

    move-result-object v15

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v3

    move-object/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    mul-float/2addr v4, v2

    invoke-virtual {v7, v5, v5, v4, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_3
    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconBitmaps:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    neg-float v3, v2

    neg-float v2, v2

    iget-object v4, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    mul-float v11, v2, v8

    neg-float v12, v11

    iget-object v13, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->cancelPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v12

    move v3, v12

    move v4, v11

    move v5, v11

    move-object v6, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v3, v11

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->truncatedLabels:Ljava/util/List;

    iget v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerX:F

    iget v3, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerY:F

    iget v4, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->radius:F

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget-object v0, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p1, p1

    const/high16 p3, 0x40000000    # 2.0f

    div-float p3, p1, p3

    iput p3, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerX:F

    int-to-float p2, p2

    iput p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->centerY:F

    const/high16 p3, 0x3f400000    # 0.75f

    mul-float/2addr p2, p3

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p1, p3

    cmpl-float p3, p2, p1

    if-lez p3, :cond_0

    move p2, p1

    :cond_0
    iput p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->radius:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f19999a    # 0.6f

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    new-instance p3, Ljava/util/ArrayList;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result p4

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/deepalhome/launcher/ble/menu/MenuItem;

    invoke-virtual {p4}, Lcom/deepalhome/launcher/ble/menu/MenuItem;->getTitle()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->labelPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p4, v0, p1, v1}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object p3, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->truncatedLabels:Ljava/util/List;

    :cond_3
    :goto_1
    return-void
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/deepalhome/launcher/ble/menu/MenuItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/ble/menu/MenuItem;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/ble/menu/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconSizePx:I

    invoke-static {v3, v4, v4}, Lkotlin/io/TextStreamsKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconBitmaps:Ljava/util/List;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->truncatedLabels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [F

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_2

    const v4, 0x3f59999a    # 0.85f

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iput-object v2, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->iconScales:[F

    iget v1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->selectedIndex:I

    const v3, 0x3faccccd    # 1.35f

    aput v3, v2, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [F

    :goto_3
    if-ge v0, p1, :cond_3

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iput-object v1, p0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceScales:[F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
