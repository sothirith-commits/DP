.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public degree:I

.field public polynomial:I


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    iget p1, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    return p0
.end method

.method public final inverse(I)I
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    if-gez v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result p1

    neg-int v0, v0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v0, :cond_5

    and-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-ne v3, v1, :cond_4

    invoke-static {v2, p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v2

    :cond_4
    invoke-static {p1, p1, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result p1

    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method public final isElementOfThisField(I)Z
    .locals 3

    const/16 v0, 0x1f

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-ne p0, v0, :cond_1

    if-ltz p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ltz p1, :cond_2

    shl-int p0, v2, p0

    if-ge p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Finite Field GF(2^"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") = GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-nez p0, :cond_0

    const-string p0, "0"

    goto :goto_2

    :cond_0
    and-int/lit8 v1, p0, 0x1

    int-to-byte v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    ushr-int/2addr p0, v2

    move v3, v2

    :goto_1
    if-eqz p0, :cond_3

    and-int/lit8 v4, p0, 0x1

    int-to-byte v4, v4

    if-ne v4, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+x^"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_2
    const-string v1, "> "

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
