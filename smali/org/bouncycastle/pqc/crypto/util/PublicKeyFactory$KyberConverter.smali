.class public final Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;
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

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/util/PublicKeyFactory$KyberConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPublicKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lcom/chad/library/adapter4/loadState/LoadState;
    .locals 3

    iget-object p0, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->algorithm:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/util/Utils;->kyberParams:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->getInstance(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/pqc/asn1/KyberPublicKey;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->t:[B

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iget-object v0, v0, Lorg/bouncycastle/pqc/asn1/KyberPublicKey;->rho:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iget-object p1, p1, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->keyData:Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1BitString;->getOctets()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    return-object v0
.end method
