.class public final Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final cornerRadius:F

.field public final drawRect:Landroid/graphics/RectF;

.field public final paint:Landroid/graphics/Paint;

.field public final shader:Landroid/graphics/BitmapShader;

.field public final shaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;F)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->drawRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->cornerRadius:F

    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->paint:Landroid/graphics/Paint;

    iget p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->cornerRadius:F

    invoke-virtual {p1, v0, p0, p0, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->shader:Landroid/graphics/BitmapShader;

    invoke-virtual {p0, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/view/DragLinearLayout$ExactRoundedBitmapDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
