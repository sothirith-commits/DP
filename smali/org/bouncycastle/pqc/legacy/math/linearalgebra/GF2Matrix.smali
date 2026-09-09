.class public final Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;
.super Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;
.source "SourceFile"


# instance fields
.field public length:I

.field public matrix:[[I


# direct methods
.method public constructor <init>([B)V
    .locals 9

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    array-length v0, p1

    const/16 v1, 0x9

    const-string v2, "given array is not an encoded matrix over GF(2)"

    if-lt v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v3, v1, 0x7

    ushr-int/lit8 v3, v3, 0x3

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v3, v4

    if-lez v4, :cond_3

    array-length v5, p1

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_3

    add-int/lit8 v1, v1, 0x1f

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput v4, v2, v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v3, v0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    invoke-static {p1, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v7

    aput v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_2
    if-ge v4, v1, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v5, v5, v3

    aget v7, v5, v2

    add-int/lit8 v8, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v4

    xor-int/2addr v6, v7

    aput v6, v5, v2

    add-int/lit8 v4, v4, 0x8

    move v6, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v2, v2, v0

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public final getEncoded()[B
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/2addr v0, v1

    const/16 v2, 0x8

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    const/4 v4, 0x4

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    ushr-int/lit8 v4, v1, 0x5

    and-int/lit8 v1, v1, 0x1f

    move v5, v3

    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v5, v6, :cond_2

    move v6, v3

    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    if-ge v6, v4, :cond_0

    aget-object v7, v7, v5

    aget v7, v7, v6

    invoke-static {v7, v0, v2}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_1

    add-int/lit8 v8, v2, 0x1

    aget-object v9, v7, v5

    aget v9, v9, v4

    ushr-int/2addr v9, v6

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    add-int/lit8 v6, v6, 0x8

    move v2, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v2, v3, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    move v5, v1

    goto :goto_2

    :cond_0
    array-length v4, v3

    add-int/lit8 v5, v4, 0x1

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    mul-int/lit16 v5, v5, 0x101

    aget v6, v3, v4

    xor-int/2addr v5, v6

    goto :goto_1

    :cond_1
    :goto_2
    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    and-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, -0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v5, v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v6, v4

    :goto_2
    const/16 v7, 0x31

    const/16 v8, 0x30

    iget-object v9, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    if-ge v6, v2, :cond_3

    aget-object v9, v9, v5

    aget v9, v9, v6

    move v10, v4

    :goto_3
    const/16 v11, 0x20

    if-ge v10, v11, :cond_2

    ushr-int v11, v9, v10

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_1
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    aget-object v6, v9, v5

    add-int/lit8 v9, v1, -0x1

    aget v6, v6, v9

    move v9, v4

    :goto_5
    if-ge v9, v0, :cond_5

    ushr-int v10, v6, v9

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
