.class public final Lcom/deepalhome/launcher/view/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private bottomShader:Landroid/graphics/LinearGradient;

.field private fadeBottomHeight:F

.field private final fadePaint:Landroid/graphics/Paint;

.field private fadeTopHeight:F

.field private lastHeight:I

.field private lastWidth:I

.field private topShader:Landroid/graphics/LinearGradient;


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

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->updateLayerType()V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final updateLayerType()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    const-string v0, "canvas"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastWidth:I

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastHeight:I

    if-eq v0, v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastHeight:I

    iput-object v3, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    iput-object v3, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/LinearGradient;

    iget v8, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v9, -0x1000000

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    :cond_4
    iget-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v7, v2

    iget v8, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    iget-object v9, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    iget v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v8, v4

    const/high16 v10, -0x1000000

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move v6, v1

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    :cond_6
    iget-object v2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v7, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v8, v2

    iget-object v9, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object p0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadePaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    if-ltz v0, :cond_8

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    iput-object v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastWidth:I

    iput v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->lastHeight:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFadeEdges(FF)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    cmpg-float v0, v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeTopHeight:F

    iput p2, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->fadeBottomHeight:F

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->topShader:Landroid/graphics/LinearGradient;

    iput-object p1, p0, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->bottomShader:Landroid/graphics/LinearGradient;

    invoke-direct {p0}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->updateLayerType()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_0
    return-void
.end method
