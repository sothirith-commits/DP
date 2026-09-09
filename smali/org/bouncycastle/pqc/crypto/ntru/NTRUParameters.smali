.class public final Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ntruhps2048509:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

.field public static final ntruhps2048677:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

.field public static final ntruhps40961229:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

.field public static final ntruhps4096821:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

.field public static final ntruhrss1373:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

.field public static final ntruhrss701:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS2048509;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS2048509;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps2048509:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS2048677;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS2048677;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps2048677:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS4096821;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS4096821;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps4096821:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS40961229;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPS40961229;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhps40961229:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS701;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS701;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhrss701:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    new-instance v1, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS1373;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS1373;-><init>()V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->ntruhrss1373:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    return-void
.end method
