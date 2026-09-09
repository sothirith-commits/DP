.class public final Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$McElieceCCA2Converter;
.super Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$McElieceCCA2Converter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/chad/library/adapter4/loadState/LoadState;
    .locals 7

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    instance-of p1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    if-eqz p1, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    new-instance p1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->n:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;-><init>(Ljava/lang/String;Z)V

    iput v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->n:I

    iget v0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->t:I

    iput v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->t:I

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PublicKey;->g:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    iget-object p0, p0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v1, p0

    new-array v1, v1, [[I

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    move v1, v2

    :goto_1
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v4, p0, v1

    array-length v5, v4

    new-array v5, v5, [I

    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v0, p1, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PublicKeyParameters;->matrixG:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    return-object p1
.end method
