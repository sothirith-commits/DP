.class public final Lokio/InflaterSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field public bufferBytesHeldByInflater:I

.field public closed:Z

.field public final inflater:Ljava/util/zip/Inflater;

.field public final source:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lokio/RealBufferedSource;Ljava/util/zip/Inflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    iput-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lokio/InflaterSource;->closed:Z

    iget-object p0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 7

    const-string p2, "sink"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-boolean p2, p0, Lokio/InflaterSource;->closed:Z

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    if-eqz p2, :cond_9

    iget-object p2, p0, Lokio/InflaterSource;->inflater:Ljava/util/zip/Inflater;

    :try_start_0
    invoke-virtual {p1, p3}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object p3

    iget v0, p3, Lokio/Segment;->limit:I

    rsub-int v0, v0, 0x2000

    int-to-long v0, v0

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v1

    iget-object v1, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v1, Lokio/Segment;->limit:I

    iget v4, v1, Lokio/Segment;->pos:I

    sub-int/2addr v3, v4

    iput v3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    iget-object v1, v1, Lokio/Segment;->data:[B

    invoke-virtual {p2, v1, v4, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    :goto_1
    iget-object v1, p3, Lokio/Segment;->data:[B

    iget v3, p3, Lokio/Segment;->limit:I

    invoke-virtual {p2, v1, v3, v0}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    iget v1, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v3

    sub-int/2addr v1, v3

    iget v3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    sub-int/2addr v3, v1

    iput v3, p0, Lokio/InflaterSource;->bufferBytesHeldByInflater:I

    int-to-long v3, v1

    invoke-interface {v2, v3, v4}, Lokio/BufferedSource;->skip(J)V

    :goto_2
    const-wide/16 v3, 0x0

    if-lez v0, :cond_3

    iget v1, p3, Lokio/Segment;->limit:I

    add-int/2addr v1, v0

    iput v1, p3, Lokio/Segment;->limit:I

    iget-wide v5, p1, Lokio/Buffer;->size:J

    int-to-long v0, v0

    add-long/2addr v5, v0

    iput-wide v5, p1, Lokio/Buffer;->size:J

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_5

    :cond_3
    iget v0, p3, Lokio/Segment;->pos:I

    iget v1, p3, Lokio/Segment;->limit:I

    if-ne v0, v1, :cond_4

    invoke-virtual {p3}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v0

    iput-object v0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {p3}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-wide v0, v3

    :goto_3
    cmp-long p3, v0, v3

    if-lez p3, :cond_5

    return-wide v0

    :cond_5
    invoke-virtual {p2}, Ljava/util/zip/Inflater;->finished()Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result p2

    if-nez p2, :cond_7

    goto/16 :goto_0

    :cond_7
    new-instance p0, Ljava/io/EOFException;

    const-string p1, "source exhausted prematurely"

    invoke-direct {p0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0

    :goto_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/InflaterSource;->source:Lokio/BufferedSource;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method
