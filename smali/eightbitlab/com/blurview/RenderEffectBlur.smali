.class public final Leightbitlab/com/blurview/RenderEffectBlur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leightbitlab/com/blurview/BlurAlgorithm;


# instance fields
.field public context:Landroid/content/Context;

.field public fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

.field public height:I

.field public lastBlurRadius:F

.field public final node:Landroid/graphics/RenderNode;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "BlurViewNode"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    return-void
.end method


# virtual methods
.method public final blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    iput p2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    iget-object v2, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->width:I

    iget p0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->height:I

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1, v0, p0}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    sget-object p0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, p0}, Landroidx/core/view/ContentInfoCompat$$ExternalSyntheticApiModelOutline0;->m(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/core/view/ContentInfoCompat$$ExternalSyntheticApiModelOutline0;->m(Landroid/graphics/RenderNode;Landroid/graphics/RenderEffect;)V

    return-object p1
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {v0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    iget-object p0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Leightbitlab/com/blurview/RenderScriptBlur;->destroy()V

    :cond_0
    return-void
.end method

.method public final getSupportedBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 0

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object p0
.end method

.method public final render(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->node:Landroid/graphics/RenderNode;

    invoke-virtual {p2, p0}, Landroid/graphics/Canvas;->drawRenderNode(Landroid/graphics/RenderNode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

    if-nez v0, :cond_1

    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

    :cond_1
    iget-object v0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

    iget v1, p0, Leightbitlab/com/blurview/RenderEffectBlur;->lastBlurRadius:F

    invoke-virtual {v0, p1, v1}, Leightbitlab/com/blurview/RenderScriptBlur;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    iget-object p0, p0, Leightbitlab/com/blurview/RenderEffectBlur;->fallbackAlgorithm:Leightbitlab/com/blurview/RenderScriptBlur;

    iget-object p0, p0, Leightbitlab/com/blurview/RenderScriptBlur;->paint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method
