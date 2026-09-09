.class public final Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public anchorLine:I

.field public animatedOffsetPx:F

.field public blurEnabled:Z

.field public final blurFilters:[Landroid/graphics/BlurMaskFilter;

.field public blurStrategy:Lme/wcy/lrcview/BlurStrategy;

.field public boldEnabled:Z

.field public cachedLayoutWidth:I

.field public currentColor:I

.field public currentLayouts:Ljava/util/List;

.field public currentLineIndex:I

.field public currentTextSizePx:F

.field public currentTimeMs:J

.field public dividerHeightPx:F

.field public document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

.field public drawHeightPx:I

.field public label:Ljava/lang/String;

.field public final labelPaint:Landroid/text/TextPaint;

.field public layoutFrozen:Z

.field public maxBlurRadius:F

.field public normalColor:I

.field public normalLayouts:Ljava/util/List;

.field public normalTextSizePx:F

.field public playbackAnchorPositionMs:J

.field public playbackAnchorRealtimeMs:J

.field public playbackSpeed:F

.field public playbackState:I

.field public renderInfoListener:Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;

.field public textGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$Companion;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->labelPaint:Landroid/text/TextPaint;

    const/16 p2, 0xd

    new-array p2, p2, [Landroid/graphics/BlurMaskFilter;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurFilters:[Landroid/graphics/BlurMaskFilter;

    const p2, -0x777778

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalColor:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x41c00000    # 24.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTextSizePx:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalTextSizePx:F

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->anchorLine:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    sget-object v0, Lme/wcy/lrcview/BlurStrategy;->PIXEL:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurStrategy:Lme/wcy/lrcview/BlurStrategy;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->maxBlurRadius:F

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->cachedLayoutWidth:I

    const/high16 p2, 0x7fc00000    # Float.NaN

    iput p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    iget p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTextSizePx:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->boldEnabled:Z

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public final buildLayout(Ljava/lang/String;FI)Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;
    .locals 3

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-boolean p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->boldEnabled:Z

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x0

    invoke-static {p1, v2, p2, v0, p3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p1

    iget p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->textGravity:I

    if-eq p0, v1, :cond_1

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    const-string p1, "build(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    if-le p3, v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result p3

    :goto_1
    invoke-direct {p1, p0, p2, p3}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;-><init>(Landroid/text/StaticLayout;II)V

    return-object p1
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->cachedLayoutWidth:I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final computeBaseLineTops(I)[F
    .locals 5

    new-array v0, p1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aput v1, v0, v2

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final drawHeightCompat()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightPx:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final findLineIndex(J)I
    .locals 7

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v1, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v1, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_2

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_5

    add-int v3, v2, v1

    ushr-int/lit8 v3, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v5, v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->startMs:J

    cmp-long v5, p1, v5

    if-gez v5, :cond_3

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_3
    iget-wide v4, v4, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    cmp-long v2, p1, v4

    if-ltz v2, :cond_4

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p0

    invoke-static {v2, v0, p0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public final layoutFor(I)Landroid/text/StaticLayout;
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public final notifyRenderInfo()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    iget v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    iget v4, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    add-int/2addr v4, v2

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->renderInfoListener:Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;

    if-eqz v3, :cond_7

    new-instance v15, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;

    iget v6, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    iget-object v5, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v7

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    iget-object v10, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v10

    move v11, v10

    goto :goto_0

    :cond_2
    move v11, v9

    :goto_0
    if-eqz v2, :cond_3

    iget-object v10, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v10

    move v12, v10

    goto :goto_1

    :cond_3
    move v12, v9

    :goto_1
    if-eqz v2, :cond_4

    iget v10, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->singleVisualLineHeightPx:I

    move v13, v10

    goto :goto_2

    :cond_4
    move v13, v9

    :goto_2
    iget v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    float-to-int v14, v10

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v10

    add-int/2addr v10, v4

    add-int/lit8 v16, v10, 0x2

    invoke-virtual {v5}, Landroid/text/Layout;->getHeight()I

    move-result v5

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_5
    move v2, v9

    :goto_3
    add-int/2addr v5, v2

    iget v2, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    float-to-int v2, v2

    add-int/2addr v5, v2

    add-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v4, v0

    if-gez v4, :cond_6

    move/from16 v17, v9

    goto :goto_4

    :cond_6
    move/from16 v17, v4

    :goto_4
    iget v9, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->singleVisualLineHeightPx:I

    iget v10, v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->twoVisualLinesHeightPx:I

    move-object v5, v15

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v2

    invoke-direct/range {v5 .. v17}, Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;-><init>(IIIIIIIIIIII)V

    invoke-interface {v3, v0}, Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;->onLineRenderInfoChanged(Lcom/deepalhome/launcher/music/ttml/TtmlLineRenderInfo;)V

    :cond_7
    :goto_5
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "canvas"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->syncPlaybackFrame(Z)Z

    iget-object v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    if-eqz v3, :cond_20

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_17

    :cond_1
    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    iget-object v7, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v7, v8, :cond_1f

    iget-object v7, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_2

    goto/16 :goto_16

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->computeBaseLineTops(I)[F

    move-result-object v7

    iget v8, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    aget v9, v7, v8

    invoke-virtual {v0, v8}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/text/Layout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v5

    add-float/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->resolveAnchorY()F

    move-result v9

    sub-float/2addr v9, v8

    iget v8, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_3

    iput v9, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    :goto_1
    move v8, v9

    goto :goto_2

    :cond_3
    iget v8, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    sub-float v8, v9, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    iput v9, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    goto :goto_1

    :cond_4
    iget v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    const v11, 0x3e75c28f    # 0.24f

    mul-float/2addr v8, v11

    add-float/2addr v8, v10

    iput v8, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightCompat()I

    move-result v15

    array-length v10, v7

    move v11, v2

    move v12, v11

    :goto_3
    const/4 v14, 0x0

    if-ge v11, v10, :cond_6

    aget v13, v7, v11

    add-float/2addr v13, v8

    invoke-virtual {v0, v11}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v2, v15

    cmpg-float v2, v13, v2

    if-gtz v2, :cond_5

    int-to-float v2, v4

    add-float/2addr v13, v2

    cmpl-float v2, v13, v14

    if-ltz v2, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    if-ge v12, v6, :cond_7

    move v2, v6

    goto :goto_4

    :cond_7
    move v2, v12

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->resolveAnchorY()F

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v13, :cond_1e

    iget v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    if-ne v12, v10, :cond_8

    iget-object v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    :goto_6
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    goto :goto_7

    :cond_8
    iget-object v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    goto :goto_6

    :goto_7
    aget v11, v7, v12

    add-float/2addr v11, v8

    int-to-float v6, v15

    cmpl-float v6, v11, v6

    if-gtz v6, :cond_9

    iget-object v6, v10, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v11

    cmpg-float v6, v6, v14

    if-gez v6, :cond_a

    :cond_9
    move/from16 v24, v4

    move-object/from16 v18, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move/from16 v26, v12

    move/from16 v23, v13

    move v11, v14

    move/from16 v17, v15

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v8, v3

    goto/16 :goto_15

    :cond_a
    iget v6, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    sub-int v6, v12, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v10, v10, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v14, v5

    add-float/2addr v14, v11

    iget v5, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    move-object/from16 v18, v7

    if-ne v12, v5, :cond_b

    const/4 v5, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_8
    invoke-virtual {v10}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    move/from16 v19, v8

    iget v8, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalColor:I

    move/from16 v20, v9

    invoke-virtual {v10}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    move-object/from16 v21, v10

    const-string v10, "getPaint(...)"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/high16 v10, 0x3f800000    # 1.0f

    if-nez v5, :cond_c

    if-nez v6, :cond_d

    :cond_c
    move-object/from16 v22, v3

    move/from16 v24, v4

    move v3, v10

    move v5, v11

    move/from16 v25, v12

    move/from16 v23, v13

    move/from16 v17, v15

    const/4 v4, 0x0

    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_d
    iget-object v5, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurStrategy:Lme/wcy/lrcview/BlurStrategy;

    move-object/from16 v22, v3

    move v3, v10

    move-object v10, v5

    move v5, v11

    move v11, v14

    move v14, v12

    move v12, v4

    move/from16 v23, v13

    move v13, v15

    move/from16 v24, v4

    move/from16 v25, v14

    const/4 v4, 0x0

    move v14, v2

    move/from16 v17, v15

    move v15, v6

    invoke-interface/range {v10 .. v15}, Lme/wcy/lrcview/BlurStrategy;->calculateBlurRatio(FFIII)F

    move-result v6

    invoke-static {v6, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v6

    iget-boolean v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurEnabled:Z

    if-eqz v10, :cond_12

    iget v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->maxBlurRadius:F

    cmpl-float v10, v10, v4

    if-lez v10, :cond_12

    invoke-static {v6, v4, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v10

    const/16 v11, 0xc

    int-to-float v12, v11

    mul-float/2addr v10, v12

    float-to-int v10, v10

    if-gtz v10, :cond_e

    goto :goto_a

    :cond_e
    if-le v10, v11, :cond_f

    goto :goto_9

    :cond_f
    move v11, v10

    :goto_9
    iget-object v10, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurFilters:[Landroid/graphics/BlurMaskFilter;

    aget-object v12, v10, v11

    if-eqz v12, :cond_10

    goto :goto_b

    :cond_10
    iget v12, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->maxBlurRadius:F

    int-to-float v13, v11

    const/high16 v14, 0x41400000    # 12.0f

    div-float/2addr v13, v14

    mul-float/2addr v13, v12

    const v12, 0x3f733333    # 0.95f

    mul-float/2addr v13, v12

    const v12, 0x3dcccccd    # 0.1f

    cmpg-float v12, v13, v12

    if-gtz v12, :cond_11

    goto :goto_a

    :cond_11
    new-instance v12, Landroid/graphics/BlurMaskFilter;

    sget-object v14, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v12, v13, v14}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    aput-object v12, v10, v11

    goto :goto_b

    :cond_12
    :goto_a
    const/4 v12, 0x0

    :goto_b
    invoke-virtual {v9, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const v10, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v6, v10

    sub-float v10, v3, v6

    int-to-float v6, v9

    mul-float/2addr v6, v10

    float-to-int v6, v6

    const/16 v9, 0xff

    const/4 v10, 0x0

    invoke-static {v6, v10, v9}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v6

    const v9, 0xffffff

    and-int/2addr v8, v9

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v8, v6

    goto :goto_d

    :goto_c
    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    :goto_d
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v7, v21

    invoke-virtual {v7, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v6, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    move/from16 v7, v25

    if-ne v7, v6, :cond_1d

    move-object/from16 v8, v22

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-object v9, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    iget-object v9, v9, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;->layout:Landroid/text/StaticLayout;

    iget-object v10, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->tokens:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;

    iget-object v14, v12, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->text:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    iget-wide v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    move/from16 v25, v14

    iget-wide v13, v12, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->endMs:J

    cmp-long v26, v3, v13

    if-ltz v26, :cond_13

    add-int v11, v11, v25

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    goto :goto_e

    :cond_13
    move/from16 v26, v7

    iget-wide v6, v12, Lcom/deepalhome/launcher/music/ttml/TtmlLyricToken;->startMs:J

    cmp-long v3, v3, v6

    if-gtz v3, :cond_14

    new-instance v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;

    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-direct {v3, v11, v4, v6}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;-><init>(IFI)V

    goto :goto_11

    :cond_14
    sub-long/2addr v13, v6

    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iget-wide v12, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    sub-long/2addr v12, v6

    long-to-float v6, v12

    long-to-float v3, v3

    div-float/2addr v6, v3

    move/from16 v3, v25

    int-to-float v4, v3

    mul-float/2addr v6, v4

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-float v4, v12

    float-to-int v4, v4

    if-le v4, v3, :cond_15

    move v4, v3

    :cond_15
    add-int v7, v11, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    add-int/2addr v11, v3

    if-ge v7, v11, :cond_16

    goto :goto_f

    :cond_16
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_10

    :cond_17
    const/4 v13, -0x1

    :goto_10
    new-instance v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;

    int-to-float v4, v4

    sub-float/2addr v6, v4

    invoke-direct {v3, v7, v6, v13}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;-><init>(IFI)V

    goto :goto_11

    :cond_18
    move/from16 v26, v7

    new-instance v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;

    iget-object v4, v6, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v3, v4, v6, v7}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;-><init>(IFI)V

    :goto_11
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iget v6, v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;->completedChars:I

    const/4 v7, 0x0

    if-lez v6, :cond_19

    invoke-virtual {v9, v7, v6, v4}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    :cond_19
    iget v6, v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;->partialCharIndex:I

    if-ltz v6, :cond_1b

    iget v3, v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$HighlightState;->partialFraction:F

    const/4 v10, 0x0

    cmpl-float v11, v3, v10

    if-lez v11, :cond_1b

    if-ltz v6, :cond_1b

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v6, v10, :cond_1b

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v9, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v9, v6}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->min(FF)F

    move-result v28

    sub-float/2addr v6, v11

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v3, v11, v12}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v3

    mul-float/2addr v3, v6

    add-float v30, v3, v28

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v9, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    int-to-float v6, v6

    sget-object v32, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v27, v4

    move/from16 v29, v3

    move/from16 v31, v6

    invoke-virtual/range {v27 .. v32}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v11, 0x0

    :goto_13
    invoke-virtual {v4}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_14

    :cond_1c
    invoke-virtual {v9}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget v6, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentColor:I

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-virtual {v9, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_15

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :cond_1d
    move v11, v4

    move/from16 v26, v7

    move-object/from16 v8, v22

    const/4 v7, 0x0

    :goto_14
    const/4 v10, 0x0

    goto :goto_15

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v0

    :goto_15
    add-int/lit8 v12, v26, 0x1

    move-object v3, v8

    move v14, v11

    move/from16 v15, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v13, v23

    move/from16 v4, v24

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    goto/16 :goto_5

    :cond_1e
    move/from16 v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->shouldAnimateFrames(Ljava/lang/Float;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_1f
    :goto_16
    return-void

    :cond_20
    :goto_17
    iget-object v2, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_1a

    :cond_21
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->textGravity:I

    iget-object v4, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->labelPaint:Landroid/text/TextPaint;

    const/4 v5, 0x1

    if-eq v3, v5, :cond_23

    const/4 v5, 0x2

    if-eq v3, v5, :cond_22

    int-to-float v2, v2

    iget-object v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    :goto_18
    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_19

    :cond_22
    int-to-float v2, v2

    iget-object v3, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    goto :goto_18

    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v6, v7

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1a
    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroid/view/View;->resolveSize(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightCompat()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v0, p2}, Landroid/view/View;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    return-void
.end method

.method public final rebuildLayouts(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-lez v1, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-nez p1, :cond_4

    iget p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->cachedLayoutWidth:I

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_4

    return-void

    :cond_4
    iput v1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->cachedLayoutWidth:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-object v3, v3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    iget v4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalTextSizePx:F

    invoke-virtual {p0, v3, v4, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->buildLayout(Ljava/lang/String;FI)Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-object v2, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->text:Ljava/lang/String;

    iget v3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTextSizePx:F

    invoke-virtual {p0, v2, v3, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->buildLayout(Ljava/lang/String;FI)Lcom/deepalhome/launcher/music/ttml/TtmlLyricView$LayoutInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->notifyRenderInfo()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final refreshBlurConfig()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->maxBlurRadius:F

    iget-object p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurFilters:[Landroid/graphics/BlurMaskFilter;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([Ljava/lang/Object;Lkotlinx/coroutines/internal/Symbol;)V

    return-void
.end method

.method public final resolveAnchorY()F
    .locals 6

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->anchorLine:I

    const/high16 v1, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightCompat()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    return p0

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    goto :goto_0
.end method

.method public final setAnchorLine(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->anchorLine:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBlurEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurEnabled:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->refreshBlurConfig()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBlurStrategy(Lme/wcy/lrcview/BlurStrategy;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lme/wcy/lrcview/BlurStrategy;->PIXEL:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->blurStrategy:Lme/wcy/lrcview/BlurStrategy;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setBoldEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->boldEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->boldEnabled:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->cachedLayoutWidth:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCurrentColor(I)V
    .locals 1

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentColor:I

    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->labelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setDividerHeightPx(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->dividerHeightPx:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->notifyRenderInfo()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setDrawHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightPx:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->drawHeightPx:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->label:Ljava/lang/String;

    iget-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method

.method public final setLayoutFrozen(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFrozen:Z

    if-nez p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    :cond_0
    return-void
.end method

.method public final setNormalColor(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOnLineRenderInfoListener(Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->renderInfoListener:Lcom/deepalhome/launcher/music/ttml/OnTtmlLineRenderInfoListener;

    return-void
.end method

.method public final setPlaybackState(IJF)V
    .locals 2

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackState:I

    iput p4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackSpeed:F

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorRealtimeMs:J

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->syncPlaybackFrame(Z)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->normalLayouts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLayouts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eq p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->computeBaseLineTops(I)[F

    move-result-object p1

    iget p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    aget p1, p1, p2

    invoke-virtual {p0, p2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->layoutFor(I)Landroid/text/StaticLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/text/Layout;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p2, p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->resolveAnchorY()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->shouldAnimateFrames(Ljava/lang/Float;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final setTextGravity(I)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->textGravity:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->rebuildLayouts(Z)V

    return-void
.end method

.method public final shouldAnimateFrames(Ljava/lang/Float;)Z
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->document:Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricDocument;->lines:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->animatedOffsetPx:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    return v3

    :cond_2
    iget p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackState:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackSpeed:F

    const/4 v2, 0x0

    cmpg-float p1, p1, v2

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-wide p0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;

    iget-wide v4, v0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricLine;->endMs:J

    cmp-long p0, p0, v4

    if-gez p0, :cond_5

    move v1, v3

    :cond_5
    :goto_0
    return v1
.end method

.method public final syncPlaybackFrame(Z)Z
    .locals 8

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorPositionMs:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    iget v4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackState:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackSpeed:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackAnchorRealtimeMs:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v4

    long-to-float v0, v0

    long-to-float v1, v4

    iget v4, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->playbackSpeed:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    float-to-long v0, v1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->findLineIndex(J)I

    move-result v2

    iget v3, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    iget-wide v6, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    cmp-long v6, v0, v6

    if-nez v6, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v4, v5

    :cond_4
    iput-wide v0, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentTimeMs:J

    iput v2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->currentLineIndex:I

    if-nez p1, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->notifyRenderInfo()V

    :cond_6
    return v4
.end method
