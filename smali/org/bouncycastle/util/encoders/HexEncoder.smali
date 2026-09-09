.class public final Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final decodingTable:[B

.field public final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    const/16 v1, 0x66

    const/16 v2, 0x61

    const/16 v3, 0x62

    const/16 v4, 0x63

    const/16 v5, 0x64

    const/16 v6, 0x10

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    iput-object v6, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v6, 0x80

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    iget-object v8, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v9, v8

    if-ge v7, v9, :cond_0

    const/4 v9, -0x1

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v7, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v9, v7

    if-ge v6, v9, :cond_1

    aget-byte v7, v7, v6

    int-to-byte v9, v6

    aput-byte v9, v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget-byte p0, v8, v2

    const/16 v2, 0x41

    aput-byte p0, v8, v2

    aget-byte p0, v8, v3

    const/16 v2, 0x42

    aput-byte p0, v8, v2

    aget-byte p0, v8, v4

    const/16 v2, 0x43

    aput-byte p0, v8, v2

    aget-byte p0, v8, v5

    const/16 v2, 0x44

    aput-byte p0, v8, v2

    aget-byte p0, v8, v0

    const/16 v0, 0x45

    aput-byte p0, v8, v0

    aget-byte p0, v8, v1

    const/16 v0, 0x46

    aput-byte p0, v8, v0

    return-void

    nop

    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method


# virtual methods
.method public final decodeStrict(ILjava/lang/String;)[B
    .locals 6

    if-ltz p1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    if-ltz v0, :cond_3

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    ushr-int/lit8 p1, p1, 0x1

    new-array v0, p1, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    aget-byte v4, v5, v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v5, v3

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    if-ltz v3, :cond_0

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid characters encountered in Hex string"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid offset and/or length specified"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
