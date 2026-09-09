.class public final Lorg/bouncycastle/asn1/DERVideotexString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final contents:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

    return-void
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERVideotexString;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/DERVideotexString;

    iget-object p1, p1, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/16 v0, 0x15

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

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

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERVideotexString;->contents:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method
