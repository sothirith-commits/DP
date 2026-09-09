.class public final Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/lms/LMSKeyParameters;
.source "SourceFile"


# static fields
.field public static final T1:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

.field public static final internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;


# instance fields
.field public final I:[B

.field public final masterSecret:[B

.field public final maxCacheR:I

.field public final maxQ:I

.field public final otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public final parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

.field public publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

.field public final q:I

.field public final tCache:Ljava/util/WeakHashMap;

.field public final tDigest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->T1:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    const/16 v2, 0x81

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    aput-object v0, v2, v1

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->q:I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxQ:I

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    add-int/2addr p2, v0

    shl-int p2, v0, p2

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxCacheR:I

    new-instance p2, Ljava/util/WeakHashMap;

    invoke-direct {p2}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tCache:Ljava/util/WeakHashMap;

    iget p2, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->m:I

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->digestOid:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2, p1}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->createDigest(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tDigest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .locals 8

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->paramBuilders:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters$1;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v0, 0x10

    new-array v5, v0, [B

    invoke-virtual {p0, v5}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gt v0, v1, :cond_1

    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    return-object p0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "secret length exceeded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "secret length less than zero"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "expected version 0 lms private key"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_5
    throw p0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot parse "

    invoke-static {v1, p0}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final calcT(I)[B
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->h:I

    const/4 v3, 0x1

    shl-int v2, v3, v2

    const/4 v4, 0x0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tDigest:Lorg/bouncycastle/crypto/Digest;

    if-lt v1, v2, :cond_7

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v7

    array-length v8, v7

    invoke-interface {v6, v4, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    invoke-static {v1, v6}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    const v7, 0xffff82

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/16 v7, -0x7d7e

    int-to-byte v7, v7

    invoke-interface {v6, v7}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    sub-int/2addr v1, v2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    invoke-static {v8, v7}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->createDigest(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v9

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)V

    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x80

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const v10, 0x8080

    int-to-byte v10, v10

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    const/16 v11, 0x16

    if-ge v10, v11, :cond_0

    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v10, v9

    invoke-interface {v7, v4, v9, v10}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->createDigest(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v10

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)V

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    invoke-interface {v10}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v13

    const/16 v14, 0x17

    add-int/2addr v13, v14

    :goto_1
    iget-object v15, v12, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    if-ge v11, v13, :cond_1

    invoke-virtual {v15, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v11, 0x16

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->createDigest(ILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    shl-int v12, v3, v12

    sub-int/2addr v12, v3

    move v13, v4

    move v15, v13

    :goto_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    if-ge v13, v3, :cond_6

    add-int/lit8 v3, v3, -0x1

    if-ge v13, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_3

    :cond_2
    move v3, v4

    :goto_3
    array-length v4, v11

    sub-int/2addr v4, v14

    invoke-interface {v9}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    if-lt v4, v14, :cond_5

    array-length v4, v5

    const/4 v14, 0x0

    invoke-interface {v9, v14, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    ushr-int/lit8 v4, v1, 0x18

    int-to-byte v4, v4

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v4, v1, 0x10

    int-to-byte v4, v4

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v4, v1

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    ushr-int/lit8 v4, v15, 0x8

    int-to-byte v4, v4

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v4, v15

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/4 v4, -0x1

    invoke-interface {v9, v4}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v4, v2

    const/4 v14, 0x0

    invoke-interface {v9, v14, v2, v4}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    const/16 v4, 0x17

    invoke-interface {v9, v11, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-eqz v3, :cond_3

    add-int/lit8 v15, v15, 0x1

    :cond_3
    int-to-short v3, v13

    ushr-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    const/16 v14, 0x14

    aput-byte v4, v11, v14

    const/16 v4, 0x15

    int-to-byte v3, v3

    aput-byte v3, v11, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v12, :cond_4

    int-to-byte v4, v3

    const/16 v14, 0x16

    aput-byte v4, v11, v14

    array-length v4, v11

    const/4 v14, 0x0

    invoke-interface {v10, v14, v11, v4}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    const/16 v4, 0x17

    invoke-interface {v10, v11, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/16 v4, 0x17

    invoke-interface {v7, v4, v11, v8}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    add-int/lit8 v13, v13, 0x1

    move v14, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "target length is less than digest size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-interface {v7}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-interface {v7, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-interface {v6, v2, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v6, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0

    :cond_7
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->internedKeys:[Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    const/16 v4, 0x81

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxCacheR:I

    if-ge v2, v7, :cond_9

    if-ge v2, v4, :cond_8

    aget-object v8, v3, v2

    goto :goto_5

    :cond_8
    new-instance v8, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    invoke-direct {v8, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;-><init>(I)V

    :goto_5
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->findT(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;)[B

    move-result-object v8

    :goto_6
    const/4 v9, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->calcT(I)[B

    move-result-object v8

    goto :goto_6

    :goto_7
    add-int/2addr v2, v9

    if-ge v2, v7, :cond_b

    if-ge v2, v4, :cond_a

    aget-object v2, v3, v2

    goto :goto_8

    :cond_a
    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;-><init>(I)V

    move-object v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->findT(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;)[B

    move-result-object v0

    goto :goto_9

    :cond_b
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->calcT(I)[B

    move-result-object v0

    :goto_9
    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v6, v4, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    invoke-static {v1, v6}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    const v1, 0xffff83

    int-to-byte v1, v1

    invoke-interface {v6, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/16 v1, -0x7c7d

    int-to-byte v1, v1

    invoke-interface {v6, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    array-length v1, v8

    const/4 v2, 0x0

    invoke-interface {v6, v2, v8, v1}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    array-length v1, v0

    invoke-interface {v6, v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update(I[BI)V

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    invoke-interface {v6, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    if-eq v3, v2, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->q:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxQ:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxQ:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    :goto_0
    return v1

    :cond_6
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    :goto_1
    return v1

    :cond_8
    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_2
    return v1
.end method

.method public final findT(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tCache:Ljava/util/WeakHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tCache:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;->index:I

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->calcT(I)[B

    move-result-object v1

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->tCache:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getEncoded()[B
    .locals 2

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->type:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxQ:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    array-length v1, p0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)V

    invoke-virtual {v0, p0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)V

    iget-object p0, v0, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->T1:Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->findT(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters$CacheKey;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->publicKey:Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->q:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->I:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->otsParameters:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->maxQ:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->masterSecret:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method
