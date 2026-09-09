.class public final Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field public static final ALGORITHMS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v16, "HQC"

    const-string v17, "Rainbow"

    const-string v1, "SPHINCS"

    const-string v2, "LMS"

    const-string v3, "NH"

    const-string v4, "XMSS"

    const-string v5, "SPHINCSPlus"

    const-string v6, "CMCE"

    const-string v7, "Frodo"

    const-string v8, "SABER"

    const-string v9, "Picnic"

    const-string v10, "NTRU"

    const-string v11, "Falcon"

    const-string v12, "Kyber"

    const-string v13, "Dilithium"

    const-string v14, "NTRUPrime"

    const-string v15, "BIKE"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/BouncyCastlePQCProvider;->ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide v0, 0x3ffc7ae147ae147bL    # 1.78

    const-string v2, "BouncyCastle Post-Quantum Security Provider v1.78"

    const-string v3, "BCPQC"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    new-instance v0, Landroid/sun/security/ec/ECKeyFactory$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/sun/security/ec/ECKeyFactory$2;-><init>(ILjava/io/Serializable;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method
