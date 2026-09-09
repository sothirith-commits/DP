.class public final Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field public digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field public encField:[B

.field public encGp:[B

.field public encP:[B

.field public k:I

.field public n:I


# virtual methods
.method public final getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;
    .locals 9

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    array-length v2, p0

    const/4 v3, 0x4

    const-string v4, "byte array is not an encoded finite field"

    if-ne v2, v3, :cond_3

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    const/4 v5, 0x2

    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    const/4 v6, 0x3

    aget-byte p0, p0, v6

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v2

    iput p0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result v2

    ushr-int/2addr v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {v5, v5, p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v5

    xor-int/lit8 v6, v5, 0x2

    move v7, v6

    move v6, p0

    :goto_1
    if-eqz v6, :cond_0

    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->remainder(II)I

    move-result v7

    move v8, v7

    move v7, v6

    move v6, v8

    goto :goto_1

    :cond_0
    if-ne v7, v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->degree(I)I

    move-result p0

    iput p0, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
