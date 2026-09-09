.class public final Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field public final digest:Lorg/bouncycastle/crypto/Digest;

.field public final digestSize:I


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/xmss/DigestUtil;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "digest == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    return-void
.end method


# virtual methods
.method public PRF([B[B)[B
    .locals 2

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne v0, v1, :cond_1

    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest([BI[B)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong address length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public coreDigest([BI[B)[B
    .locals 3

    int-to-long v0, p2

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->toBytesBigEndian(IJ)[B

    move-result-object v0

    array-length v1, v0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    array-length v0, p1

    invoke-interface {p0, v2, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    array-length p1, p3

    invoke-interface {p0, v2, p3, p1}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    new-array p1, p2, [B

    instance-of p3, p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    if-eqz p3, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-virtual {p0, v2, p1, p2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal(I[BI)I

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    return-object p1
.end method

.method public doFinal([BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    invoke-static {v1, v2, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDigestSize()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    return p0
.end method

.method public update(B)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update(I[BI)V
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    return-void
.end method
