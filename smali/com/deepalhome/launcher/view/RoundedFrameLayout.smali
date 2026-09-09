.class public final Lcom/deepalhome/launcher/view/RoundedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private cornerRadii:[F

.field private cornerRadius:F

.field private lastHeight:I

.field private lastWidth:I

.field private maskBitmap:Landroid/graphics/Bitmap;

.field private final maskPaint$delegate:Lkotlin/Lazy;

.field private final rectF:Landroid/graphics/RectF;

.field private final tempPath:Landroid/graphics/Path;

.field private final xferPaint$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->tempPath:Landroid/graphics/Path;

    sget-object p1, Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;->INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$maskPaint$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskPaint$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;->INSTANCE:Lcom/deepalhome/launcher/view/RoundedFrameLayout$xferPaint$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->xferPaint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final ensureMask()Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadii:[F

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->recycleMaskBitmap()V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->recycleMaskBitmap()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v2, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadii:[F

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->tempPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->tempPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->tempPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->rectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->getMaskPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastHeight:I

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private final getMaskPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getXferPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->xferPaint$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final invalidateMask()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastWidth:I

    iput v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastHeight:I

    return-void
.end method

.method private final recycleMaskBitmap()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->maskBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private final updateLayerType()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadii:[F

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadii:[F

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->ensureMask()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->getXferPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    return p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->invalidateMask()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->recycleMaskBitmap()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastWidth:I

    iput v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->lastHeight:I

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->invalidateMask()V

    return-void
.end method

.method public final setCornerRadii(FFFF)V
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x2

    aput p2, v0, p1

    const/4 p1, 0x3

    aput p2, v0, p1

    const/4 p1, 0x4

    aput p3, v0, p1

    const/4 p1, 0x5

    aput p3, v0, p1

    const/4 p1, 0x6

    aput p4, v0, p1

    const/4 p1, 0x7

    aput p4, v0, p1

    iput-object v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadii:[F

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->updateLayerType()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->invalidateMask()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCornerRadius(F)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->cornerRadius:F

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->updateLayerType()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/RoundedFrameLayout;->invalidateMask()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
