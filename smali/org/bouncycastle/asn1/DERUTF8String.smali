.class public final Lorg/bouncycastle/asn1/DERUTF8String;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final contents:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    return-void
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERUTF8String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/DERUTF8String;

    iget-object p1, p1, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/16 v0, 0xc

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/umeng/analytics/pro/ah;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public final encodeConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final encodedLength(Z)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    sget v0, Lorg/bouncycastle/util/Strings;->$r8$clinit:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERUTF8String;->contents:[B

    array-length v0, p0

    new-array v1, v0, [C

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_8

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    const/4 v7, -0x1

    if-ltz v4, :cond_1

    if-lt v5, v0, :cond_0

    :goto_1
    move v5, v7

    goto :goto_4

    :cond_0
    add-int/lit8 v7, v5, 0x1

    int-to-char v4, v4

    aput-char v4, v1, v5

    move v4, v6

    move v5, v7

    goto :goto_0

    :cond_1
    sget-object v8, Lorg/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v4, v4, 0x7f

    aget-short v4, v8, v4

    ushr-int/lit8 v8, v4, 0x8

    int-to-byte v4, v4

    :goto_2
    if-ltz v4, :cond_3

    if-lt v6, v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v6, 0x1

    aget-byte v6, p0, v6

    shl-int/lit8 v8, v8, 0x6

    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v8, v10

    sget-object v10, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    add-int/2addr v4, v6

    aget-byte v4, v10, v4

    move v6, v9

    goto :goto_2

    :cond_3
    const/4 v9, -0x2

    if-ne v4, v9, :cond_4

    goto :goto_1

    :cond_4
    const v4, 0xffff

    if-gt v8, v4, :cond_6

    if-lt v5, v0, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v5, 0x1

    int-to-char v7, v8

    aput-char v7, v1, v5

    move v5, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v0, -0x1

    if-lt v5, v4, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v7, v8, 0xa

    const v9, 0xd7c0

    add-int/2addr v7, v9

    int-to-char v7, v7

    aput-char v7, v1, v5

    add-int/lit8 v5, v5, 0x2

    and-int/lit16 v7, v8, 0x3ff

    const v8, 0xdc00

    or-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v4

    :goto_3
    move v4, v6

    goto :goto_0

    :cond_8
    :goto_4
    if-ltz v5, :cond_9

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTF-8 input"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
