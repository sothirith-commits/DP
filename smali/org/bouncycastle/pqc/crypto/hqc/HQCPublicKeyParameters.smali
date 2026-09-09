.class public final Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.source "SourceFile"


# instance fields
.field public final pk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;->pk:[B

    return-void
.end method
