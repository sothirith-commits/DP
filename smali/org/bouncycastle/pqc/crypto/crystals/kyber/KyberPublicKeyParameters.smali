.class public final Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final rho:[B

.field public final t:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    invoke-static {v0, p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    array-length p1, p2

    add-int/lit8 p1, p1, -0x20

    array-length v0, p2

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->t:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->rho:[B

    return-void
.end method
