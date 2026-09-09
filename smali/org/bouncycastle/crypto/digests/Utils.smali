.class public final Lorg/bouncycastle/crypto/digests/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultProperties(ILorg/bouncycastle/crypto/Digest;)Lcom/google/gson/internal/ConstructorConstructor$3;
    .locals 1

    new-instance p0, Lcom/google/gson/internal/ConstructorConstructor$3;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
