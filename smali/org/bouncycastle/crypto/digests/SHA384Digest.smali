.class public final Lorg/bouncycastle/crypto/digests/SHA384Digest;
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

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;->reset()V

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

    add-int/lit8 p2, p2, 0x28

    invoke-static {p2, v0, v1, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public final getAlgorithmName()Ljava/lang/String;
    .locals 0

    const-string p0, "SHA-384"

    return-object p0
.end method

.method public final getDigestSize()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public final reset()V
    .locals 2

    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method
