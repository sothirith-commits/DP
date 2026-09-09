.class public final Lorg/bouncycastle/crypto/digests/SHA512Digest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(I)V

    const/16 v0, 0x100

    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(ILorg/bouncycastle/crypto/Digest;)Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    return-void
.end method


# virtual methods
.method public final doFinal([BI)I
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->finish()V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    invoke-static {p2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {p2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    const/16 p0, 0x40

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-512"

    return-object p0
.end method

.method public final getDigestSize()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public final reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method
