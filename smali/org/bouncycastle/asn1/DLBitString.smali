.class public final Lorg/bouncycastle/asn1/DLBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    return-void
.end method

.method public synthetic constructor <init>([BIB)V
    .locals 0

    iput p2, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    array-length v3, p0

    add-int/lit8 v4, v3, -0x1

    aget-byte v5, p0, v4

    shl-int v1, v2, v1

    and-int/2addr v1, v5

    int-to-byte v1, v1

    const/4 v2, 0x3

    if-ne v5, v1, :cond_0

    invoke-virtual {p1, p2, v2, p0}, Lcom/umeng/analytics/pro/ah;->writeEncodingDL(ZI[B)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, p2}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    invoke-virtual {p1, v3}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    invoke-virtual {p1, p0, v0, v4}, Lcom/umeng/analytics/pro/ah;->write([BII)V

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/pro/ah;->write(I)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x3

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-virtual {p1, p2, v0, p0}, Lcom/umeng/analytics/pro/ah;->writeEncodingDL(ZI[B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final encodeConstructed()Z
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final encodedLength(Z)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length p0, p0

    invoke-static {p0, p1}, Lcom/umeng/analytics/pro/ah;->getLengthOfEncodingDL(IZ)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLBitString;->$r8$classId:I

    return-object p0
.end method
