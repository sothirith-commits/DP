.class public final Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

.field public final sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V
    .locals 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    iget-object p1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->engineProvider:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters$Sha2EngineProvider;->getN()I

    move-result p1

    array-length v0, p2

    mul-int/lit8 v1, p1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    const/4 v2, 0x0

    invoke-static {v2, p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v2

    mul-int/lit8 v3, p1, 0x2

    invoke-static {p1, p2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    mul-int/lit8 p1, p1, 0x3

    invoke-static {v3, p2, p1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object v2

    invoke-static {p1, p2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange(I[BI)[B

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "private key encoding does not match parameters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Ljava/lang/Object;Z)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    invoke-direct {p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    invoke-direct {p1, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void
.end method


# virtual methods
.method public final getEncoded()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    filled-new-array {v1, v0, v2, p0}, [[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object p0

    return-object p0
.end method
