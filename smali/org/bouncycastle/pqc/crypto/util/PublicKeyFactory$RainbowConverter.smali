.class public final Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;
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

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$RainbowConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/chad/library/adapter4/loadState/LoadState;
    .locals 12

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    const/4 v2, 0x1

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:I

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v3, v2, :cond_3

    new-array v3, v5, [I

    iget v5, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    aput v5, v3, v4

    aput v5, v3, v2

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    aput p1, v3, v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[S

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v5, :cond_4

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_2

    move v6, v1

    :goto_2
    if-ge v6, p1, :cond_1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    if-le v2, v4, :cond_0

    aget-object v7, v7, v6

    aget-object v7, v7, v2

    aput-short v1, v7, v4

    goto :goto_3

    :cond_0
    aget-object v7, v7, v6

    aget-object v7, v7, v2

    aget-byte v8, p0, v3

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v7, v4

    add-int/lit8 v3, v3, 0x1

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x20

    invoke-static {v1, p0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v6

    iput-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    new-array v6, v5, [I

    iget v7, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    aput v7, v6, v4

    iget v8, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    aput v8, v6, v2

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    aput p1, v6, v1

    sget-object v8, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[S

    iput-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    new-array v9, v5, [I

    aput p1, v9, v4

    aput p1, v9, v2

    aput p1, v9, v1

    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[S

    iput-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    new-array v10, v5, [I

    aput v7, v10, v4

    aput p1, v10, v2

    aput p1, v10, v1

    invoke-static {v8, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[S

    iput-object v10, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    new-array v11, v5, [I

    aput v7, v11, v4

    aput v7, v11, v2

    aput p1, v11, v1

    invoke-static {v8, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[[S

    iput-object p1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    new-array v5, v5, [I

    aput v7, v5, v4

    aput v7, v5, v2

    aput v7, v5, v1

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v6, p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v9, p0, v5, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v10, p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {p1, p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {v4, p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v1, p1

    array-length p0, p0

    if-ne v1, p0, :cond_5

    :cond_4
    return-object v0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unparsed data in key encoding"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
