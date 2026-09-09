.class public final Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
.super Lorg/bouncycastle/asn1/ASN1Object;
.source "SourceFile"


# instance fields
.field public PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

.field public skprf:[B

.field public skseed:[B

.field public version:I


# direct methods
.method public static getInstance(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;
    .locals 6

    instance-of v0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    new-instance v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v3

    iput v3, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    iget-object v4, v4, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    iput-object v4, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    instance-of v4, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    if-eqz v4, :cond_1

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iget-object v2, v2, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkseed:[B

    invoke-virtual {p0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    iget-object p0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkroot:[B

    :cond_2
    :goto_0
    iput-object v0, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    :cond_3
    return-object v1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unrecognized version"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iget v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->version:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skseed:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->skprf:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPrivateKey;->PublicKey:Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    if-eqz p0, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;

    iget-object v2, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkseed:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iget-object p0, p0, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkroot:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object v2, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkseed:[B

    iput-object p0, v1, Lorg/bouncycastle/pqc/asn1/SPHINCSPLUSPublicKey;->pkroot:[B

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0
.end method
