.class public final Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;
.super Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
.source "SourceFile"


# instance fields
.field public treeHeight:I

.field public treeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    return-void
.end method


# virtual methods
.method public final build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    return-object v0
.end method
