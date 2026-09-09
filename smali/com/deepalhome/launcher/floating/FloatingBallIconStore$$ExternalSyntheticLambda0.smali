.class public final synthetic Lcom/deepalhome/launcher/floating/FloatingBallIconStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/floating/FloatingBallIconStore;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    iput p2, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 4

    const-string v0, "$this_runCatching"

    iget-object v1, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "decoder"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "info"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "<anonymous parameter 2>"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    if-ge p2, v0, :cond_1

    move p2, v0

    :cond_1
    iget p0, p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    int-to-float v1, p3

    div-float v2, p0, v1

    int-to-float v3, p2

    div-float/2addr p0, v3

    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    mul-float/2addr v1, p0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    if-ge p2, v0, :cond_3

    move p2, v0

    :cond_3
    mul-float/2addr v3, p0

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    if-ge p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move v0, p0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance p3, Lkotlin/Pair;

    invoke-direct {p3, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    return-void
.end method
