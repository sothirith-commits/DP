.class public abstract Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public keyAndMask:I

.field public final layerAddress:I

.field public treeAddress:J

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget p1, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 4

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    const/4 v3, 0x4

    invoke-static {v3, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(IJ[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    const/16 v2, 0xc

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    const/16 v1, 0x1c

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-object v0
.end method
