.class public final Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field public F:[B

.field public f:[B

.field public g:[B

.field public publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

.field public version:I


# virtual methods
.method public final toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->f:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->g:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->F:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/FalconPrivateKey;->publicKey:Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;->h:[B

    invoke-direct {v1, p0}, Lorg/bouncycastle/pqc/asn1/FalconPublicKey;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
