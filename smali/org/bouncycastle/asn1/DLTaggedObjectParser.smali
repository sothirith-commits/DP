.class public final Lorg/bouncycastle/asn1/DLTaggedObjectParser;
.super Lorg/bouncycastle/asn1/BERTaggedObjectParser;
.source "SourceFile"


# instance fields
.field public final _constructed:Z


# direct methods
.method public constructor <init>(IIZLorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lorg/bouncycastle/asn1/BERTaggedObjectParser;-><init>(IILorg/bouncycastle/asn1/ASN1StreamParser;)V

    iput-boolean p3, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    return-void
.end method


# virtual methods
.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 9

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/DLTaggedObjectParser;->_constructed:Z

    const/4 v2, 0x4

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget v5, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagClass:I

    iget v6, p0, Lorg/bouncycastle/asn1/BERTaggedObjectParser;->_tagNo:I

    if-nez v0, :cond_0

    iget-object p0, v1, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    check-cast p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    new-instance v7, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v7, p0}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    const/4 p0, 0x0

    move-object v1, v0

    move v3, v5

    move v4, v6

    move-object v5, v7

    move v6, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readVector()Lorg/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object p0

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    const/4 v4, 0x3

    const/4 v8, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DLFactory;->createSequence(Lorg/bouncycastle/asn1/ASN1EncodableVector;)Lorg/bouncycastle/asn1/DLSequence;

    move-result-object p0

    const/4 v7, 0x0

    move-object v1, v0

    move v3, v5

    move v4, v6

    move-object v5, p0

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V

    :goto_0
    return-object v0
.end method
