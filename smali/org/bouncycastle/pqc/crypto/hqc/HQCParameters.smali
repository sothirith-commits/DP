.class public final Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final hqc128:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

.field public static final hqc192:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

.field public static final hqc256:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const-string v1, "hqc-128"

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc128:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const-string v1, "hqc-192"

    const/16 v2, 0x280

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc192:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    const-string v1, "hqc-256"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->hqc256:Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->name:Ljava/lang/String;

    div-int/lit16 p2, p2, 0x80

    int-to-double p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    return-void
.end method
