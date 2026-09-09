.class public final Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lTree(Landroidx/emoji2/text/MetadataRepo;Lcom/umeng/analytics/pro/ah;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 13

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->len:I

    iget-object p1, p1, Lcom/umeng/analytics/pro/ah;->b:Ljava/lang/Object;

    check-cast p1, [[B

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;->cloneArray([[B)[[B

    move-result-object p1

    array-length v1, p1

    new-array v1, v1, [Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    aget-object v5, p1, v3

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>([BI)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v3, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    iput v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    iput v3, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    :goto_1
    const/4 p1, 0x1

    if-le v0, p1, :cond_3

    move v3, v2

    :goto_2
    div-int/lit8 v4, v0, 0x2

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    iget v8, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    iget v9, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    iget-wide v10, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v12, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    if-ge v3, v6, :cond_1

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v12, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput-wide v10, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput v9, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    iput v8, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iput v3, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iput v7, p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {v4, p2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    mul-int/lit8 p2, v3, 0x2

    aget-object v5, v1, p2

    add-int/2addr p2, p1

    aget-object p2, v1, p2

    invoke-static {p0, v5, p2, v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNodeUtil;->randomizeHash(Landroidx/emoji2/text/MetadataRepo;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p2

    aput-object p2, v1, v3

    add-int/lit8 v3, v3, 0x1

    move-object p2, v4

    goto :goto_2

    :cond_1
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, p1, :cond_2

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p1, v3

    add-int/lit8 v3, v0, -0x1

    aget-object v3, v1, v3

    aput-object v3, v1, p1

    :cond_2
    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iput v12, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iput-wide v10, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput v9, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iget p2, p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    iput p2, p1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iput v7, p1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_1

    :cond_3
    aget-object p0, v1, v2

    return-object p0
.end method

.method public static randomizeHash(Landroidx/emoji2/text/MetadataRepo;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 11

    if-eqz p1, :cond_c

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Landroidx/emoji2/text/MetadataRepo;->mTypeface:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    iget v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    iput p3, v1, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iput v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_0

    :cond_0
    instance-of v1, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v1, :cond_1

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v3, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    iput v3, v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iput p3, v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iput v2, v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {p3, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v1

    iget-object v3, p0, Landroidx/emoji2/text/MetadataRepo;->mEmojiCharArray:Ljava/lang/Object;

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;

    invoke-virtual {v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v1

    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    iput v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    iget v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    iput v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    iput p3, v4, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iput v5, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_1

    :cond_2
    instance-of v4, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v4, :cond_3

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    iput v6, v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iput p3, v4, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iput v5, v4, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {p3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_3
    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object v4

    instance-of v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    const/4 v7, 0x2

    if-eqz v6, :cond_4

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    iget v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->lTreeAddress:I

    iput v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->lTreeAddress:I

    iget v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeHeight:I

    iput v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;->treeIndex:I

    iput p3, v6, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->treeIndex:I

    iput v7, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    invoke-direct {p3, v6}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;)V

    goto :goto_2

    :cond_4
    instance-of v6, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    if-eqz v6, :cond_5

    check-cast p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    iget v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->layerAddress:I

    iput v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->type:I

    iget-wide v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iput-wide v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->treeAddress:J

    iget v8, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeHeight:I

    iput v8, v6, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeHeight:I

    iget p3, p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->treeIndex:I

    iput p3, v6, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->treeIndex:I

    iput v7, v6, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->keyAndMask:I

    new-instance p3, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    invoke-direct {p3, v6}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;)V

    :cond_5
    :goto_2
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;->toByteArray()[B

    move-result-object p3

    invoke-virtual {v3, v0, p3}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->PRF([B[B)[B

    move-result-object p3

    iget-object p0, p0, Landroidx/emoji2/text/MetadataRepo;->mMetadataList:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;

    iget p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusParameters;->digestSize:I

    mul-int/lit8 v0, p0, 0x2

    new-array v6, v0, [B

    move v8, v2

    :goto_3
    if-ge v8, p0, :cond_6

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v9

    aget-byte v9, v9, v8

    aget-byte v10, v4, v8

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    if-ge v2, p0, :cond_7

    add-int v4, v2, p0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object v8

    aget-byte v8, v8, v2

    aget-byte v9, p3, v2

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    array-length p0, v1

    iget p2, v3, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->digestSize:I

    if-ne p0, p2, :cond_9

    mul-int/2addr p2, v7

    if-ne v0, p2, :cond_8

    invoke-virtual {v3, v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/xmss/KeyedHashFunctions;->coreDigest([BI[B)[B

    move-result-object p0

    new-instance p2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    invoke-direct {p2, p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>([BI)V

    return-object p2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong in length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "wrong key length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "height of both nodes must be equal"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "right == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "left == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
