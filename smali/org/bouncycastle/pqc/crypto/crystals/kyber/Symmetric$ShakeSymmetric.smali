.class public final Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final xofBlockBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;->xofBlockBytes:I

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-void
.end method
