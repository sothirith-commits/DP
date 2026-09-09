.class public final Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;
.super Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$SubjectPublicKeyInfoConverter;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$FalconConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/chad/library/adapter4/loadState/LoadState;
    .locals 3

    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p0

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/Utils;->falconParams:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    const/4 v1, 0x1

    array-length v2, p0

    invoke-static {v1, p0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    iput-object p0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->H:[B

    return-object v0
.end method
