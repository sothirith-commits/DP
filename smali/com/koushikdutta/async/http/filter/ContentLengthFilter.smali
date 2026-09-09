.class public final Lcom/koushikdutta/async/http/filter/ContentLengthFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "SourceFile"


# instance fields
.field public contentLength:J

.field public totalRead:J

.field public transformed:Lcom/koushikdutta/async/ByteBufferList;


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 9

    iget v0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    iget-wide v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget-wide v3, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    sub-long v1, v3, v1

    int-to-long v5, v0

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->transformed:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    iget v0, v1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-super {p0, p1, v1}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    iget-wide v5, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget p1, v1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v0, p1

    int-to-long v7, v0

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    invoke-virtual {v1, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    iget-wide p1, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->report(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 6

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    iget-wide v2, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->contentLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of data reached before content length was read: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/koushikdutta/async/http/filter/ContentLengthFilter;->totalRead:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/koushikdutta/async/FilteredDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v1}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void
.end method
