.class public final Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final hpk:[B

.field public final nonce:[B

.field public final rho:[B

.field public final s:[B

.field public final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->k:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "K: "

    const-string v0, " is not supported for Crystals Kyber"

    invoke-static {p1, p2, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    mul-int/lit16 p1, p1, 0x180

    add-int/lit8 v0, p1, 0x20

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;-><init>()V

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xofBlockBytes:I

    add-int/lit16 v2, v1, 0x1d8

    div-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x20

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    add-int/2addr p1, p1

    add-int/lit8 v0, p1, 0x20

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    add-int/lit8 v1, p1, 0x40

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    add-int/lit8 p1, p1, 0x60

    invoke-static {v1, p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->hpk:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->nonce:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->s:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->t:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;->rho:[B

    filled-new-array {v2, v3, p0, v0, v1}, [[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p0

    return-object p0
.end method
