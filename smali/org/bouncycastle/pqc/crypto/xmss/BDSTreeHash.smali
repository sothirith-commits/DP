.class public final Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private finished:Z

.field private height:I

.field private final initialHeight:I

.field private initialized:Z

.field private nextIndex:I

.field private tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->clone()Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;

    move-result-object p0

    return-object p0
.end method

.method public final clone()Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iput-object v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    iput-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    iget-boolean p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    iput-boolean p0, v0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    return p0

    :cond_1
    :goto_0
    const p0, 0x7fffffff

    return p0
.end method

.method public final getIndexLeaf()I
    .locals 0

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    return p0
.end method

.method public final getTailNode()Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    return-object p0
.end method

.method public final initialize(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    return-void
.end method

.method public final isFinished()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    return p0
.end method

.method public final isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    return p0
.end method

.method public final setNode(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    :cond_0
    return-void
.end method

.method public final update(Ljava/util/Stack;Landroidx/emoji2/text/MetadataRepo;[B[BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 7

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialized:Z

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    iget v1, p5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v1, p5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->otsAddress:I

    iget v1, p5, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->chainAddress:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->chainAddress:I

    iget v1, p5, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->hashAddress:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->hashAddress:I

    iget p5, p5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p5, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    invoke-direct {p5, v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v1, p5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v2, p5, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    iput v4, v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput-wide v2, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {p2, p4, p5}, Landroidx/emoji2/text/MetadataRepo;->getWOTSPlusSecretKey([BLorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroidx/emoji2/text/MetadataRepo;->importKeys([B[B)V

    invoke-virtual {p2, p5}, Landroidx/emoji2/text/MetadataRepo;->getPublicKey(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lcom/umeng/analytics/pro/ah;

    move-result-object p3

    invoke-static {p2, p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->lTree(Landroidx/emoji2/text/MetadataRepo;Lcom/umeng/analytics/pro/ah;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p3

    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p4

    const/4 p5, 0x1

    iget v0, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    iget-wide v4, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    if-nez p4, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v6

    if-ne p4, v6, :cond_0

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-eq p4, v6, :cond_0

    new-instance p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v1, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput-wide v4, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput v3, p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    iput v2, p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iput v0, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {p2, p4, p3, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Landroidx/emoji2/text/MetadataRepo;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p3

    new-instance p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v1

    add-int/2addr v1, p5

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p3

    invoke-direct {p4, p3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>([BI)V

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    add-int/2addr v1, p5

    iput v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iget p5, v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iput p5, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iget p5, v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p5, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {v1, p3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    move-object p3, p4

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    if-nez p4, :cond_1

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v6

    if-ne p4, v6, :cond_2

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iput v1, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput-wide v4, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    sub-int/2addr v2, p5

    div-int/lit8 v2, v2, 0x2

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iput v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {p4, p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-static {p2, p1, p3, p4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Landroidx/emoji2/text/MetadataRepo;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iget-object p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p2

    add-int/2addr p2, p5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>([BI)V

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v0, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v0, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    add-int/2addr p2, p5

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iget p2, p4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    iget p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->initialHeight:I

    if-ne p1, p2, :cond_3

    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->finished:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->height:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    add-int/2addr p1, p5

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDSTreeHash;->nextIndex:I

    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "finished or not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
