.class public final Lorg/bouncycastle/crypto/digests/SHA256Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SourceFile"


# static fields
.field public static final K:[I


# instance fields
.field public H1:I

.field public H2:I

.field public H3:I

.field public H4:I

.field public H5:I

.field public H6:I

.field public H7:I

.field public H8:I

.field public final X:[I

.field public xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(I)V

    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v0, 0x100

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(ILorg/bouncycastle/crypto/Digest;)Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    return-void
.end method

.method public static Ch(III)I
    .locals 0

    and-int/2addr p1, p0

    not-int p0, p0

    and-int/2addr p0, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method public static Maj(III)I
    .locals 1

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    and-int/2addr p0, p2

    or-int/2addr p0, v0

    return p0
.end method

.method public static Sum0(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 p0, p0, 0xa

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method

.method public static Sum1(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 p0, p0, 0x7

    or-int/2addr p0, v1

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final doFinal([BI)I
    .locals 3

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    const/16 v2, -0x80

    :goto_0
    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->update(B)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processLength(J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 p2, p2, 0x1c

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    const/16 p0, 0x20

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-256"

    return-object p0
.end method

.method public final getDigestSize()I
    .locals 0

    const/16 p0, 0x20

    return p0
.end method

.method public final processBlock()V
    .locals 19

    move-object/from16 v0, p0

    const/16 v1, 0x10

    move v2, v1

    :goto_0
    const/16 v3, 0x3f

    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, v2, -0x2

    aget v3, v4, v3

    ushr-int/lit8 v5, v3, 0x11

    shl-int/lit8 v6, v3, 0xf

    or-int/2addr v5, v6

    ushr-int/lit8 v6, v3, 0x13

    shl-int/lit8 v7, v3, 0xd

    or-int/2addr v6, v7

    xor-int/2addr v5, v6

    ushr-int/lit8 v3, v3, 0xa

    xor-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x7

    aget v5, v4, v5

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0xf

    aget v5, v4, v5

    ushr-int/lit8 v6, v5, 0x7

    shl-int/lit8 v7, v5, 0x19

    or-int/2addr v6, v7

    ushr-int/lit8 v7, v5, 0x12

    shl-int/lit8 v8, v5, 0xe

    or-int/2addr v7, v8

    xor-int/2addr v6, v7

    ushr-int/lit8 v5, v5, 0x3

    xor-int/2addr v5, v6

    add-int/2addr v3, v5

    add-int/lit8 v5, v2, -0x10

    aget v5, v4, v5

    add-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v3, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v5, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v6, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v7, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v8, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v9, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v10, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    :goto_1
    const/16 v14, 0x8

    if-ge v12, v14, :cond_1

    invoke-static {v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v15

    invoke-static {v7, v8, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v16

    add-int v16, v16, v15

    sget-object v15, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v17, v15, v13

    add-int v16, v16, v17

    aget v17, v4, v13

    add-int v16, v16, v17

    add-int v16, v16, v10

    add-int v6, v6, v16

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v17

    add-int v17, v17, v10

    add-int v10, v17, v16

    add-int/lit8 v16, v13, 0x1

    invoke-static {v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v9

    add-int v5, v5, v18

    invoke-static {v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v9

    invoke-static {v10, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v9

    add-int v9, v16, v18

    add-int/lit8 v16, v13, 0x2

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v8

    add-int v3, v3, v18

    invoke-static {v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v8

    invoke-static {v9, v10, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v8

    add-int v8, v16, v18

    add-int/lit8 v16, v13, 0x3

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v7

    add-int v2, v2, v18

    invoke-static {v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v7

    invoke-static {v8, v9, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v7

    add-int v7, v16, v18

    add-int/lit8 v16, v13, 0x4

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v2, v3, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v6

    add-int v10, v10, v18

    invoke-static {v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v6

    invoke-static {v7, v8, v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v6

    add-int v6, v16, v18

    add-int/lit8 v16, v13, 0x5

    invoke-static {v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v10, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v5

    add-int v9, v9, v18

    invoke-static {v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v5

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v5

    add-int v5, v16, v18

    add-int/lit8 v16, v13, 0x6

    invoke-static {v9}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v9, v10, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v17, v15, v16

    add-int v18, v18, v17

    aget v16, v4, v16

    add-int v18, v18, v16

    add-int v18, v18, v3

    add-int v8, v8, v18

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v3

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v16

    add-int v16, v16, v3

    add-int v3, v16, v18

    add-int/lit8 v16, v13, 0x7

    invoke-static {v8}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v17

    invoke-static {v8, v9, v10}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v18

    add-int v18, v18, v17

    aget v15, v15, v16

    add-int v18, v18, v15

    aget v15, v4, v16

    add-int v18, v18, v15

    add-int v18, v18, v2

    add-int v7, v7, v18

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v2

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v15

    add-int/2addr v15, v2

    add-int v2, v15, v18

    add-int/2addr v13, v14

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_1
    iget v12, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v12, v2

    iput v12, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v2, v6

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v2, v7

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v2, v8

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v2, v9

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v2, v10

    iput v2, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v11, v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v0, v11

    :goto_2
    if-ge v0, v1, :cond_2

    aput v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final processLength(J)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_0
    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    iget-object p0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    aput p1, p0, v0

    return-void
.end method

.method public final processWord([BI)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result p1

    iget-object p2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput p1, p2, v0

    iget p1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 p2, 0x10

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBufOff:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x6a09e667

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const v1, -0x4498517b

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const v1, 0x3c6ef372

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const v1, -0x5ab00ac6

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const v1, 0x510e527f

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const v1, -0x64fa9774

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const v1, 0x1f83d9ab

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const v1, 0x5be0cd19

    iput v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    move v1, v0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_1

    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
