.class public final Lorg/bouncycastle/asn1/DERGeneralizedTime;
.super Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
.source "SourceFile"


# virtual methods
.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/16 v0, 0x18

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/umeng/analytics/pro/ah;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public final encodedLength(Z)I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDERTime()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0
.end method

.method public final getDERTime()[B
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->contents:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_8

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->isDigit(I)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v3

    :goto_0
    array-length v1, v0

    if-eq p0, v1, :cond_3

    aget-byte v1, v0, p0

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2

    const/16 v1, 0xe

    if-ne p0, v1, :cond_2

    array-length p0, v0

    add-int/lit8 p0, p0, -0x2

    :goto_1
    if-lez p0, :cond_0

    aget-byte v1, v0, p0

    const/16 v5, 0x30

    if-ne v1, v5, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_0
    aget-byte v1, v0, p0

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, p0, 0x1

    new-array v1, v1, [B

    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v1, p0

    return-object v1

    :cond_1
    add-int/lit8 v1, p0, 0x2

    new-array v1, v1, [B

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, v3, v1, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-byte v2, v1, p0

    return-object v1

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    array-length p0, v0

    add-int/lit8 p0, p0, 0x2

    new-array p0, p0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lorg/bouncycastle/util/Strings;->$r8$clinit:I

    const/4 v1, 0x3

    new-array v2, v1, [B

    move v4, v3

    :goto_2
    if-eq v4, v1, :cond_5

    const-string v5, "00Z"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_6
    array-length p0, v0

    add-int/lit8 p0, p0, 0x4

    new-array p0, p0, [B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v3, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lorg/bouncycastle/util/Strings;->$r8$clinit:I

    const/4 v1, 0x5

    new-array v2, v1, [B

    move v4, v3

    :goto_3
    if-eq v4, v1, :cond_7

    const-string v5, "0000Z"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_8
    return-object v0
.end method

.method public final toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public final toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
