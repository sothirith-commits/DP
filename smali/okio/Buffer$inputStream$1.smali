.class public final Lokio/Buffer$inputStream$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/io/Closeable;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lokio/BufferedSource;I)V
    .locals 0

    iput p2, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    iput-object p1, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private final close$io$github$muntashirakon$adb$AdbInputStream()V
    .locals 0

    return-void
.end method

.method private final close$okio$Buffer$inputStream$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    move-object v0, p0

    check-cast v0, Lio/github/muntashirakon/adb/AdbStream;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    if-nez p0, :cond_3

    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result p0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    array-length p0, p0

    :goto_0
    monitor-exit v0

    :goto_1
    return p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v1, "Stream closed."

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/RealBufferedSource;

    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 5

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lokio/Buffer$inputStream$1;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    aget-byte v0, v1, v2

    :goto_1
    return v0

    :pswitch_1
    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public read([B)I
    .locals 2

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0

    :pswitch_0
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer$inputStream$1;->read([BII)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 7

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "data"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_1

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->checkOffsetAndCount(JJJ)V

    iget-object v0, p0, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast v0, Lio/github/muntashirakon/adb/AdbStream;

    iget-boolean v0, v0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lio/github/muntashirakon/adb/AdbStream;

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2, p1, p3}, Lio/github/muntashirakon/adb/AdbStream;->readBuffer(I[BI)I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_4

    iget-boolean v3, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_4

    :try_start_1
    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, p2, p1, p3}, Lio/github/muntashirakon/adb/AdbStream;->readBuffer(I[BI)I

    move-result v1

    monitor-exit v0

    goto :goto_2

    :cond_5
    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mPendingClose:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mReadQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/github/muntashirakon/adb/AdbStream;->mIsClosed:Z

    :cond_6
    monitor-exit v0

    :goto_2
    return v1

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Stream closed."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :pswitch_1
    const-string v0, "sink"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lokio/Buffer$inputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/RealBufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokio/Buffer$inputStream$1;->this$0:Ljava/io/Closeable;

    check-cast p0, Lokio/Buffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
