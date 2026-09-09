.class public final Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void
.end method
