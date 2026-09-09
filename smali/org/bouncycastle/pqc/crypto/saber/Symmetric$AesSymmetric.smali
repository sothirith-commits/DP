.class public final Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    new-instance p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    new-instance p0, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    new-instance p0, Lorg/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    return-void
.end method
