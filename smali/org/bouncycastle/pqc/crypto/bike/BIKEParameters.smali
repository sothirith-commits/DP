.class public final Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bike128:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

.field public static final bike192:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

.field public static final bike256:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;


# instance fields
.field public final name:Ljava/lang/String;

.field public final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const-string v1, "bike128"

    const/16 v2, 0x3023

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike128:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const-string v1, "bike192"

    const/16 v2, 0x6053

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike192:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    const-string v1, "bike256"

    const v2, 0xa00d

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->bike256:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->r:I

    new-instance p0, Lcom/bumptech/glide/GlideBuilder$1;

    invoke-direct {p0, p2}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(I)V

    return-void
.end method
