.class public final Lokio/OutputStreamSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Sink;


# instance fields
.field public final synthetic $r8$classId:I

.field public final out:Ljava/lang/Object;

.field public final timeout:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lokio/OutputStreamSink;->$r8$classId:I

    iput-object p2, p0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    iput-object p3, p0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    iget v1, p0, Lokio/OutputStreamSink;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Sink;

    check-cast v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    invoke-interface {p0}, Lokio/Sink;->close()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    throw p0

    :pswitch_0
    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final flush()V
    .locals 2

    iget-object v0, p0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    iget v1, p0, Lokio/OutputStreamSink;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Sink;

    check-cast v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    invoke-interface {p0}, Lokio/Sink;->flush()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    :goto_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lokio/AsyncTimeout;->exit()Z

    throw p0

    :pswitch_0
    check-cast v0, Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget v0, p0, Lokio/OutputStreamSink;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    check-cast p0, Lokio/AsyncTimeout;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Timeout;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lokio/OutputStreamSink;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Sink;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final write(Lokio/Buffer;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lokio/OutputStreamSink;->out:Ljava/lang/Object;

    iget-object v3, v0, Lokio/OutputStreamSink;->timeout:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    const-string v6, "source"

    iget v0, v0, Lokio/OutputStreamSink;->$r8$classId:I

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    iget-wide v7, v1, Lokio/Buffer;->size:J

    const-wide/16 v9, 0x0

    move-wide/from16 v11, p2

    invoke-static/range {v7 .. v12}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    move-wide/from16 v6, p2

    :goto_0
    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide v8, v4

    :goto_1
    const-wide/32 v10, 0x10000

    cmp-long v10, v8, v10

    if-gez v10, :cond_1

    iget v10, v0, Lokio/Segment;->limit:I

    iget v11, v0, Lokio/Segment;->pos:I

    sub-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v10, v8, v6

    if-ltz v10, :cond_0

    move-wide v8, v6

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_2
    move-object v0, v3

    check-cast v0, Lokio/Sink;

    move-object v10, v2

    check-cast v10, Lokio/AsyncTimeout;

    invoke-virtual {v10}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    invoke-interface {v0, v1, v8, v9}, Lokio/Sink;->write(Lokio/Buffer;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Lokio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_2

    sub-long/2addr v6, v8

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v10}, Lokio/AsyncTimeout;->exit()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v10, v0}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    :goto_3
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v10}, Lokio/AsyncTimeout;->exit()Z

    throw v0

    :cond_4
    return-void

    :pswitch_0
    iget-wide v11, v1, Lokio/Buffer;->size:J

    const-wide/16 v13, 0x0

    move-wide/from16 v15, p2

    invoke-static/range {v11 .. v16}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    move-wide/from16 v6, p2

    :cond_5
    :goto_5
    cmp-long v0, v6, v4

    if-lez v0, :cond_6

    move-object v0, v3

    check-cast v0, Lokio/Timeout;

    invoke-virtual {v0}, Lokio/Timeout;->throwIfReached()V

    iget-object v0, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v8, v0, Lokio/Segment;->limit:I

    iget v9, v0, Lokio/Segment;->pos:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    iget-object v9, v0, Lokio/Segment;->data:[B

    iget v10, v0, Lokio/Segment;->pos:I

    move-object v11, v2

    check-cast v11, Ljava/io/OutputStream;

    invoke-virtual {v11, v9, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    iget v9, v0, Lokio/Segment;->pos:I

    add-int/2addr v9, v8

    iput v9, v0, Lokio/Segment;->pos:I

    int-to-long v10, v8

    sub-long/2addr v6, v10

    iget-wide v12, v1, Lokio/Buffer;->size:J

    sub-long/2addr v12, v10

    iput-wide v12, v1, Lokio/Buffer;->size:J

    iget v8, v0, Lokio/Segment;->limit:I

    if-ne v9, v8, :cond_5

    invoke-virtual {v0}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object v8

    iput-object v8, v1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {v0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_5

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
