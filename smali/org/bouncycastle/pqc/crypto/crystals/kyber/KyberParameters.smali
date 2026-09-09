.class public final Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final kyber1024:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field public static final kyber512:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field public static final kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;


# instance fields
.field public final k:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber512"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber512:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber768"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const-string v1, "kyber1024"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber1024:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->k:I

    return-void
.end method
