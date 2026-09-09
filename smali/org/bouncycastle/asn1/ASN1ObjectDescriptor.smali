.class public final Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERGraphicString;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    return-void
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 1

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    iget-object p1, p1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/DERGraphicString;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    const/16 p2, 0x19

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERGraphicString;->contents:[B

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p0}, Lcom/umeng/analytics/pro/ah;->writeEncodingDL(ZI[B)V

    return-void
.end method

.method public final encodeConstructed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final encodedLength(Z)I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/DERGraphicString;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    iget-object p0, p0, Lorg/bouncycastle/asn1/DERGraphicString;->contents:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    not-int p0, p0

    return p0
.end method

.method public final toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;->baseGraphicString:Lorg/bouncycastle/asn1/DERGraphicString;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
