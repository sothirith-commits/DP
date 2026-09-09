.class public final Lokio/InputStreamSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final synthetic $r8$classId:I

.field public final input:Ljava/lang/Object;

.field public final timeout:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lokio/Timeout;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokio/InputStreamSource;->$r8$classId:I

    const-string v0, "input"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/SocketAsyncTimeout;Lokio/InputStreamSource;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/InputStreamSource;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    iput-object p2, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    iget v1, p0, Lokio/InputStreamSource;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Source;

    check-cast v0, Lokio/AsyncTimeout;

    invoke-virtual {v0}, Lokio/AsyncTimeout;->enter()V

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

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
    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 4

    iget p2, p0, Lokio/InputStreamSource;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "sink"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    check-cast p2, Lokio/Source;

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    check-cast p0, Lokio/AsyncTimeout;

    invoke-virtual {p0}, Lokio/AsyncTimeout;->enter()V

    const-wide/16 v0, 0x2000

    :try_start_0
    invoke-interface {p2, p1, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result p3

    if-nez p3, :cond_0

    return-wide p1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lokio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    :goto_0
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lokio/AsyncTimeout;->exit()Z

    throw p1

    :pswitch_0
    const-string p2, "sink"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_2
    iget-object p2, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    check-cast p2, Lokio/Timeout;

    invoke-virtual {p2}, Lokio/Timeout;->throwIfReached()V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lokio/Buffer;->writableSegment$okio(I)Lokio/Segment;

    move-result-object p2

    iget p3, p2, Lokio/Segment;->limit:I

    rsub-int p3, p3, 0x2000

    int-to-long v0, p3

    const-wide/16 v2, 0x2000

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

    iget-object v0, p2, Lokio/Segment;->data:[B

    iget v1, p2, Lokio/Segment;->limit:I

    invoke-virtual {p0, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    const/4 p3, -0x1

    if-ne p0, p3, :cond_3

    iget p0, p2, Lokio/Segment;->pos:I

    iget p3, p2, Lokio/Segment;->limit:I

    if-ne p0, p3, :cond_2

    invoke-virtual {p2}, Lokio/Segment;->pop()Lokio/Segment;

    move-result-object p0

    iput-object p0, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {p2}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_2
    :goto_2
    const-wide/16 p0, -0x1

    goto :goto_3

    :cond_3
    iget p3, p2, Lokio/Segment;->limit:I

    add-int/2addr p3, p0

    iput p3, p2, Lokio/Segment;->limit:I

    iget-wide p2, p1, Lokio/Buffer;->size:J

    int-to-long v0, p0

    add-long/2addr p2, v0

    iput-wide p2, p1, Lokio/Buffer;->size:J
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_1

    move-wide p0, v0

    :goto_3
    return-wide p0

    :goto_4
    invoke-static {p0}, Lokio/Okio;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_4
    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final timeout()Lokio/Timeout;
    .locals 1

    iget v0, p0, Lokio/InputStreamSource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    check-cast p0, Lokio/AsyncTimeout;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

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

    iget v0, p0, Lokio/InputStreamSource;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AsyncTimeout.source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/InputStreamSource;->timeout:Ljava/lang/Object;

    check-cast p0, Lokio/Source;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "source("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lokio/InputStreamSource;->input:Ljava/lang/Object;

    check-cast p0, Ljava/io/InputStream;

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
