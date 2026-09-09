.class public final synthetic Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    sget v0, Lcom/deepalhome/launcher/floating/GifTextureView;->$r8$clinit:I

    const-string v0, "decoder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "info"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/deepalhome/launcher/floating/GifTextureView$$ExternalSyntheticLambda3;->f$0:I

    int-to-float p0, p0

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    int-to-float p3, p3

    div-float p3, p0, p3

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_1

    move v1, v0

    :cond_1
    int-to-float v1, v1

    div-float/2addr p0, v1

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p3, 0x3f800000    # 1.0f

    cmpg-float p3, p0, p3

    if-gez p3, :cond_4

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p0

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p3

    if-ge p3, v0, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    if-ge p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    invoke-virtual {p1, p3, v0}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_4
    return-void
.end method
