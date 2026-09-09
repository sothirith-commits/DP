.class public final Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# instance fields
.field public final hash_algo:Lorg/bouncycastle/crypto/digests/LongDigest;

.field public final m:I

.field public final n:I

.field public final o1:I

.field public final o2:I

.field public final v1:I

.field public final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v1, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const/4 v4, 0x5

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {v0, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(II)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/16 p1, 0x60

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    const/16 p1, 0x24

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    const/16 p1, 0x40

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/digests/LongDigest;

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p1, 0x44

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    const/16 p1, 0x20

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    const/16 p1, 0x30

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    new-instance p1, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {p1}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    :goto_1
    iget p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    add-int/2addr p1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:I

    return-void
.end method
