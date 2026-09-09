.class public final Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# instance fields
.field public final secData:[S


# direct methods
.method public constructor <init>([S)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/newhope/NHPrivateKeyParameters;->secData:[S

    return-void
.end method
