.class public final Landroid/sun/security/util/BitArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NYBBLE:[[B


# instance fields
.field public length:I

.field public repn:[B


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    new-array v10, v0, [B

    fill-array-data v10, :array_9

    new-array v11, v0, [B

    fill-array-data v11, :array_a

    new-array v12, v0, [B

    fill-array-data v12, :array_b

    new-array v13, v0, [B

    fill-array-data v13, :array_c

    new-array v14, v0, [B

    fill-array-data v14, :array_d

    new-array v15, v0, [B

    fill-array-data v15, :array_e

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[B

    move-result-object v0

    sput-object v0, Landroid/sun/security/util/BitArray;->NYBBLE:[[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x30t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_4
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_5
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_6
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_7
    .array-data 1
        0x30t
        0x31t
        0x31t
        0x31t
    .end array-data

    :array_8
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x30t
    .end array-data

    :array_9
    .array-data 1
        0x31t
        0x30t
        0x30t
        0x31t
    .end array-data

    :array_a
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x30t
    .end array-data

    :array_b
    .array-data 1
        0x31t
        0x30t
        0x31t
        0x31t
    .end array-data

    :array_c
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x30t
    .end array-data

    :array_d
    .array-data 1
        0x31t
        0x31t
        0x30t
        0x31t
    .end array-data

    :array_e
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x30t
    .end array-data

    :array_f
    .array-data 1
        0x31t
        0x31t
        0x31t
        0x31t
    .end array-data
.end method

.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_2

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    if-lt v0, p2, :cond_1

    iput p2, p0, Landroid/sun/security/util/BitArray;->length:I

    add-int/lit8 v0, p2, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, p2

    const/16 p2, 0xff

    shl-int/2addr p2, v1

    int-to-byte p2, p2

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/sun/security/util/BitArray;->repn:[B

    const/4 p0, 0x0

    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    aget-byte p0, v1, v0

    and-int/2addr p0, p2

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Byte array too short to represent bit array of given length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative length for BitArray"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 2

    new-instance v0, Landroid/sun/security/util/BitArray;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v1, p0, Landroid/sun/security/util/BitArray;->length:I

    iput v1, v0, Landroid/sun/security/util/BitArray;->length:I

    iget-object p0, p0, Landroid/sun/security/util/BitArray;->repn:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    iput-object p0, v0, Landroid/sun/security/util/BitArray;->repn:[B

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    instance-of v2, p1, Landroid/sun/security/util/BitArray;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroid/sun/security/util/BitArray;

    iget v2, p1, Landroid/sun/security/util/BitArray;->length:I

    iget v3, p0, Landroid/sun/security/util/BitArray;->length:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/sun/security/util/BitArray;->repn:[B

    array-length v4, v3

    if-ge v2, v4, :cond_4

    aget-byte v3, v3, v2

    iget-object v4, p1, Landroid/sun/security/util/BitArray;->repn:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/sun/security/util/BitArray;->repn:[B

    array-length v3, v2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Landroid/sun/security/util/BitArray;->length:I

    xor-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/sun/security/util/BitArray;->repn:[B

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x7

    if-ge v2, v4, :cond_1

    sget-object v4, Landroid/sun/security/util/BitArray;->NYBBLE:[[B

    aget-byte v5, v3, v2

    const/4 v7, 0x4

    shr-int/2addr v5, v7

    and-int/lit8 v5, v5, 0xf

    aget-object v5, v4, v5

    invoke-virtual {v0, v5, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    aget-byte v3, v3, v2

    and-int/lit8 v3, v3, 0xf

    aget-object v3, v4, v3

    invoke-virtual {v0, v3, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    rem-int/lit8 v3, v2, 0x8

    if-ne v3, v6, :cond_0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v3

    sub-int/2addr v1, v5

    mul-int/lit8 v1, v1, 0x8

    :goto_2
    iget v2, p0, Landroid/sun/security/util/BitArray;->length:I

    if-ge v1, v2, :cond_4

    if-ltz v1, :cond_3

    if-ge v1, v2, :cond_3

    div-int/lit8 v2, v1, 0x8

    iget-object v3, p0, Landroid/sun/security/util/BitArray;->repn:[B

    aget-byte v2, v3, v2

    rem-int/lit8 v3, v1, 0x8

    rsub-int/lit8 v3, v3, 0x7

    shl-int v3, v5, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    const/16 v2, 0x31

    goto :goto_3

    :cond_2
    const/16 v2, 0x30

    :goto_3
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method
