.class public final Leightbitlab/com/blurview/PreDrawBlurController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leightbitlab/com/blurview/BlurController;


# instance fields
.field public final blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

.field public blurEnabled:Z

.field public blurRadius:F

.field public final blurView:Leightbitlab/com/blurview/BlurView;

.field public final blurViewLocation:[I

.field public final drawListener:Leightbitlab/com/blurview/PreDrawBlurController$1;

.field public initialized:Z

.field public internalBitmap:Landroid/graphics/Bitmap;

.field public internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

.field public overlayColor:I

.field public final rootLocation:[I

.field public final rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;ILeightbitlab/com/blurview/BlurAlgorithm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    new-instance v0, Leightbitlab/com/blurview/PreDrawBlurController$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Leightbitlab/com/blurview/PreDrawBlurController$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Leightbitlab/com/blurview/PreDrawBlurController$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    iput-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iput p3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    iput-object p4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    instance-of p2, p4, Leightbitlab/com/blurview/RenderEffectBlur;

    if-eqz p2, :cond_0

    check-cast p4, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p4, Leightbitlab/com/blurview/RenderEffectBlur;->context:Landroid/content/Context;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->destroy()V

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)Z
    .locals 4

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Leightbitlab/com/blurview/BlurViewCanvas;

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2, p1}, Leightbitlab/com/blurview/BlurAlgorithm;->render(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget p0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final init(II)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p2, p2

    const/high16 v2, 0x40c00000    # 6.0f

    div-float v3, p2, v2

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    if-eqz v3, :cond_2

    int-to-float p1, p1

    div-float v2, p1, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    rem-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x40

    :goto_0
    int-to-float v3, v2

    div-float/2addr p1, v3

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-interface {v1}, Leightbitlab/com/blurview/BlurAlgorithm;->getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    invoke-static {v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    new-instance p1, Leightbitlab/com/blurview/BlurViewCanvas;

    iget-object p2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    iput-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    invoke-virtual {p0}, Leightbitlab/com/blurview/PreDrawBlurController;->updateBlur()V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method public final setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;
    .locals 3

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->drawListener:Leightbitlab/com/blurview/PreDrawBlurController$1;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-object p0
.end method

.method public final setBlurEnabled(Z)Leightbitlab/com/blurview/BlurController;
    .locals 0

    iput-boolean p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    invoke-virtual {p0, p1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-object p0
.end method

.method public final setBlurRadius(F)Leightbitlab/com/blurview/BlurController;
    .locals 0

    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    return-object p0
.end method

.method public final setOverlayColor(I)Leightbitlab/com/blurview/BlurController;
    .locals 1

    iget v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->overlayColor:I

    iget-object p1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-object p0
.end method

.method public final updateBlur()V
    .locals 6

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->initialized:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->rootLocation:[I

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    iget-object v4, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurViewLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v4, v1

    aget v1, v2, v1

    sub-int/2addr v5, v1

    const/4 v1, 0x1

    aget v4, v4, v1

    aget v1, v2, v1

    sub-int/2addr v4, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    neg-int v3, v5

    int-to-float v3, v3

    div-float/2addr v3, v2

    neg-int v4, v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v5, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    div-float/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalCanvas:Leightbitlab/com/blurview/BlurViewCanvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    iget-object v2, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurAlgorithm:Leightbitlab/com/blurview/BlurAlgorithm;

    invoke-interface {v2, v0, v1}, Leightbitlab/com/blurview/BlurAlgorithm;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->internalBitmap:Landroid/graphics/Bitmap;

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateBlurViewSize()V
    .locals 2

    iget-object v0, p0, Leightbitlab/com/blurview/PreDrawBlurController;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Leightbitlab/com/blurview/PreDrawBlurController;->init(II)V

    return-void
.end method
