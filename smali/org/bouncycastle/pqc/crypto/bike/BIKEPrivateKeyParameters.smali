.class public final Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public h0:[B

.field public h1:[B

.field public sigma:[B


# virtual methods
.method public final getEncoded()[B
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    if-nez v0, :cond_0

    invoke-static {v1, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object p0

    goto :goto_0

    :cond_2
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    array-length v3, p0

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    :goto_0
    return-object p0
.end method
