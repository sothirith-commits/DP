.class public final Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public displayText:Ljava/lang/String;

.field public final framePaddingPx:F

.field public textAlpha:I

.field public final textPaint:Landroid/graphics/Paint;

.field public textSizePx:F

.field public textXPercent:I

.field public textYPercent:I

.field public final visibleBottomPx:F

.field public final visibleLeftPx:F

.field public final visibleRightPx:F

.field public final visibleTopPx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v0, 0x41000000    # 8.0f

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iput-object p1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->framePaddingPx:F

    const/high16 v0, 0x440c0000    # 560.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleLeftPx:F

    const/high16 v0, 0x43200000    # 160.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleTopPx:F

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleRightPx:F

    const/high16 v0, 0x42e00000    # 112.0f

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleBottomPx:F

    const-string v0, "14.8 km / 26 min | Arrive 18:10"

    iput-object v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->displayText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x41900000    # 18.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textSizePx:F

    const/16 v0, 0xff

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textAlpha:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textXPercent:I

    iput v0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textYPercent:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public final dpToPx(F)F
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    return p1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "canvas"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_7

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    iget v4, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleLeftPx:F

    iget v5, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->framePaddingPx:F

    add-float/2addr v4, v5

    iget v6, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleTopPx:F

    add-float/2addr v6, v5

    iget v7, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleRightPx:F

    sub-float/2addr v2, v7

    sub-float/2addr v2, v5

    iget v7, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->visibleBottomPx:F

    sub-float/2addr v3, v7

    sub-float/2addr v3, v5

    cmpg-float v5, v2, v4

    if-lez v5, :cond_7

    cmpg-float v5, v3, v6

    if-gtz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v5, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textSizePx:F

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v7, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textAlpha:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v7, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->displayText:Ljava/lang/String;

    new-array v8, v1, [C

    const/16 v9, 0xa

    aput-char v9, v8, v0

    invoke-static {v7, v8}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v10

    xor-int/2addr v10, v1

    if-eqz v10, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "14.8 km / 26 min | Arrive 18:10"

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v9, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v10, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v9, v10

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v10, v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v1

    int-to-float v12, v12

    mul-float/2addr v12, v10

    add-float/2addr v12, v11

    iget v11, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v6, v11

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v3, v7

    sub-float/2addr v12, v9

    sub-float/2addr v3, v12

    cmpg-float v7, v3, v6

    const/high16 v11, 0x42c80000    # 100.0f

    if-gtz v7, :cond_5

    goto :goto_1

    :cond_5
    sub-float v7, v3, v6

    iget v12, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textYPercent:I

    int-to-float v12, v12

    mul-float/2addr v7, v12

    div-float/2addr v7, v11

    add-float/2addr v7, v6

    invoke-static {v7, v6, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v6

    :goto_1
    sub-float/2addr v2, v4

    iget p0, p0, Lcom/deepalhome/launcher/hud/s05eta/HudEtaOverlayController$HudEtaTextView;->textXPercent:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    div-float/2addr v2, v11

    add-float/2addr v2, v4

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_6

    check-cast v3, Ljava/lang/String;

    int-to-float v0, v0

    add-float v7, v9, v10

    mul-float/2addr v7, v0

    add-float/2addr v7, v6

    invoke-virtual {p1, v3, v2, v7, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v0, v4

    goto :goto_2

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    :goto_3
    return-void
.end method
