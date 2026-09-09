.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static degree(I)I
    .locals 1

    const/4 v0, -0x1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static modMultiply(III)I
    .locals 4

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result p0

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    :cond_0
    :goto_0
    if-eqz p0, :cond_2

    and-int/lit8 v3, p0, 0x1

    int-to-byte v3, v3

    if-ne v3, v2, :cond_1

    xor-int/2addr v0, p1

    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    shl-int/lit8 p1, p1, 0x1

    if-lt p1, v1, :cond_0

    xor-int/2addr p1, p2

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static remainder(II)I
    .locals 2

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Error: to be divided by 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr p0, v0

    goto :goto_0

    :cond_1
    return p0
.end method
