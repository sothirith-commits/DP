.class public final Lcom/bumptech/glide/load/engine/ActiveResources;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field public final activeEngineResources:Ljava/lang/Object;

.field public isActiveResourceRetentionAllowed:Z

.field public listener:Ljava/lang/Object;

.field public final resourceReferenceQueue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/ActiveResources$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    new-instance v1, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    iget-boolean p2, p2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/util/GlideSuppliers$1;Lcom/bumptech/glide/manager/SingletonConnectivityReceiver$2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/commonsdk/framework/a$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/umeng/commonsdk/framework/a$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/music/KugouMusicInfoUtil$loadCover$1;Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Lcom/deepalhome/launcher/music/Music;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZLcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    new-instance p3, Lcom/google/zxing/common/ECIEncoderSet;

    invoke-direct {p3, p1, p2}, Lcom/google/zxing/common/ECIEncoderSet;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    return-void
.end method

.method public static addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 4

    iget v0, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->characterLength:I

    add-int/2addr p1, v0

    aget-object p0, p0, p1

    iget p1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->charsetEncoderIndex:I

    aget-object p0, p0, p1

    iget-object p1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal mode "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    aget-object p1, p0, v0

    if-eqz p1, :cond_5

    iget v1, p2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    iget p1, p1, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-le p1, v1, :cond_6

    :cond_5
    aput-object p2, p0, v0

    :cond_6
    return-void
.end method

.method public static canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_5

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :cond_2
    const/16 p0, 0x60

    if-ge p1, p0, :cond_3

    sget-object p0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget p0, p0, p1

    const/4 p1, -0x1

    if-eq p0, p1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    :cond_4
    :goto_0
    return v0

    :cond_5
    const/16 p0, 0x30

    if-lt p1, p0, :cond_6

    const/16 p0, 0x39

    if-gt p1, p0, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method public static getVersion(Lcom/google/zxing/qrcode/encoder/MinimalEncoder$VersionSize;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/16 p0, 0x28

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x1a

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x9

    invoke-static {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abort()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->access$2100(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/load/engine/ActiveResources;Z)V

    return-void
.end method

.method public declared-synchronized activate(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/ReferenceQueue;

    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;Z)V

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    iget-object v0, v8, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v1, v0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v1, v1

    const-string v11, ""

    iget-object v12, v0, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    iget v0, v0, Lcom/google/zxing/common/ECIEncoderSet;->priorityEncoderIndex:I

    iget-object v2, v8, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    if-ltz v0, :cond_0

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-object v3, v12, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    move v14, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    move v15, v0

    :goto_2
    if-ge v15, v14, :cond_2

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-object v1, v12, v15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    const/4 v5, 0x1

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v3, p3

    move v4, v15

    move-object/from16 v6, p4

    move-object v8, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-static {v9, v10, v8}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_1
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p0

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v8, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-static {v9, v10, v8}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v0, :cond_6

    new-instance v14, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    add-int/lit8 v0, v10, 0x1

    if-ge v0, v8, :cond_5

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move v5, v11

    goto :goto_4

    :cond_5
    :goto_3
    move v5, v12

    :goto_4
    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-static {v9, v10, v14}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_6
    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v13, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v14, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    add-int/lit8 v0, v10, 0x1

    if-ge v0, v8, :cond_a

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v0, v10, 0x2

    if-ge v0, v8, :cond_9

    invoke-virtual {v13, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v2, v0}, Lcom/bumptech/glide/load/engine/ActiveResources;->canEncode(Lcom/google/zxing/qrcode/decoder/Mode;C)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x3

    move v5, v0

    goto :goto_7

    :cond_9
    :goto_5
    move v5, v11

    goto :goto_7

    :cond_a
    :goto_6
    move v5, v12

    :goto_7
    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/google/zxing/qrcode/decoder/Mode;IIILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-static {v9, v10, v14}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdge([[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_b
    return-void
.end method

.method public cleanupActiveReference(Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->isCacheable:Z

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/bumptech/glide/load/engine/EngineResource;

    iget-object v5, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/engine/EngineResource;-><init>(Lcom/bumptech/glide/load/engine/Resource;ZZLcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/load/engine/EngineResource$ResourceListener;

    iget-object p1, p1, Lcom/bumptech/glide/load/engine/ActiveResources$ResourceWeakReference;->key:Lcom/bumptech/glide/load/Key;

    check-cast p0, Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {p0, p1, v0}, Lcom/bumptech/glide/load/engine/Engine;->onResourceReleased(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/engine/EngineResource;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public encodeSpecificVersion(Lcom/google/zxing/qrcode/decoder/Version;)Lcom/koushikdutta/async/Util$8;
    .locals 12

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v3, Lcom/google/zxing/common/ECIEncoderSet;

    iget-object v4, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x2

    const/4 v7, 0x4

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v4, v5, v6

    const/4 v4, 0x0

    aput v2, v5, v4

    const-class v2, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v4, v5}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :goto_0
    if-gt v6, v1, :cond_3

    move v5, v4

    :goto_1
    iget-object v8, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v8, v8

    if-ge v5, v8, :cond_2

    move v8, v4

    :goto_2
    if-ge v8, v7, :cond_1

    aget-object v9, v2, v6

    aget-object v9, v9, v5

    aget-object v9, v9, v8

    if-eqz v9, :cond_0

    if-ge v6, v1, :cond_0

    invoke-virtual {p0, p1, v2, v6, v9}, Lcom/bumptech/glide/load/engine/ActiveResources;->addEdges(Lcom/google/zxing/qrcode/decoder/Version;[[[Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;ILcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    const v6, 0x7fffffff

    move v9, v4

    move v8, v6

    move v6, v5

    :goto_3
    iget-object v10, v3, Lcom/google/zxing/common/ECIEncoderSet;->encoders:[Ljava/nio/charset/CharsetEncoder;

    array-length v10, v10

    if-ge v9, v10, :cond_6

    move v10, v4

    :goto_4
    if-ge v10, v7, :cond_5

    aget-object v11, v2, v1

    aget-object v11, v11, v9

    aget-object v11, v11, v10

    if-eqz v11, :cond_4

    iget v11, v11, Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;->cachedTotalSize:I

    if-ge v11, v8, :cond_4

    move v5, v9

    move v6, v10

    move v8, v11

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_6
    if-ltz v5, :cond_7

    new-instance v0, Lcom/koushikdutta/async/Util$8;

    aget-object v1, v2, v1

    aget-object v1, v1, v5

    aget-object v1, v1, v6

    invoke-direct {v0, p0, p1, v1}, Lcom/koushikdutta/async/Util$8;-><init>(Lcom/bumptech/glide/load/engine/ActiveResources;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/MinimalEncoder$Edge;)V

    return-object v0

    :cond_7
    new-instance p0, Lcom/google/zxing/WriterException;

    const-string p1, "Internal error: failed to encode \""

    const-string v1, "\""

    invoke-static {p1, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFile()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    iget-object v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/load/engine/ActiveResources;

    if-ne v2, p0, :cond_1

    iget-boolean v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v2, [Z

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v1, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v1, v3

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    iget-object p0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFailure(Lokhttp3/internal/connection/RealCall;Ljava/io/IOException;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void
.end method

.method public onResponse(Lokhttp3/internal/connection/RealCall;Lokhttp3/Response;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->resourceReferenceQueue:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;

    const-string v2, "name"

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->activeEngineResources:Ljava/lang/Object;

    check-cast v3, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v5, p2

    iget-object v5, v5, Lokhttp3/Response;->body:Lokhttp3/ResponseBody;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "result"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "songs"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "artists"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "duration"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    sget-object v11, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->INSTANCE:Lcom/deepalhome/launcher/music/MusicMetadataMatcher;

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v9}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isTitleMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1, v10}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isSingerMatch(Lcom/deepalhome/launcher/music/MusicMetadataMatcher$MusicMatchProfile;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->listener:Ljava/lang/Object;

    check-cast v9, Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {v9}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v12

    const-wide/16 v16, 0xbb8

    invoke-static/range {v12 .. v17}, Lcom/deepalhome/launcher/music/MusicMetadataMatcher;->isDurationMatch(JJJ)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v1, "id"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, v0, Lcom/bumptech/glide/load/engine/ActiveResources;->isActiveResourceRetentionAllowed:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;

    invoke-static {v0, v1, v3}, Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;->access$loadLyric(Lcom/deepalhome/launcher/music/WangyiMusicInfoUtil;Ljava/lang/String;Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;)V

    :cond_1
    return-void

    :cond_2
    :goto_1
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    invoke-interface {v3}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    :goto_2
    return-void
.end method
