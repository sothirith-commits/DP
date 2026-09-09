.class public final Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# instance fields
.field public final mDataSink:Lcom/koushikdutta/async/DataSink;

.field public mMaxBuffer:I

.field public final mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

.field public mWritable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncNetworkSocket;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mMaxBuffer:I

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    new-instance v0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lcom/koushikdutta/async/AsyncNetworkSocket;->mWriteableHandler:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mMaxBuffer:I

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mMaxBuffer:I

    return-void
.end method

.method public final getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {p0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p0

    return-object p0
.end method

.method public final getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object p0
.end method

.method public final onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public final setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public final setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    iget-object v0, v0, Lcom/koushikdutta/async/AsyncServer;->mAffinity:Lcom/koushikdutta/async/AsyncServer$8;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    iget v1, v1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    iget v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mMaxBuffer:I

    if-lt v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {p1}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object p1

    new-instance v0, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;

    const/16 v1, 0x17

    invoke-direct {v0, v1, p0}, Lcom/wt/utils/WtActivityView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/AsyncServer;->post(Ljava/lang/Runnable;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->onDataAccepted(Lcom/koushikdutta/async/ByteBufferList;)V

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    iget v0, v0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    :goto_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final writePending()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mDataSink:Lcom/koushikdutta/async/DataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    iget v1, v1, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/ChunkedOutputFilter;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
