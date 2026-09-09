.class public final Lorg/bouncycastle/asn1/ASN1UTCTime;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final contents:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    array-length p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    array-length p0, p1

    const/4 v2, 0x1

    if-le p0, v2, :cond_0

    aget-byte p0, p1, v2

    if-lt p0, v0, :cond_0

    if-gt p0, v1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "illegal characters in UTCTime string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "UTCTime string too short"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1UTCTime;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1UTCTime;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/16 v0, 0x17

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

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

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1UTCTime;->contents:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
