.class public abstract Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;
.super Lcom/chad/library/adapter4/loadState/LoadState;
.source "SourceFile"


# instance fields
.field public final params:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chad/library/adapter4/loadState/LoadState;-><init>(Z)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyParameters;->params:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
