.class public final Lorg/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decodingTable:[B

.field public final encodingTable:[B

.field public final padding:B


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v3, v1

    if-ge v0, v3, :cond_1

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method


# virtual methods
.method public final encode([BILjava/io/ByteArrayOutputStream;)I
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-gez p2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x48

    new-array v2, v2, [B

    move/from16 v3, p2

    move v4, v1

    :goto_0
    const/4 v5, 0x2

    if-lez v3, :cond_4

    const/16 v6, 0x36

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    add-int/lit8 v8, v7, -0x2

    move v10, v1

    move v9, v4

    :goto_1
    iget-object v11, v0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    if-ge v9, v8, :cond_1

    add-int/lit8 v12, v9, 0x1

    aget-byte v13, p1, v9

    add-int/lit8 v14, v9, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v9, v9, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v15, v14, 0xff

    add-int/lit8 v16, v10, 0x1

    ushr-int/lit8 v17, v13, 0x2

    and-int/lit8 v17, v17, 0x3f

    aget-byte v17, v11, v17

    aput-byte v17, v2, v10

    add-int/lit8 v17, v10, 0x2

    shl-int/lit8 v13, v13, 0x4

    ushr-int/lit8 v18, v12, 0x4

    or-int v13, v13, v18

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v11, v13

    aput-byte v13, v2, v16

    add-int/lit8 v13, v10, 0x3

    shl-int/2addr v12, v5

    ushr-int/lit8 v15, v15, 0x6

    or-int/2addr v12, v15

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v11, v12

    aput-byte v12, v2, v17

    add-int/lit8 v10, v10, 0x4

    and-int/lit8 v12, v14, 0x3f

    aget-byte v11, v11, v12

    aput-byte v11, v2, v13

    goto :goto_1

    :cond_1
    sub-int v4, v9, v4

    sub-int v4, v6, v4

    iget-byte v8, v0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/4 v12, 0x1

    if-eq v4, v12, :cond_3

    if-eq v4, v5, :cond_2

    :goto_2
    move-object/from16 v4, p3

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v9, 0x1

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v12, v10, 0x1

    ushr-int/lit8 v13, v9, 0x2

    and-int/lit8 v13, v13, 0x3f

    aget-byte v13, v11, v13

    aput-byte v13, v2, v10

    add-int/lit8 v13, v10, 0x2

    shl-int/lit8 v9, v9, 0x4

    ushr-int/lit8 v14, v4, 0x4

    or-int/2addr v9, v14

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v11, v9

    aput-byte v9, v2, v12

    add-int/lit8 v9, v10, 0x3

    shl-int/2addr v4, v5

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v11, v4

    aput-byte v4, v2, v13

    add-int/lit8 v10, v10, 0x4

    aput-byte v8, v2, v9

    goto :goto_2

    :cond_3
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v10, 0x1

    ushr-int/lit8 v9, v4, 0x2

    and-int/lit8 v9, v9, 0x3f

    aget-byte v9, v11, v9

    aput-byte v9, v2, v10

    add-int/lit8 v9, v10, 0x2

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v11, v4

    aput-byte v4, v2, v5

    add-int/lit8 v4, v10, 0x3

    aput-byte v8, v2, v9

    add-int/lit8 v10, v10, 0x4

    aput-byte v8, v2, v4

    goto :goto_2

    :goto_3
    invoke-virtual {v4, v2, v1, v10}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v3, v6

    move v4, v7

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
