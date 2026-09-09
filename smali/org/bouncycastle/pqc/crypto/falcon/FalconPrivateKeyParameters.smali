.class public final Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final F:[B

.field public final f:[B

.field public final g:[B

.field public final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    return-void
.end method


# virtual methods
.method public final getG()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->g:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getPublicKey()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->pk:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSpolyF()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->F:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public final getSpolyf()[B
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->f:[B

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method
