.class public final Lorg/bouncycastle/asn1/ASN1Set$1;
.super Lorg/bouncycastle/asn1/ASN1UniversalType;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    iput p2, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->$r8$classId:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :pswitch_1
    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1OctetString()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1BitString()Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1Set$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :pswitch_0
    return-object p1

    :pswitch_1
    iget-object p0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->createPrimitive([BZ)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    new-instance p1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    return-object p1

    :pswitch_3
    iget-object p0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    new-instance p1, Lorg/bouncycastle/asn1/DERGraphicString;

    invoke-direct {p1, p0}, Lorg/bouncycastle/asn1/DERGraphicString;-><init>([B)V

    return-object p1

    :pswitch_4
    iget-object p0, p1, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
