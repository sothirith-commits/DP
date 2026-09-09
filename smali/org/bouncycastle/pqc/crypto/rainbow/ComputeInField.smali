.class public final Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMatrix([[S[[S)[[S
    .locals 9

    const/4 v0, 0x1

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    aget-object v4, p1, v1

    array-length v4, v4

    if-ne v3, v4, :cond_2

    array-length v3, p0

    array-length v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v0

    aput v3, v4, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    move v3, v1

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    move v4, v1

    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, v2, v3

    aget-object v6, p0, v3

    aget-short v6, v6, v4

    aget-object v7, p1, v3

    aget-short v7, v7, v4

    sget-object v8, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/2addr v4, v0

    goto :goto_1

    :cond_0
    add-int/2addr v3, v0

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Addition is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addMatrixTranspose([[S)[[S
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->transpose([[S)[[S

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Addition is not possible!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static multiplyMatrix([[S[[S)[[S
    .locals 8

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_3

    array-length v1, p0

    aget-object v2, p1, v0

    array-length v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    move v3, v0

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_1

    move v4, v0

    :goto_2
    aget-object v5, p1, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    aget-object v6, p1, v3

    aget-short v6, v6, v4

    sget-object v7, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v5, v7, v5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aget-object v6, v1, v2

    aget-short v7, v6, v4

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication is not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static obfuscate_l1_polys([[S[[[S[[[S)[[[S
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v3, v2

    aget-object v4, p2, v1

    array-length v5, v4

    if-ne v3, v5, :cond_4

    aget-object v2, v2, v1

    array-length v2, v2

    aget-object v3, v4, v1

    array-length v5, v3

    if-ne v2, v5, :cond_4

    array-length v2, p1

    aget-object v5, p0, v1

    array-length v5, v5

    if-ne v2, v5, :cond_4

    array-length v2, p2

    array-length v5, p0

    if-ne v2, v5, :cond_4

    array-length v2, p2

    array-length v4, v4

    array-length v3, v3

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x2

    aput v3, v5, v6

    aput v4, v5, v0

    aput v2, v5, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[S

    move v3, v1

    :goto_0
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_3

    move v4, v1

    :goto_1
    aget-object v5, p1, v1

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_2

    move v5, v1

    :goto_2
    array-length v6, p0

    if-ge v5, v6, :cond_1

    move v6, v1

    :goto_3
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_0

    aget-object v7, p0, v5

    aget-short v7, v7, v6

    aget-object v8, p1, v6

    aget-object v8, v8, v3

    aget-short v8, v8, v4

    sget-object v9, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v7, v9, v7

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    aget-object v8, v2, v5

    aget-object v8, v8, v3

    aget-short v9, v8, v4

    xor-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, v8, v4

    add-int/2addr v6, v0

    goto :goto_3

    :cond_0
    aget-object v6, v2, v5

    aget-object v6, v6, v3

    aget-object v7, p2, v5

    aget-object v7, v7, v3

    aget-short v7, v7, v4

    aget-short v8, v6, v4

    sget-object v9, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    xor-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v6, v4

    add-int/2addr v5, v0

    goto :goto_2

    :cond_1
    add-int/2addr v4, v0

    goto :goto_1

    :cond_2
    add-int/2addr v3, v0

    goto :goto_0

    :cond_3
    return-object v2

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Multiplication not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transpose([[S)[[S
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    array-length v2, p0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    aput v1, v3, v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    move v3, v0

    :goto_1
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, p0, v2

    aget-short v5, v5, v3

    aput-short v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
