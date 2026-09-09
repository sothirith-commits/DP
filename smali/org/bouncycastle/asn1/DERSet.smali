.class public final Lorg/bouncycastle/asn1/DERSet;
.super Lorg/bouncycastle/asn1/ASN1Set;
.source "SourceFile"


# instance fields
.field public contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method


# virtual methods
.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 8

    const/16 v0, 0x31

    invoke-virtual {p1, v0, p2}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ah;->getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;

    move-result-object p2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v2, :cond_2

    const/16 v2, 0x10

    if-le v1, v2, :cond_0

    goto :goto_2

    :cond_0
    new-array v2, v1, [Lorg/bouncycastle/asn1/ASN1Primitive;

    move v5, v3

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_1

    aget-object v7, v0, v5

    invoke-interface {v7}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v7, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iput v6, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    invoke-virtual {p1, v6}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object p0, v2, v3

    invoke-virtual {p0, p2, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength$2()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object p0, v0, v3

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0, p2, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final encodedLength(Z)I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength$2()I

    move-result p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0
.end method

.method public final getContentsLength$2()I
    .locals 6

    iget v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-interface {v4}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return p0
.end method

.method public final toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
