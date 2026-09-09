.class public final Lorg/bouncycastle/pqc/crypto/util/PrivateKeyInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrivateKeyInfo(Lcom/chad/library/adapter4/loadState/LoadState;Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .locals 48

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v3, 0x20

    const/4 v4, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    instance-of v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    const/4 v12, 0x0

    if-eqz v11, :cond_0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->securityCategory:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/util/Utils;->qTeslaLookupAlgID(I)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->privateKey:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v3, v2, v4, v1, v12}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v3

    :cond_0
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    if-eqz v11, :cond_1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincs256LookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/asn1/SPHINCS256KeyParams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Object;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincs/SPHINCSPrivateKeyParameters;->keyData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v2, v1, v3, v12, v12}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v2

    :cond_1
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    if-eqz v11, :cond_3

    check-cast v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->newHope:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v0

    array-length v2, v0

    mul-int/2addr v2, v7

    new-array v2, v2, [B

    :goto_0
    array-length v3, v0

    if-eq v4, v3, :cond_2

    aget-short v3, v0, v4

    mul-int/lit8 v5, v4, 0x2

    int-to-byte v6, v3

    aput-byte v6, v2, v5

    add-int/2addr v5, v10

    ushr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    add-int/2addr v4, v10

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v0, v1, v3, v12, v12}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v0

    :cond_3
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    if-eqz v11, :cond_4

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)V

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)V

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v4, v3, v5, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v4

    :cond_4
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    if-eqz v11, :cond_6

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    iget v3, v2, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->l:I

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)V

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v3

    iget v5, v2, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->l:I

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    monitor-enter v2

    :try_start_0
    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/lms/HSSPrivateKeyParameters;->keys:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_5

    monitor-exit v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)V

    iget-object v2, v3, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_alg_hss_lms_hashsig:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v4, v3, v5, v1, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v4

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lmsPublicKey"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_6
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    if-eqz v11, :cond_7

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    new-instance v2, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->sphincsPlusOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getEncoded()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {v3, v2, v4, v1, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v3

    :cond_7
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    if-eqz v11, :cond_8

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicPrivateKeyParameters;->privateKey:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->picnicOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v0, v3, v4, v1, v12}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v0

    :cond_8
    instance-of v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    if-eqz v11, :cond_44

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    new-instance v11, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    sget-object v12, Lorg/bouncycastle/pqc/crypto/util/Utils;->mcElieceOids:Ljava/util/HashMap;

    invoke-virtual {v12, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v12, Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v13

    new-array v13, v13, [B

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v14

    new-array v14, v14, [B

    iget v5, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v10, v5

    new-array v2, v6, [S

    new-array v7, v6, [I

    iget v10, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v10, 0x8

    mul-int/lit8 v24, v6, 0x4

    add-int v9, v24, v4

    new-array v8, v9, [B

    add-int/lit8 v27, v9, -0x20

    iget v3, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int v27, v27, v3

    sub-int v27, v27, v24

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v3, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v1, 0x40

    invoke-virtual {v3, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(B)V

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    move-object/from16 v29, v0

    move-object/from16 v24, v11

    const/16 v0, 0x20

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->update(I[BI)V

    invoke-virtual {v3, v11, v8, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal(I[BI)I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v6, :cond_9

    const/4 v3, 0x4

    mul-int/lit8 v9, v0, 0x4

    add-int v9, v9, v27

    invoke-static {v8, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v7, v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x1

    iget v0, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v8, v0, 0x1

    new-array v8, v8, [S

    aput-short v3, v8, v0

    const/4 v3, 0x0

    :goto_2
    iget v9, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    if-ge v3, v0, :cond_a

    const/4 v11, 0x2

    mul-int/lit8 v27, v3, 0x2

    const/16 v11, 0x28

    add-int/lit8 v30, v27, 0x28

    aget-byte v11, v1, v30

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v27, v27, 0x29

    move-object/from16 v30, v12

    aget-byte v12, v1, v27

    and-int/lit16 v12, v12, 0xff

    const/16 v25, 0x8

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    int-to-short v11, v11

    and-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v8, v3

    const/4 v9, 0x1

    add-int/2addr v3, v9

    move-object/from16 v12, v30

    goto :goto_2

    :cond_a
    move-object/from16 v30, v12

    new-array v1, v6, [J

    const/4 v3, 0x0

    :goto_3
    const/16 v11, 0x1f

    if-ge v3, v6, :cond_b

    aget v12, v7, v3

    move-object/from16 v27, v13

    int-to-long v12, v12

    aput-wide v12, v1, v3

    shl-long v11, v12, v11

    aput-wide v11, v1, v3

    move-object/from16 v31, v14

    int-to-long v13, v3

    or-long/2addr v11, v13

    aput-wide v11, v1, v3

    const-wide v13, 0x7fffffffffffffffL

    and-long/2addr v11, v13

    aput-wide v11, v1, v3

    const/4 v11, 0x1

    add-int/2addr v3, v11

    move-object/from16 v13, v27

    move-object/from16 v14, v31

    goto :goto_3

    :cond_b
    move-object/from16 v27, v13

    move-object/from16 v31, v14

    const/16 v3, 0x3f

    const/4 v7, 0x2

    if-ge v6, v7, :cond_d

    :cond_c
    move-object/from16 v41, v8

    const/16 v22, 0x1

    goto/16 :goto_d

    :cond_d
    const/4 v7, 0x1

    :goto_4
    sub-int v12, v6, v7

    if-ge v7, v12, :cond_e

    add-int/2addr v7, v7

    goto :goto_4

    :cond_e
    move v12, v7

    :goto_5
    if-lez v12, :cond_c

    const/4 v13, 0x0

    :goto_6
    sub-int v14, v6, v12

    if-ge v13, v14, :cond_10

    and-int v14, v13, v12

    if-nez v14, :cond_f

    add-int v14, v13, v12

    aget-wide v32, v1, v14

    aget-wide v34, v1, v13

    sub-long v36, v32, v34

    move/from16 v39, v12

    ushr-long v11, v36, v3

    neg-long v11, v11

    xor-long v32, v34, v32

    and-long v11, v11, v32

    xor-long v32, v34, v11

    aput-wide v32, v1, v13

    aget-wide v32, v1, v14

    xor-long v11, v32, v11

    aput-wide v11, v1, v14

    :goto_7
    const/4 v11, 0x1

    goto :goto_8

    :cond_f
    move/from16 v39, v12

    goto :goto_7

    :goto_8
    add-int/2addr v13, v11

    move/from16 v12, v39

    const/16 v11, 0x1f

    goto :goto_6

    :cond_10
    move v13, v7

    const/4 v11, 0x0

    :goto_9
    if-le v13, v12, :cond_14

    :goto_a
    sub-int v14, v6, v13

    if-ge v11, v14, :cond_13

    and-int v14, v11, v12

    if-nez v14, :cond_12

    add-int v14, v11, v12

    aget-wide v32, v1, v14

    move v3, v13

    :goto_b
    if-le v3, v12, :cond_11

    add-int v35, v11, v3

    aget-wide v36, v1, v35

    sub-long v39, v36, v32

    move/from16 v42, v7

    move-object/from16 v41, v8

    const/16 v34, 0x3f

    ushr-long v7, v39, v34

    neg-long v7, v7

    xor-long v39, v32, v36

    and-long v7, v7, v39

    xor-long v32, v32, v7

    xor-long v7, v36, v7

    aput-wide v7, v1, v35

    const/16 v22, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move-object/from16 v8, v41

    move/from16 v7, v42

    goto :goto_b

    :cond_11
    move/from16 v42, v7

    move-object/from16 v41, v8

    const/16 v22, 0x1

    aput-wide v32, v1, v14

    goto :goto_c

    :cond_12
    move/from16 v42, v7

    move-object/from16 v41, v8

    const/16 v22, 0x1

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v41

    move/from16 v7, v42

    const/16 v3, 0x3f

    goto :goto_a

    :cond_13
    move/from16 v42, v7

    move-object/from16 v41, v8

    const/16 v22, 0x1

    ushr-int/lit8 v13, v13, 0x1

    const/16 v3, 0x3f

    goto :goto_9

    :cond_14
    move/from16 v42, v7

    move-object/from16 v41, v8

    const/16 v22, 0x1

    ushr-int/lit8 v12, v12, 0x1

    const/16 v3, 0x3f

    const/16 v11, 0x1f

    goto/16 :goto_5

    :goto_d
    move/from16 v3, v22

    :goto_e
    if-ge v3, v6, :cond_17

    add-int/lit8 v7, v3, -0x1

    aget-wide v7, v1, v7

    const/16 v11, 0x1f

    shr-long/2addr v7, v11

    aget-wide v12, v1, v3

    shr-long/2addr v12, v11

    cmp-long v7, v7, v12

    if-nez v7, :cond_16

    :cond_15
    :goto_f
    move-object/from16 v1, v27

    move-object/from16 v0, v30

    goto/16 :goto_3b

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_17
    new-array v3, v10, [S

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_18

    aget-wide v11, v1, v7

    int-to-long v13, v9

    and-long/2addr v11, v13

    long-to-int v8, v11

    int-to-short v8, v8

    aput-short v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v22, 0x1

    goto :goto_10

    :cond_18
    const/4 v1, 0x0

    :goto_11
    if-ge v1, v10, :cond_1a

    aget-short v6, v2, v1

    and-int/lit16 v7, v6, 0xff

    const/16 v8, 0x8

    shl-int/2addr v7, v8

    const v9, 0xff00

    and-int/2addr v6, v9

    shr-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-short v6, v6

    and-int/lit16 v7, v6, 0xf0f

    const/4 v8, 0x4

    shl-int/2addr v7, v8

    const v9, 0xf0f0

    and-int/2addr v6, v9

    shr-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-short v6, v6

    and-int/lit16 v7, v6, 0x3333

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    const v9, 0xcccc

    and-int/2addr v6, v9

    shr-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-short v6, v6

    and-int/lit16 v7, v6, 0x5555

    const/4 v8, 0x1

    shl-int/2addr v7, v8

    const v9, 0xaaaa

    and-int/2addr v6, v9

    shr-int/2addr v6, v8

    or-int/2addr v6, v7

    int-to-short v6, v6

    const/16 v7, 0xc

    if-ne v5, v7, :cond_19

    const/4 v7, 0x4

    :goto_12
    shr-int/2addr v6, v7

    int-to-short v6, v6

    goto :goto_13

    :cond_19
    const/4 v7, 0x3

    goto :goto_12

    :goto_13
    aput-short v6, v3, v1

    const/4 v6, 0x1

    add-int/2addr v1, v6

    goto :goto_11

    :cond_1a
    const/4 v6, 0x1

    new-array v1, v10, [S

    const/4 v7, 0x0

    :goto_14
    iget-object v8, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    if-ge v7, v10, :cond_1c

    aget-short v9, v3, v7

    aget-short v11, v41, v0

    add-int/lit8 v12, v0, -0x1

    :goto_15
    if-ltz v12, :cond_1b

    invoke-virtual {v8, v11, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v11

    aget-short v13, v41, v12

    xor-int/2addr v11, v13

    int-to-short v11, v11

    add-int/lit8 v12, v12, -0x1

    goto :goto_15

    :cond_1b
    aput-short v11, v1, v7

    add-int/2addr v7, v6

    goto :goto_14

    :cond_1c
    const/4 v7, 0x0

    :goto_16
    if-ge v7, v10, :cond_1d

    aget-short v9, v1, v7

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v9

    aput-short v9, v1, v7

    add-int/2addr v7, v6

    goto :goto_16

    :cond_1d
    const/4 v7, 0x2

    new-array v9, v7, [I

    aput v4, v9, v6

    iget v6, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    const/16 v23, 0x0

    aput v6, v9, v23

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    move/from16 v9, v23

    :goto_17
    if-ge v9, v6, :cond_1f

    move/from16 v11, v23

    :goto_18
    if-ge v11, v4, :cond_1e

    aget-object v12, v7, v9

    aput-byte v23, v12, v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    const/16 v23, 0x0

    goto :goto_18

    :cond_1e
    const/4 v12, 0x1

    add-int/2addr v9, v12

    const/16 v23, 0x0

    goto :goto_17

    :cond_1f
    const/4 v12, 0x1

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v0, :cond_23

    const/4 v11, 0x0

    :goto_1a
    if-ge v11, v10, :cond_21

    const/4 v13, 0x0

    :goto_1b
    if-ge v13, v5, :cond_20

    const/4 v14, 0x7

    add-int/lit8 v22, v11, 0x7

    aget-short v14, v1, v22

    ushr-int/2addr v14, v13

    and-int/2addr v14, v12

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    add-int/lit8 v22, v11, 0x6

    aget-short v22, v1, v22

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    add-int/lit8 v22, v11, 0x5

    aget-short v22, v1, v22

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    const/16 v22, 0x4

    add-int/lit8 v32, v11, 0x4

    aget-short v22, v1, v32

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    const/16 v19, 0x3

    add-int/lit8 v22, v11, 0x3

    aget-short v22, v1, v22

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    const/16 v21, 0x2

    add-int/lit8 v22, v11, 0x2

    aget-short v22, v1, v22

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    add-int/lit8 v22, v11, 0x1

    aget-short v22, v1, v22

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    shl-int/2addr v14, v12

    int-to-byte v14, v14

    aget-short v22, v1, v11

    ushr-int v22, v22, v13

    and-int/lit8 v22, v22, 0x1

    or-int v14, v14, v22

    int-to-byte v14, v14

    mul-int v22, v9, v5

    add-int v22, v22, v13

    aget-object v22, v7, v22

    const/16 v25, 0x8

    div-int/lit8 v32, v11, 0x8

    aput-byte v14, v22, v32

    add-int/2addr v13, v12

    goto :goto_1b

    :cond_20
    const/16 v25, 0x8

    add-int/lit8 v11, v11, 0x8

    goto :goto_1a

    :cond_21
    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v10, :cond_22

    aget-short v13, v1, v11

    aget-short v14, v3, v11

    invoke-virtual {v8, v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v13

    aput-short v13, v1, v11

    add-int/2addr v11, v12

    goto :goto_1c

    :cond_22
    add-int/2addr v9, v12

    goto/16 :goto_19

    :cond_23
    const/4 v0, 0x0

    :goto_1d
    iget-boolean v1, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-ge v0, v6, :cond_40

    const/4 v3, 0x3

    ushr-int/lit8 v9, v0, 0x3

    const/4 v3, 0x7

    and-int/lit8 v5, v0, 0x7

    iget-boolean v3, v15, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v3, :cond_39

    const/16 v3, 0x20

    add-int/lit8 v8, v6, -0x20

    if-ne v0, v8, :cond_39

    const/16 v11, 0x40

    new-array v12, v11, [J

    new-array v11, v3, [J

    const/16 v13, 0x9

    new-array v14, v13, [B

    const/16 v25, 0x8

    div-int/lit8 v13, v8, 0x8

    rem-int/lit8 v32, v8, 0x8

    if-eqz v1, :cond_27

    move-object/from16 v33, v15

    const/4 v15, 0x0

    :goto_1e
    if-ge v15, v3, :cond_26

    move/from16 v35, v10

    const/4 v3, 0x0

    :goto_1f
    const/16 v10, 0x9

    if-ge v3, v10, :cond_24

    add-int v10, v8, v15

    aget-object v10, v7, v10

    add-int v36, v13, v3

    aget-byte v10, v10, v36

    aput-byte v10, v14, v3

    const/4 v10, 0x1

    add-int/2addr v3, v10

    goto :goto_1f

    :cond_24
    const/4 v3, 0x0

    :goto_20
    const/16 v10, 0x8

    if-ge v3, v10, :cond_25

    aget-byte v10, v14, v3

    and-int/lit16 v10, v10, 0xff

    shr-int v10, v10, v32

    const/16 v22, 0x1

    add-int/lit8 v36, v3, 0x1

    aget-byte v37, v14, v36

    const/16 v25, 0x8

    rsub-int/lit8 v38, v32, 0x8

    shl-int v37, v37, v38

    or-int v10, v10, v37

    int-to-byte v10, v10

    aput-byte v10, v14, v3

    move/from16 v3, v36

    goto :goto_20

    :cond_25
    const/4 v3, 0x0

    const/16 v22, 0x1

    invoke-static {v14, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v36

    aput-wide v36, v12, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v35

    const/16 v3, 0x20

    goto :goto_1e

    :cond_26
    move/from16 v35, v10

    const/16 v22, 0x1

    move v10, v3

    goto :goto_22

    :cond_27
    move/from16 v35, v10

    move-object/from16 v33, v15

    const/16 v22, 0x1

    move v10, v3

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v10, :cond_28

    add-int v15, v8, v3

    aget-object v15, v7, v15

    invoke-static {v15, v13}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v36

    aput-wide v36, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_28
    :goto_22
    const/4 v3, 0x0

    :goto_23
    if-ge v3, v10, :cond_2f

    aget-wide v36, v12, v3

    add-int/lit8 v15, v3, 0x1

    move/from16 v38, v4

    move/from16 v39, v5

    move-wide/from16 v4, v36

    move/from16 v36, v15

    :goto_24
    if-ge v15, v10, :cond_29

    aget-wide v40, v12, v15

    or-long v4, v4, v40

    add-int/lit8 v15, v15, 0x1

    const/16 v10, 0x20

    const/16 v22, 0x1

    goto :goto_24

    :cond_29
    const-wide/16 v40, 0x0

    cmp-long v10, v4, v40

    if-nez v10, :cond_2a

    goto/16 :goto_f

    :cond_2a
    not-long v4, v4

    const-wide v42, 0x101010101010101L

    const/4 v10, 0x0

    :goto_25
    const/16 v15, 0x8

    if-ge v10, v15, :cond_2b

    ushr-long v44, v4, v10

    and-long v42, v42, v44

    add-long v40, v40, v42

    const/4 v15, 0x1

    add-int/2addr v10, v15

    goto :goto_25

    :cond_2b
    const/4 v15, 0x1

    const-wide v4, 0x808080808080808L

    and-long v4, v40, v4

    ushr-long v42, v4, v15

    or-long v4, v4, v42

    const/4 v10, 0x2

    ushr-long v42, v4, v10

    or-long v4, v4, v42

    const/16 v10, 0x8

    ushr-long v42, v40, v10

    and-long v44, v42, v4

    add-long v40, v40, v44

    move-object/from16 v37, v14

    const/4 v15, 0x2

    move-wide/from16 v46, v40

    move/from16 v40, v13

    move-wide/from16 v13, v46

    :goto_26
    if-ge v15, v10, :cond_2c

    ushr-long v44, v4, v10

    and-long v4, v4, v44

    ushr-long v42, v42, v10

    and-long v44, v42, v4

    add-long v13, v13, v44

    const/4 v10, 0x1

    add-int/2addr v15, v10

    const/16 v10, 0x8

    goto :goto_26

    :cond_2c
    long-to-int v4, v13

    and-int/lit16 v4, v4, 0xff

    int-to-long v13, v4

    aput-wide v13, v11, v3

    move/from16 v5, v36

    :goto_27
    const/16 v10, 0x20

    if-ge v5, v10, :cond_2d

    aget-wide v13, v12, v3

    shr-long v41, v13, v4

    const-wide/16 v16, 0x1

    and-long v41, v41, v16

    sub-long v41, v41, v16

    aget-wide v43, v12, v5

    and-long v41, v43, v41

    xor-long v13, v13, v41

    aput-wide v13, v12, v3

    const/4 v10, 0x1

    add-int/2addr v5, v10

    goto :goto_27

    :cond_2d
    const-wide/16 v16, 0x1

    move/from16 v5, v36

    :goto_28
    if-ge v5, v10, :cond_2e

    aget-wide v13, v12, v5

    shr-long v41, v13, v4

    move v15, v9

    and-long v9, v41, v16

    neg-long v9, v9

    aget-wide v41, v12, v3

    and-long v9, v41, v9

    xor-long/2addr v9, v13

    aput-wide v9, v12, v5

    const/4 v9, 0x1

    add-int/2addr v5, v9

    move v9, v15

    const/16 v10, 0x20

    const-wide/16 v16, 0x1

    goto :goto_28

    :cond_2e
    move/from16 v3, v36

    move-object/from16 v14, v37

    move/from16 v4, v38

    move/from16 v5, v39

    move/from16 v13, v40

    const/16 v22, 0x1

    goto/16 :goto_23

    :cond_2f
    move/from16 v38, v4

    move/from16 v39, v5

    move v15, v9

    move/from16 v40, v13

    move-object/from16 v37, v14

    move/from16 v9, v22

    move v4, v10

    const/4 v3, 0x0

    :goto_29
    if-ge v3, v4, :cond_31

    add-int/lit8 v4, v3, 0x1

    move v9, v4

    :goto_2a
    const/16 v5, 0x40

    if-ge v9, v5, :cond_30

    add-int v10, v8, v3

    aget-short v12, v2, v10

    add-int v13, v8, v9

    aget-short v14, v2, v13

    xor-int/2addr v14, v12

    move/from16 v36, v6

    int-to-long v5, v14

    int-to-short v14, v9

    move-object/from16 v41, v7

    move/from16 v42, v8

    aget-wide v7, v11, v3

    long-to-int v7, v7

    int-to-short v7, v7

    xor-int/2addr v7, v14

    int-to-long v7, v7

    const-wide/16 v16, 0x1

    sub-long v7, v7, v16

    const/16 v14, 0x3f

    ushr-long/2addr v7, v14

    neg-long v7, v7

    and-long/2addr v5, v7

    int-to-long v7, v12

    xor-long/2addr v7, v5

    long-to-int v7, v7

    int-to-short v7, v7

    aput-short v7, v2, v10

    aget-short v7, v2, v13

    int-to-long v7, v7

    xor-long/2addr v5, v7

    long-to-int v5, v5

    int-to-short v5, v5

    aput-short v5, v2, v13

    const/4 v5, 0x1

    add-int/2addr v9, v5

    move/from16 v6, v36

    move-object/from16 v7, v41

    move/from16 v8, v42

    goto :goto_2a

    :cond_30
    move v3, v4

    const/16 v4, 0x20

    const/4 v9, 0x1

    goto :goto_29

    :cond_31
    move-object/from16 v41, v7

    const/16 v14, 0x3f

    move v4, v6

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v4, :cond_38

    if-eqz v1, :cond_34

    const/4 v5, 0x0

    const/16 v6, 0x9

    :goto_2c
    if-ge v5, v6, :cond_32

    aget-object v7, v41, v3

    add-int v13, v40, v5

    aget-byte v7, v7, v13

    aput-byte v7, v37, v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    goto :goto_2c

    :cond_32
    const/4 v7, 0x1

    const/4 v5, 0x0

    :goto_2d
    const/16 v8, 0x8

    if-ge v5, v8, :cond_33

    aget-byte v9, v37, v5

    and-int/lit16 v9, v9, 0xff

    shr-int v9, v9, v32

    add-int/lit8 v10, v5, 0x1

    aget-byte v7, v37, v10

    rsub-int/lit8 v12, v32, 0x8

    shl-int/2addr v7, v12

    or-int/2addr v7, v9

    int-to-byte v7, v7

    aput-byte v7, v37, v5

    move v5, v10

    const/4 v7, 0x1

    goto :goto_2d

    :cond_33
    move-object/from16 v5, v37

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    move-wide v9, v8

    move/from16 v8, v40

    goto :goto_2e

    :cond_34
    move-object/from16 v5, v37

    const/16 v6, 0x9

    aget-object v7, v41, v3

    move/from16 v8, v40

    invoke-static {v7, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v9

    :goto_2e
    const/4 v7, 0x0

    const/16 v12, 0x20

    :goto_2f
    if-ge v7, v12, :cond_35

    shr-long v12, v9, v7

    move/from16 v26, v15

    aget-wide v14, v11, v7

    long-to-int v14, v14

    shr-long v36, v9, v14

    xor-long v12, v12, v36

    const-wide/16 v16, 0x1

    and-long v12, v12, v16

    shl-long v14, v12, v14

    xor-long/2addr v9, v14

    shl-long/2addr v12, v7

    xor-long/2addr v9, v12

    const/4 v12, 0x1

    add-int/2addr v7, v12

    move/from16 v15, v26

    const/16 v12, 0x20

    const/16 v14, 0x3f

    goto :goto_2f

    :cond_35
    move/from16 v26, v15

    if-eqz v1, :cond_37

    const/4 v7, 0x0

    invoke-static {v7, v9, v10, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8(IJ[B)V

    aget-object v7, v41, v3

    const/16 v9, 0x8

    add-int/lit8 v13, v8, 0x8

    aget-byte v10, v7, v13

    and-int/lit16 v10, v10, 0xff

    ushr-int v10, v10, v32

    shl-int v10, v10, v32

    const/4 v12, 0x7

    aget-byte v14, v5, v12

    and-int/lit16 v12, v14, 0xff

    rsub-int/lit8 v14, v32, 0x8

    ushr-int v9, v12, v14

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v13

    const/4 v9, 0x0

    aget-byte v10, v5, v9

    and-int/lit16 v9, v10, 0xff

    shl-int v9, v9, v32

    aget-byte v10, v7, v8

    and-int/lit16 v10, v10, 0xff

    shl-int/2addr v10, v14

    ushr-int/2addr v10, v14

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v7, 0x7

    :goto_30
    const/4 v9, 0x1

    if-lt v7, v9, :cond_36

    aget-object v10, v41, v3

    add-int v13, v8, v7

    aget-byte v12, v5, v7

    and-int/lit16 v12, v12, 0xff

    shl-int v12, v12, v32

    add-int/lit8 v15, v7, -0x1

    aget-byte v9, v5, v15

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v14

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v10, v13

    add-int/lit8 v7, v7, -0x1

    goto :goto_30

    :cond_36
    move v7, v9

    goto :goto_31

    :cond_37
    aget-object v7, v41, v3

    invoke-static {v8, v9, v10, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8(IJ[B)V

    const/4 v7, 0x1

    :goto_31
    add-int/2addr v3, v7

    move-object/from16 v37, v5

    move/from16 v40, v8

    move/from16 v15, v26

    const/16 v14, 0x3f

    goto/16 :goto_2b

    :cond_38
    move/from16 v26, v15

    :goto_32
    const/4 v7, 0x1

    goto :goto_33

    :cond_39
    move/from16 v38, v4

    move/from16 v39, v5

    move v4, v6

    move-object/from16 v41, v7

    move/from16 v26, v9

    move/from16 v35, v10

    move-object/from16 v33, v15

    goto :goto_32

    :goto_33
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    :goto_34
    if-ge v3, v4, :cond_3b

    aget-object v5, v41, v0

    aget-byte v5, v5, v26

    aget-object v6, v41, v3

    aget-byte v6, v6, v26

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    shr-int v5, v5, v39

    int-to-byte v5, v5

    and-int/2addr v5, v7

    int-to-byte v5, v5

    neg-int v5, v5

    int-to-byte v5, v5

    move/from16 v10, v38

    const/4 v6, 0x0

    :goto_35
    if-ge v6, v10, :cond_3a

    aget-object v7, v41, v0

    aget-byte v8, v7, v6

    aget-object v9, v41, v3

    aget-byte v9, v9, v6

    and-int/2addr v9, v5

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_35

    :cond_3a
    const/4 v7, 0x1

    add-int/2addr v3, v7

    move/from16 v38, v10

    goto :goto_34

    :cond_3b
    move/from16 v10, v38

    aget-object v3, v41, v0

    aget-byte v3, v3, v26

    shr-int v3, v3, v39

    and-int/2addr v3, v7

    if-nez v3, :cond_3c

    goto/16 :goto_f

    :cond_3c
    const/4 v3, 0x0

    :goto_36
    if-ge v3, v4, :cond_3f

    if-eq v3, v0, :cond_3e

    aget-object v5, v41, v3

    aget-byte v5, v5, v26

    shr-int v5, v5, v39

    int-to-byte v5, v5

    and-int/2addr v5, v7

    int-to-byte v5, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x0

    :goto_37
    if-ge v6, v10, :cond_3d

    aget-object v7, v41, v3

    aget-byte v8, v7, v6

    aget-object v9, v41, v0

    aget-byte v9, v9, v6

    and-int/2addr v9, v5

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    goto :goto_37

    :cond_3d
    const/4 v7, 0x1

    :cond_3e
    add-int/2addr v3, v7

    goto :goto_36

    :cond_3f
    move v0, v1

    move v6, v4

    move v4, v10

    move/from16 v9, v26

    move-object/from16 v15, v33

    move/from16 v10, v35

    move-object/from16 v7, v41

    goto/16 :goto_1d

    :cond_40
    move-object/from16 v41, v7

    move/from16 v35, v10

    const/4 v7, 0x1

    move v10, v4

    move v4, v6

    if-eqz v1, :cond_43

    const/16 v0, 0x8

    rem-int/lit8 v6, v4, 0x8

    if-nez v6, :cond_41

    aget-object v1, v41, v9

    add-int/lit8 v6, v4, -0x1

    div-int/2addr v6, v0

    move-object/from16 v2, v31

    const/4 v0, 0x0

    invoke-static {v1, v6, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_f

    :cond_41
    move-object/from16 v2, v31

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_38
    if-ge v1, v4, :cond_15

    add-int/lit8 v5, v4, -0x1

    div-int/2addr v5, v0

    :goto_39
    add-int/lit8 v8, v10, -0x1

    if-ge v5, v8, :cond_42

    add-int/lit8 v8, v3, 0x1

    aget-object v9, v41, v1

    aget-byte v11, v9, v5

    and-int/lit16 v11, v11, 0xff

    ushr-int/2addr v11, v6

    add-int/2addr v5, v7

    aget-byte v9, v9, v5

    rsub-int/lit8 v12, v6, 0x8

    shl-int v0, v9, v12

    or-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    move v3, v8

    const/16 v0, 0x8

    goto :goto_39

    :cond_42
    add-int/lit8 v0, v3, 0x1

    aget-object v8, v41, v1

    aget-byte v5, v8, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    add-int/2addr v1, v7

    move v3, v0

    const/16 v0, 0x8

    goto :goto_38

    :cond_43
    move-object/from16 v2, v31

    sub-int v10, v35, v4

    const/4 v0, 0x7

    add-int/2addr v10, v0

    const/16 v0, 0x8

    div-int/2addr v10, v0

    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v4, :cond_15

    aget-object v3, v41, v1

    div-int/lit8 v6, v4, 0x8

    mul-int v0, v10, v1

    invoke-static {v3, v6, v2, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    add-int/2addr v1, v0

    const/16 v0, 0x8

    goto :goto_3a

    :goto_3b
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;-><init>([B)V

    new-instance v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;

    move-object/from16 v2, v29

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v4, v3, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v3

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    const/16 v6, 0x28

    invoke-static {v5, v4, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v4

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v5, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    const/4 v7, 0x2

    mul-int/2addr v5, v7

    add-int/2addr v5, v6

    iget-object v8, v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    invoke-static {v6, v8, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v5

    iget-object v8, v2, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    iget v8, v8, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->t:I

    mul-int/2addr v8, v7

    add-int/2addr v8, v6

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    array-length v7, v6

    const/16 v9, 0x20

    sub-int/2addr v7, v9

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v6

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->privateKey:[B

    array-length v7, v2

    sub-int/2addr v7, v9

    array-length v8, v2

    invoke-static {v7, v2, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v2

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->version:I

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->delta:[B

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->C:[B

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->g:[B

    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    iput-object v3, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->alpha:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->s:[B

    iput-object v0, v1, Lorg/bouncycastle/pqc/asn1/CMCEPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/CMCEPublicKey;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-object/from16 v2, p1

    move-object/from16 v4, v24

    const/4 v3, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v0

    :cond_44
    move-object v2, v1

    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    if-eqz v1, :cond_47

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/pqc/asn1/XMSSKeyParams;-><init>(ILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Object;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestSize:I

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->height:I

    const/4 v6, 0x4

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BI)J

    move-result-wide v7

    long-to-int v10, v7

    int-to-long v7, v10

    invoke-static {v0, v7, v8}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v11

    add-int v8, v6, v5

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v12

    add-int/2addr v8, v5

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v13

    add-int/2addr v8, v5

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v14

    add-int/2addr v8, v5

    array-length v5, v4

    sub-int/2addr v5, v8

    invoke-static {v8, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v15

    :try_start_2
    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v15, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->maxIndex:I

    const/4 v5, 0x1

    shl-int v0, v5, v0

    sub-int/2addr v0, v5

    if-eq v4, v0, :cond_45

    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    move-object/from16 v23, v0

    move/from16 v24, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    move/from16 v30, v4

    invoke-direct/range {v23 .. v30}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;-><init>(I[B[B[B[B[BI)V

    :goto_3c
    const/4 v4, 0x0

    goto :goto_3d

    :cond_45
    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lorg/bouncycastle/pqc/asn1/XMSSPrivateKey;-><init>(I[B[B[B[B[B)V

    goto :goto_3c

    :goto_3d
    invoke-direct {v3, v1, v0, v2, v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot parse BDS: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    if-eqz v1, :cond_4a

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v3, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->xmss_mt:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v4, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget v6, v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->layers:I

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/util/Utils;->xmssLookupTreeAlgID(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-direct {v4, v6, v5, v7}, Lorg/bouncycastle/pqc/asn1/XMSSMTKeyParams;-><init>(IILorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-direct {v1, v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Object;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->getEncoded()[B

    move-result-object v4

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTPrivateKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->xmssParams:Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSParameters;->treeDigestSize:I

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTParameters;->height:I

    const/4 v6, 0x7

    add-int/2addr v6, v0

    const/16 v7, 0x8

    div-int/2addr v6, v7

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->bytesToXBigEndian([BI)J

    move-result-wide v7

    long-to-int v7, v7

    int-to-long v9, v7

    invoke-static {v0, v9, v10}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->isIndexValid(IJ)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v11

    add-int/2addr v6, v5

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v12

    add-int/2addr v6, v5

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v13

    add-int/2addr v6, v5

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v14

    add-int/2addr v6, v5

    array-length v5, v4

    sub-int/2addr v5, v6

    invoke-static {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->extractBytesAtOffset(I[BI)[B

    move-result-object v15

    :try_start_3
    const-class v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;

    invoke-static {v15, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->deserialize([BLjava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    iget-wide v4, v4, Lorg/bouncycastle/pqc/crypto/xmss/BDSStateMap;->maxIndex:J

    const-wide/16 v6, 0x1

    shl-long v16, v6, v0

    sub-long v16, v16, v6

    cmp-long v0, v4, v16

    if-eqz v0, :cond_48

    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    move-object/from16 v18, v0

    move-wide/from16 v19, v9

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-wide/from16 v26, v4

    invoke-direct/range {v18 .. v27}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(J[B[B[B[B[BJ)V

    :goto_3e
    const/4 v4, 0x0

    goto :goto_3f

    :cond_48
    new-instance v0, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;

    move-object v8, v0

    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/pqc/asn1/XMSSMTPrivateKey;-><init>(J[B[B[B[B[B)V

    goto :goto_3e

    :goto_3f
    invoke-direct {v3, v1, v0, v2, v4}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v3

    :catch_1
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot parse BDSStateMap: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4a
    instance-of v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    if-eqz v1, :cond_53

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->n:I

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->k:I

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->goppaPoly:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->p:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSKeyParameters;->treeDigest:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/Utils;->getAlgorithmIdentifier(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput v2, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->n:I

    iput v3, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->k:I

    iget v2, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->polynomial:I

    int-to-byte v3, v2

    const/16 v4, 0x8

    ushr-int/lit8 v7, v2, 0x8

    int-to-byte v4, v7

    ushr-int/lit8 v7, v2, 0x10

    int-to-byte v7, v7

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    const/4 v8, 0x4

    new-array v9, v8, [B

    const/4 v8, 0x0

    aput-byte v3, v9, v8

    const/16 v22, 0x1

    aput-byte v4, v9, v22

    const/4 v3, 0x2

    aput-byte v7, v9, v3

    const/4 v3, 0x3

    aput-byte v2, v9, v3

    iput-object v9, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encField:[B

    move/from16 v2, v22

    const/16 v3, 0x8

    :goto_40
    iget-object v4, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->field:Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/GF2mField;->degree:I

    if-le v4, v3, :cond_4b

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x8

    add-int/2addr v3, v4

    const/16 v22, 0x1

    goto :goto_40

    :cond_4b
    iget-object v4, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v4, v4

    mul-int/2addr v4, v2

    new-array v2, v4, [B

    const/4 v4, 0x0

    const/4 v7, 0x0

    :goto_41
    iget-object v8, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    array-length v8, v8

    if-ge v4, v8, :cond_4d

    const/4 v8, 0x0

    :goto_42
    const/4 v9, 0x1

    if-ge v8, v3, :cond_4c

    add-int/lit8 v10, v7, 0x1

    iget-object v11, v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/PolynomialGF2mSmallM;->coefficients:[I

    aget v11, v11, v4

    ushr-int/2addr v11, v8

    int-to-byte v11, v11

    aput-byte v11, v2, v7

    const/16 v7, 0x8

    add-int/2addr v8, v7

    move v7, v10

    goto :goto_42

    :cond_4c
    add-int/2addr v4, v9

    goto :goto_41

    :cond_4d
    const/4 v9, 0x1

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encGp:[B

    iget-object v2, v6, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/Permutation;->perm:[I

    array-length v3, v2

    add-int/lit8 v4, v3, -0x1

    sget v5, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/IntegerFunctions;->$r8$clinit:I

    if-nez v4, :cond_4e

    const/4 v5, 0x1

    goto :goto_44

    :cond_4e
    if-gez v4, :cond_4f

    neg-int v4, v4

    :cond_4f
    const/4 v5, 0x0

    :goto_43
    if-lez v4, :cond_50

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/16 v6, 0x8

    ushr-int/2addr v4, v6

    goto :goto_43

    :cond_50
    :goto_44
    mul-int v4, v3, v5

    const/4 v6, 0x4

    add-int/2addr v4, v6

    new-array v4, v4, [B

    const/4 v7, 0x0

    invoke-static {v3, v4, v7}, Lorg/bouncycastle/pqc/legacy/math/linearalgebra/LittleEndianConversions;->I2OSP(I[BI)V

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v3, :cond_52

    aget v8, v2, v7

    mul-int v9, v7, v5

    add-int/2addr v9, v6

    const/4 v10, 0x1

    add-int/lit8 v11, v5, -0x1

    :goto_46
    if-ltz v11, :cond_51

    add-int v12, v9, v11

    const/16 v13, 0x8

    mul-int/lit8 v14, v11, 0x8

    ushr-int v14, v8, v14

    int-to-byte v14, v14

    aput-byte v14, v4, v12

    add-int/lit8 v11, v11, -0x1

    goto :goto_46

    :cond_51
    const/16 v13, 0x8

    add-int/2addr v7, v10

    goto :goto_45

    :cond_52
    iput-object v4, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->encP:[B

    iput-object v0, v1, Lorg/bouncycastle/pqc/asn1/McElieceCCA2PrivateKey;->digest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v2, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->mcElieceCca2:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v2

    :cond_53
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    if-eqz v1, :cond_54

    check-cast v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->privateKey:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->frodoOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v0

    :cond_54
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    if-eqz v1, :cond_55

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/saber/SABERPrivateKeyParameters;->privateKey:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->saberOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v2, v1}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v0

    :cond_55
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    if-eqz v1, :cond_56

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v1

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-direct {v0, v3, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_56
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    if-eqz v1, :cond_57

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getPublicKey()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;-><init>([B)V

    new-instance v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getSpolyf()[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getG()[B

    move-result-object v6

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getSpolyF()[B

    move-result-object v0

    invoke-direct {v4}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v7, 0x0

    iput v7, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    iput-object v5, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    iput-object v6, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    iput-object v0, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    iput-object v3, v4, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-direct {v0, v1, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_57
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    if-eqz v1, :cond_58

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->kyberOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v1, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v3

    :cond_58
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    if-eqz v1, :cond_59

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getEnca()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getRho()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->ntruprimeOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v3, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_59
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    if-eqz v1, :cond_5a

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getF()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getGinv()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getPk()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getRho()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->sntruprimeOids:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v0, v3, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0

    :cond_5a
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    if-eqz v1, :cond_5b

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->dilithiumOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getPublicKeyParameters()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v5, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iget-object v0, v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->rho:[B

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumPublicKeyParameters;->t1:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {v4, v1, v5, v2, v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;[B)V

    return-object v4

    :cond_5b
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    if-eqz v1, :cond_5c

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->bikeOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v1, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v3

    :cond_5c
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    if-eqz v1, :cond_5d

    check-cast v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->hqcOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;->sk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v1, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v3

    :cond_5d
    instance-of v1, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    if-eqz v1, :cond_5e

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    sget-object v4, Lorg/bouncycastle/pqc/crypto/util/Utils;->rainbowOids:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getEncoded()[B

    move-result-object v0

    new-instance v3, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v3, v1, v4, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v3

    :cond_5e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "key parameters not recognized"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
