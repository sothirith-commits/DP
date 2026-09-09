.class public final Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# instance fields
.field public final pubData:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPublicKeyParameters;->pubData:[B

    return-void
.end method
