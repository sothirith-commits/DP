.class public final Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;
.super Ljava/security/SecureRandom;
.source "SourceFile"


# instance fields
.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:[B

.field private seed:[B

.field private v:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/digests/LongDigest;)V
    .locals 9

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v0, p1

    const/16 v1, 0x10

    const/16 v2, 0x20

    const/16 v3, 0x30

    const/4 v4, 0x0

    if-lt v0, v3, :cond_0

    new-array p2, v3, [B

    invoke-static {p1, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    goto/16 :goto_2

    :cond_0
    array-length v0, p1

    rsub-int/lit8 v0, v0, 0x30

    invoke-interface {p2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    array-length v6, p1

    invoke-virtual {p2, v4, p1, v6}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(I[BI)V

    new-array p1, v5, [B

    invoke-interface {p2, p1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, v5, :cond_2

    new-array p2, v0, [B

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    goto :goto_1

    :cond_2
    new-array v6, v5, [B

    invoke-static {v5, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {p1, v4, v6, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    sub-int/2addr v0, v5

    if-lt v0, v5, :cond_3

    invoke-virtual {p2, v4, p1, v5}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(I[BI)V

    new-array p1, v5, [B

    invoke-interface {p2, p1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v6, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v6

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    invoke-virtual {p2, v4, p1, v5}, Lorg/bouncycastle/crypto/digests/LongDigest;->update(I[BI)V

    new-array p1, v5, [B

    invoke-interface {p2, p1, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length p2, v6

    add-int v5, p2, v0

    new-array v7, v5, [B

    array-length v8, v6

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v4, v7, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v7

    goto :goto_1

    :cond_4
    move-object p1, v6

    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-static {p2, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p1

    new-array p2, v3, [B

    invoke-static {p1, v4, p2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v2, [B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-static {p2, p1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    :goto_2
    return-void
.end method

.method public static AES256_CTR_DRBG_Update([B[B[B)V
    .locals 8

    const/16 v0, 0x30

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    const/16 v4, 0xf

    :goto_1
    if-ltz v4, :cond_1

    aget-byte v5, p2, v4

    and-int/lit16 v6, v5, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    aput-byte v2, p2, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    :cond_1
    mul-int/lit8 v4, v3, 0x10

    invoke-static {p1, p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    aget-byte v4, v1, v3

    aget-byte v5, p0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    array-length p0, p1

    invoke-static {v1, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p2

    const/16 p1, 0x20

    invoke-static {v1, p1, p2, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static AES256_ECB([B[B[BI)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance v1, Lcom/umeng/analytics/pro/ah;

    array-length v2, p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-array v3, v2, [B

    iput-object v3, v1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(Lcom/umeng/analytics/pro/ah;)V

    :goto_0
    array-length p0, p1

    if-eq v4, p0, :cond_0

    add-int p0, p3, v4

    invoke-virtual {v0, p1, v4, p2, p0}, Lorg/bouncycastle/crypto/engines/AESEngine;->processBlock([BI[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "drbg failure: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final nextBytes([B)V
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [B

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lez v2, :cond_3

    const/16 v5, 0xf

    move v6, v5

    :goto_1
    if-ltz v6, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v8, v7, v6

    and-int/lit16 v9, v8, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_0

    aput-byte v3, v7, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-static {v6, v7, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    if-le v2, v5, :cond_2

    invoke-static {v1, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v2, -0x10

    goto :goto_0

    :cond_2
    invoke-static {v1, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    const/4 v0, 0x0

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method
