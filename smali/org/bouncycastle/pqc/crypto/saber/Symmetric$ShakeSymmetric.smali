.class public final Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    return-void
.end method
