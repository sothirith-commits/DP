.class public final Lorg/bouncycastle/pqc/crypto/util/PrivateKeyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createKey(Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;)Lcom/chad/library/adapter4/loadState/LoadState;
    .locals 33

    move-object/from16 v0, p0

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-eqz v0, :cond_6e

    iget-object v7, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privateKeyAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v8, v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v9, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->qTESLA:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    const/4 v10, 0x6

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/util/Utils;->categories:Ljava/util/HashMap;

    iget-object v4, v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v1, v6}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    array-length v4, v0

    if-eq v2, v3, :cond_1

    if-ne v2, v10, :cond_0

    const/16 v3, 0x3068

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown security category: "

    invoke-static {v1, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v3, 0x1468

    :goto_0
    if-ne v4, v3, :cond_2

    iput v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->securityCategory:I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->privateKey:[B

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid key size for security category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v9, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    iget-object v7, v7, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->parameters:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v9, :cond_4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v7}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;->getInstance(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgName(Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;-><init>(Ljava/lang/String;[B)V

    return-object v1

    :cond_4
    sget-object v9, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    const/4 v11, 0x0

    if-eqz v9, :cond_6

    new-instance v1, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v3, v0

    div-int/2addr v3, v2

    new-array v4, v3, [S

    :goto_1
    if-eq v11, v3, :cond_5

    mul-int/lit8 v7, v11, 0x2

    aget-byte v8, v0, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v6

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v4, v11

    add-int/2addr v11, v6

    goto :goto_1

    :cond_5
    invoke-direct {v1, v4}, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;-><init>([S)V

    return-object v1

    :cond_6
    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    iget-object v12, v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->publicKey:Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v13, 0x4

    if-eqz v9, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v0, v11}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    if-ne v1, v6, :cond_8

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v13, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v13, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    return-object v0

    :cond_7
    array-length v1, v0

    invoke-static {v13, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v1

    array-length v2, v0

    invoke-static {v13, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    move-result-object v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/HSSPublicKeyParameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :cond_9
    array-length v1, v0

    invoke-static {v13, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    move-result-object v0

    return-object v0

    :cond_a
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-nez v9, :cond_6c

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->sphincsPlus_interop:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto/16 :goto_32

    :cond_b
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->picnic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;[B)V

    return-object v2

    :cond_c
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_mceliece:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    const-string v14, "unrecognized version"

    const/4 v15, 0x3

    const/4 v4, 0x0

    if-eqz v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v5, v0, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    if-eqz v5, :cond_d

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    goto/16 :goto_2

    :cond_d
    if-eqz v0, :cond_f

    new-instance v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5

    iput v5, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->version:I

    if-nez v5, :cond_e

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iput-object v5, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->delta:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->C:[B

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->g:[B

    invoke-virtual {v0, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->alpha:[B

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->s:[B

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ne v2, v1, :cond_f

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;

    move-result-object v0

    iput-object v0, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_2
    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceParams:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->delta:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->C:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v8

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->g:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->alpha:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v10

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->s:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v11

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B[B[B[B[B)V

    return-object v0

    :cond_10
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_frodo:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    invoke-direct {v2, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->privateKey:[B

    return-object v2

    :cond_11
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_saber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    invoke-direct {v2, v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->privateKey:[B

    return-object v2

    :cond_12
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntru:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;[B)V

    return-object v2

    :cond_13
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_kyber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->kyberParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    return-object v2

    :cond_14
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_ntrulprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruprimeParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object v3, v3, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;[B[B[B[B)V

    return-object v1

    :cond_15
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_sntruprime:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    iget-object v3, v3, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-virtual {v0, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v2

    move-object/from16 v21, v5

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v22}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;[B[B[B[B[B)V

    return-object v1

    :cond_16
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-nez v9, :cond_66

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium3:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-nez v9, :cond_66

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->dilithium5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_17

    goto/16 :goto_31

    :cond_17
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-nez v9, :cond_5f

    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_18

    goto/16 :goto_2e

    :cond_18
    sget-object v9, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_bike:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v3, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeParams:Ljava/util/HashMap;

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    invoke-static {v11, v0, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v4

    iget v7, v3, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    add-int/lit8 v8, v7, 0x7

    div-int/2addr v8, v5

    add-int/2addr v7, v1

    div-int/2addr v7, v5

    mul-int/2addr v7, v2

    invoke-static {v8, v0, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v7

    iget v8, v3, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    add-int/2addr v8, v1

    div-int/2addr v8, v5

    mul-int/2addr v8, v2

    array-length v1, v0

    invoke-static {v8, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    invoke-direct {v1, v3, v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h0:[B

    invoke-static {v7}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->h1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->sigma:[B

    return-object v1

    :cond_19
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->pqc_kem_hqc:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->sk:[B

    return-object v2

    :cond_1a
    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->on(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V

    return-object v2

    :cond_1b
    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    const-string v9, "ClassNotFoundException processing BDS state: "

    if-eqz v1, :cond_20

    invoke-static {v7}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->getInstance(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->treeDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    if-eqz v3, :cond_1c

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    goto :goto_3

    :cond_1c
    if-eqz v0, :cond_1d

    new-instance v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    :cond_1d
    :goto_3
    :try_start_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;->height:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;-><init>(ILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;)V

    iget v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->index:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->bdsState:[B

    :try_start_1
    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->index:I

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->secretKeySeed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeySeed:Ljava/io/Serializable;

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->secretKeyPRF:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->publicSeed:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->root:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->root:Ljava/lang/Object;

    iget v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->version:I

    if-eqz v1, :cond_1e

    iget v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;->maxIndex:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->maxIndex:I

    :cond_1e
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/BDS;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_1f
    :goto_4
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters$Builder;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :goto_5
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {v7}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->getInstance(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    move-result-object v1

    iget-object v2, v1, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->treeDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v2, v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v3, v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    if-eqz v3, :cond_21

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    goto :goto_6

    :cond_21
    if-eqz v0, :cond_22

    new-instance v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    :cond_22
    :goto_6
    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget v5, v1, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->height:I

    iget v1, v1, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;->layers:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v6

    invoke-direct {v3, v5, v1, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;-><init>(IILorg/bouncycastle/crypto/Digest;)V

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;)V

    iget-wide v6, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->index:J
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->bdsState:[B

    :try_start_3
    iput-wide v6, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->index:J

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeySeed:[B

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeySeed:Ljava/lang/Object;

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->secretKeyPRF:[B

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->secretKeyPRF:Ljava/io/Serializable;

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->publicSeed:[B

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->publicSeed:Ljava/io/Serializable;

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->root:[B

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([B)[B

    move-result-object v3

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->root:Ljava/io/Serializable;

    iget v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->version:I

    if-eqz v3, :cond_23

    iget-wide v3, v4, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;->maxIndex:J

    iput-wide v3, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->maxIndex:J

    :cond_23
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    const-class v3, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->withWOTSDigest(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    move-result-object v1

    iget-wide v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->maxIndex:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_24

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    const-wide/16 v3, 0x1

    shl-long v5, v3, v5

    sub-long/2addr v5, v3

    invoke-direct {v2, v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;J)V

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    goto :goto_7

    :cond_24
    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;->bdsState:Ljava/lang/Object;

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_25
    :goto_7
    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters$Builder;)V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v1

    :goto_8
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_26
    sget-object v1, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    if-eqz v1, :cond_27

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    goto :goto_9

    :cond_27
    if-eqz v0, :cond_28

    new-instance v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    iput v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    invoke-virtual {v0, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v1

    iput v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    iput-object v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    iput-object v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    invoke-virtual {v0, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    iget-object v1, v1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    iput-object v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :cond_28
    :goto_9
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    iget v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->getField()Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move-result-object v9

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v9, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    move v10, v5

    move v12, v6

    :goto_a
    iget v14, v9, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-le v14, v10, :cond_29

    add-int/2addr v12, v6

    add-int/2addr v10, v5

    goto :goto_a

    :cond_29
    iget-object v9, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    array-length v14, v9

    rem-int/2addr v14, v12

    const-string v15, " Error: byte array is not encoded polynomial over given finite field GF2m"

    if-nez v14, :cond_5d

    array-length v14, v9

    div-int/2addr v14, v12

    new-array v12, v14, [I

    iput-object v12, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    move v12, v11

    move v14, v12

    :goto_b
    iget-object v3, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v2, v3

    if-ge v12, v2, :cond_2c

    move v2, v11

    :goto_c
    if-ge v2, v10, :cond_2a

    iget-object v3, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v19, v3, v12

    add-int/lit8 v20, v14, 0x1

    aget-byte v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v2

    xor-int v14, v19, v14

    aput v14, v3, v12

    add-int/2addr v2, v5

    move/from16 v14, v20

    goto :goto_c

    :cond_2a
    iget-object v2, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v3, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v3, v3, v12

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    add-int/2addr v12, v6

    const/4 v2, 0x2

    goto :goto_b

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    array-length v2, v3

    if-eq v2, v6, :cond_2e

    array-length v2, v3

    sub-int/2addr v2, v6

    aget v2, v3, v2

    if-eqz v2, :cond_2d

    goto :goto_d

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_d
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    array-length v9, v3

    const-string v10, "invalid encoding"

    if-le v9, v13, :cond_5c

    invoke-static {v3, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->OS2IP([BI)I

    move-result v9

    add-int/lit8 v12, v9, -0x1

    sget v14, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->$r8$clinit:I

    if-nez v12, :cond_2f

    move v14, v6

    goto :goto_f

    :cond_2f
    if-gez v12, :cond_30

    neg-int v12, v12

    :cond_30
    move v14, v11

    :goto_e
    if-lez v12, :cond_31

    add-int/2addr v14, v6

    ushr-int/2addr v12, v5

    goto :goto_e

    :cond_31
    :goto_f
    array-length v12, v3

    mul-int v15, v9, v14

    add-int/2addr v15, v13

    if-ne v12, v15, :cond_5b

    new-array v12, v9, [I

    iput-object v12, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    move v12, v11

    :goto_10
    if-ge v12, v9, :cond_33

    iget-object v15, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    mul-int v19, v12, v14

    add-int/lit8 v19, v19, 0x4

    add-int/lit8 v20, v14, -0x1

    move/from16 v21, v11

    :goto_11
    if-ltz v20, :cond_32

    add-int v22, v19, v20

    aget-byte v13, v3, v22

    and-int/lit16 v13, v13, 0xff

    mul-int/lit8 v22, v20, 0x8

    shl-int v13, v13, v22

    or-int v21, v21, v13

    const/4 v13, -0x1

    add-int/lit8 v20, v20, -0x1

    const/4 v13, 0x4

    goto :goto_11

    :cond_32
    aput v21, v15, v12

    add-int/2addr v12, v6

    const/4 v13, 0x4

    goto :goto_10

    :cond_33
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v5, v3

    new-array v9, v5, [Z

    move v12, v11

    :goto_12
    if-ge v12, v5, :cond_35

    aget v13, v3, v12

    if-ltz v13, :cond_34

    if-ge v13, v5, :cond_34

    aget-boolean v14, v9, v13

    if-nez v14, :cond_34

    aput-boolean v6, v9, v13

    add-int/2addr v12, v6

    goto :goto_12

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v3, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getDigestName(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v3

    iget v5, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    shl-int v9, v6, v5

    iget-object v10, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v12, v10

    sub-int/2addr v12, v6

    aget v10, v10, v12

    if-nez v10, :cond_36

    const/4 v10, 0x2

    const/4 v12, -0x1

    goto :goto_13

    :cond_36
    const/4 v10, 0x2

    :goto_13
    new-array v13, v10, [I

    aput v9, v13, v6

    aput v12, v13, v11

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    new-array v15, v10, [I

    aput v9, v15, v6

    aput v12, v15, v11

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    move v14, v11

    :goto_14
    if-ge v14, v9, :cond_38

    aget-object v15, v10, v11

    iget-object v11, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    move-object/from16 p0, v2

    iget v2, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    aget v11, v11, v2

    sub-int/2addr v2, v6

    :goto_15
    if-ltz v2, :cond_37

    iget-object v6, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v6, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    invoke-static {v11, v14, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v6

    iget-object v11, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v11, v11, v2

    xor-int/2addr v11, v6

    const/4 v6, -0x1

    add-int/2addr v2, v6

    const/4 v6, 0x1

    goto :goto_15

    :cond_37
    invoke-virtual {v7, v11}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v2

    aput v2, v15, v14

    const/16 v20, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    move/from16 v6, v20

    const/4 v11, 0x0

    goto :goto_14

    :cond_38
    move-object/from16 p0, v2

    move/from16 v20, v6

    move/from16 v2, v20

    :goto_16
    iget v6, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    if-ge v2, v12, :cond_3a

    const/4 v11, 0x0

    :goto_17
    if-ge v11, v9, :cond_39

    aget-object v14, v10, v2

    add-int/lit8 v15, v2, -0x1

    aget-object v15, v10, v15

    aget v15, v15, v11

    invoke-static {v15, v11, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v15

    aput v15, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    :cond_39
    add-int/lit8 v2, v2, 0x1

    const/16 v20, 0x1

    goto :goto_16

    :cond_3a
    const/4 v2, 0x0

    :goto_18
    if-ge v2, v12, :cond_3d

    const/4 v11, 0x0

    :goto_19
    if-ge v11, v9, :cond_3c

    const/4 v14, 0x0

    :goto_1a
    if-gt v14, v2, :cond_3b

    aget-object v15, v13, v2

    aget v21, v15, v11

    aget-object v22, v10, v14

    move-object/from16 v23, v10

    aget v10, v22, v11

    add-int v22, v12, v14

    move-object/from16 v24, v7

    sub-int v7, v22, v2

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v7

    invoke-static {v10, v7, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v7

    xor-int v7, v21, v7

    aput v7, v15, v11

    const/4 v7, 0x1

    add-int/2addr v14, v7

    move-object/from16 v10, v23

    move-object/from16 v7, v24

    goto :goto_1a

    :cond_3b
    move-object/from16 v24, v7

    move-object/from16 v23, v10

    const/4 v7, 0x1

    add-int/2addr v11, v7

    move-object/from16 v7, v24

    goto :goto_19

    :cond_3c
    move-object/from16 v24, v7

    move-object/from16 v23, v10

    const/4 v7, 0x1

    add-int/2addr v2, v7

    move-object/from16 v7, v24

    goto :goto_18

    :cond_3d
    move-object/from16 v24, v7

    const/4 v7, 0x1

    mul-int v2, v12, v5

    add-int/lit8 v10, v9, 0x1f

    const/4 v11, 0x5

    ushr-int/lit8 v14, v10, 0x5

    const/4 v15, 0x2

    new-array v15, v15, [I

    aput v14, v15, v7

    const/4 v14, 0x0

    aput v2, v15, v14

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    const/4 v14, 0x0

    :goto_1b
    if-ge v14, v9, :cond_41

    ushr-int/lit8 v15, v14, 0x5

    and-int/lit8 v11, v14, 0x1f

    shl-int v11, v7, v11

    const/4 v7, 0x0

    :goto_1c
    if-ge v7, v12, :cond_40

    aget-object v18, v13, v7

    aget v18, v18, v14

    move/from16 v21, v12

    const/4 v12, 0x0

    :goto_1d
    if-ge v12, v5, :cond_3f

    ushr-int v22, v18, v12

    const/16 v20, 0x1

    and-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_3e

    add-int/lit8 v22, v7, 0x1

    mul-int v22, v22, v5

    sub-int v22, v22, v12

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v2, v22

    aget v23, v22, v15

    xor-int v23, v23, v11

    aput v23, v22, v15

    :cond_3e
    add-int/lit8 v12, v12, 0x1

    goto :goto_1d

    :cond_3f
    const/16 v20, 0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v21

    goto :goto_1c

    :cond_40
    move/from16 v21, v12

    const/16 v20, 0x1

    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x5

    goto :goto_1b

    :cond_41
    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;-><init>()V

    const/4 v7, 0x0

    aget-object v11, v2, v7

    array-length v7, v11

    const/4 v12, 0x5

    shr-int/2addr v10, v12

    if-ne v7, v10, :cond_5a

    iput v9, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numColumns:I

    array-length v7, v2

    iput v7, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    array-length v7, v11

    iput v7, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    and-int/lit8 v7, v9, 0x1f

    if-nez v7, :cond_42

    const/4 v7, -0x1

    const/4 v9, 0x1

    goto :goto_1e

    :cond_42
    const/4 v9, 0x1

    shl-int v7, v9, v7

    sub-int/2addr v7, v9

    :goto_1e
    const/4 v10, 0x0

    :goto_1f
    iget v11, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Matrix;->numRows:I

    if-ge v10, v11, :cond_43

    aget-object v11, v2, v10

    iget v12, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->length:I

    sub-int/2addr v12, v9

    aget v13, v11, v12

    and-int/2addr v13, v7

    aput v13, v11, v12

    add-int/2addr v10, v9

    goto :goto_1f

    :cond_43
    iput-object v2, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2Matrix;->matrix:[[I

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;-><init>(Ljava/lang/String;Z)V

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->n:I

    iget v1, v4, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->k:I

    move-object/from16 v1, v24

    iput-object v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    move-object/from16 v2, p0

    iput-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v2, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v3, v2

    sub-int/2addr v3, v9

    aget v2, v2, v3

    if-nez v2, :cond_44

    const/4 v3, -0x1

    :cond_44
    new-array v2, v3, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    const/4 v4, 0x0

    :goto_20
    shr-int/lit8 v5, v3, 0x1

    if-ge v4, v5, :cond_45

    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [I

    aput v9, v7, v5

    new-instance v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v5, v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    aput-object v5, v2, v4

    add-int/2addr v4, v9

    goto :goto_20

    :cond_45
    :goto_21
    if-ge v5, v3, :cond_4b

    shl-int/lit8 v4, v5, 0x1

    add-int/lit8 v7, v4, 0x1

    new-array v7, v7, [I

    aput v9, v7, v4

    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v4, v1, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    iget-object v7, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v9, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-static {v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_4a

    array-length v12, v7

    new-array v13, v12, [I

    invoke-static {v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v14

    if-ne v14, v11, :cond_46

    const/4 v14, 0x0

    goto :goto_22

    :cond_46
    aget v14, v9, v14

    :goto_22
    invoke-virtual {v1, v14}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v14

    const/4 v15, 0x0

    invoke-static {v7, v15, v13, v15, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_23
    invoke-static {v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    if-gt v10, v7, :cond_49

    invoke-static {v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v7

    if-ne v7, v11, :cond_47

    const/4 v7, 0x0

    goto :goto_24

    :cond_47
    aget v7, v13, v7

    :goto_24
    invoke-static {v7, v14, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialRingGF2;->modMultiply(III)I

    move-result v7

    invoke-static {v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v12

    sub-int/2addr v12, v10

    invoke-static {v9}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree([I)I

    move-result v15

    if-ne v15, v11, :cond_48

    const/4 v11, 0x1

    new-array v12, v11, [I

    move/from16 v18, v3

    goto :goto_25

    :cond_48
    const/4 v11, 0x1

    add-int v17, v15, v12

    move/from16 v18, v3

    add-int/lit8 v3, v17, 0x1

    new-array v3, v3, [I

    add-int/2addr v15, v11

    const/4 v11, 0x0

    invoke-static {v9, v11, v3, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v3

    :goto_25
    invoke-virtual {v4, v12, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v3

    invoke-virtual {v4, v3, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v13

    move/from16 v3, v18

    const/4 v11, -0x1

    goto :goto_23

    :cond_49
    move/from16 v18, v3

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v3, v1, v13}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    add-int/2addr v5, v3

    move v9, v3

    move/from16 v3, v18

    goto :goto_21

    :cond_4a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    move v3, v9

    iget-object v4, v8, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v5, v4

    sub-int/2addr v5, v3

    aget v4, v4, v5

    if-nez v4, :cond_4c

    const/4 v13, -0x1

    goto :goto_26

    :cond_4c
    move v13, v5

    :goto_26
    new-array v4, v13, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    add-int/lit8 v5, v13, -0x1

    move v3, v5

    :goto_27
    if-ltz v3, :cond_4d

    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    aget-object v7, v2, v3

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget-object v8, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput-object v8, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v8, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iput v8, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    iget-object v7, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v8, v7

    new-array v8, v8, [I

    array-length v9, v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v8, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aput-object v6, v4, v3

    const/4 v6, -0x1

    add-int/2addr v3, v6

    goto :goto_27

    :cond_4d
    new-array v2, v13, [Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    :goto_28
    if-ltz v5, :cond_4e

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v1, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iput v5, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->degree:I

    const/4 v6, 0x1

    add-int/lit8 v7, v5, 0x1

    new-array v7, v7, [I

    iput-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aput v6, v7, v5

    aput-object v3, v2, v5

    const/4 v3, -0x1

    add-int/2addr v5, v3

    goto :goto_28

    :cond_4e
    const/4 v6, 0x1

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v13, :cond_59

    aget-object v5, v4, v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v5

    if-nez v5, :cond_52

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x0

    :goto_2a
    if-ge v5, v13, :cond_50

    aget-object v7, v4, v5

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v7

    if-eqz v7, :cond_4f

    aget-object v6, v4, v3

    aget-object v7, v4, v5

    aput-object v7, v4, v3

    aput-object v6, v4, v5

    aget-object v6, v2, v3

    aget-object v7, v2, v5

    aput-object v7, v2, v3

    aput-object v6, v2, v5

    move v5, v13

    const/4 v6, 0x1

    :cond_4f
    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_2a

    :cond_50
    if-eqz v6, :cond_51

    goto :goto_2b

    :cond_51
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Squaring matrix is not invertible."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    :goto_2b
    aget-object v5, v4, v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->inverse(I)I

    move-result v5

    aget-object v6, v4, v3

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v7

    const-string v8, "Not an element of the finite field this polynomial is defined over."

    if-eqz v7, :cond_58

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v7

    iput-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    aget-object v6, v2, v3

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v7

    if-eqz v7, :cond_57

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v5

    iput-object v5, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    const/4 v5, 0x0

    :goto_2c
    if-ge v5, v13, :cond_56

    if-eq v5, v3, :cond_53

    aget-object v6, v4, v5

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->getCoefficient(I)I

    move-result v6

    if-eqz v6, :cond_53

    aget-object v7, v4, v3

    iget-object v9, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v10

    if-eqz v10, :cond_55

    iget-object v10, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v7, v10, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v7

    new-instance v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v10, v9, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    aget-object v7, v2, v3

    iget-object v9, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    invoke-virtual {v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->isElementOfThisField(I)Z

    move-result v11

    if-eqz v11, :cond_54

    iget-object v11, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v7, v11, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->multWithElement([II)[I

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-direct {v7, v9, v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;-><init>(Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;[I)V

    aget-object v6, v4, v5

    iget-object v9, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v10, v10, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6, v9, v10}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v9

    iput-object v9, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    aget-object v6, v2, v5

    iget-object v9, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    iget-object v7, v7, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6, v9, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->add([I[I)[I

    move-result-object v7

    iput-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->computeDegree()V

    :cond_53
    const/4 v6, 0x1

    goto :goto_2d

    :cond_54
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2d
    add-int/2addr v5, v6

    goto :goto_2c

    :cond_56
    const/4 v6, 0x1

    add-int/2addr v3, v6

    goto/16 :goto_29

    :cond_57
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0, v8}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    return-object v0

    :cond_5a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Int array does not match given number of columns."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "algorithm identifier in private key not recognised"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    if-eqz v1, :cond_60

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    goto/16 :goto_30

    :cond_60
    if-eqz v0, :cond_65

    new-instance v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    iput v2, v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    if-nez v2, :cond_64

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_63

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    if-eqz v2, :cond_61

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    goto :goto_2f

    :cond_61
    if-eqz v0, :cond_62

    new-instance v4, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, v4, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->h:[B

    :cond_62
    :goto_2f
    iput-object v4, v1, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    :cond_63
    move-object v4, v1

    goto :goto_30

    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    :goto_30
    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconParams:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v8

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v9

    iget-object v1, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    iget-object v10, v1, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->h:[B

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    return-object v0

    :cond_66
    :goto_31
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    instance-of v2, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_69

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    if-nez v2, :cond_68

    if-eqz v12, :cond_67

    invoke-static {v1, v12}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v26

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v27

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v28

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v29

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v30

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v31

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->t1:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v32

    move-object/from16 v24, v3

    move-object/from16 v25, v1

    invoke-direct/range {v24 .. v32}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    return-object v3

    :cond_67
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v26

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v27

    invoke-virtual {v0, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v28

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v29

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v30

    invoke-virtual {v0, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object v31

    const/16 v32, 0x0

    move-object/from16 v24, v2

    move-object/from16 v25, v1

    invoke-direct/range {v24 .. v32}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[B[B[B[B[B[B[B)V

    return-object v2

    :cond_68
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unknown private key version: "

    invoke-static {v1, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    instance-of v2, v0, Lorg/bouncycastle/asn1/DEROctetString;

    if-eqz v2, :cond_6b

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    if-eqz v12, :cond_6a

    invoke-static {v1, v12}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$DilithiumConverter;->getPublicKeyParams(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;Lorg/bouncycastle/asn1/ASN1BitString;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-direct {v3, v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    return-object v3

    :cond_6a
    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    invoke-direct {v2, v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;)V

    return-object v2

    :cond_6b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    :goto_32
    sget-object v1, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusParams:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_6d

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->getInstance(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iget-object v0, v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    iget-object v0, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkseed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v6

    iget-object v0, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkroot:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B[B[B[B)V

    return-object v8

    :cond_6d
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V

    return-object v1

    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyInfo array null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
