.class public final Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;


# instance fields
.field public final blockIndex:I

.field public final dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field public final inputStream:Ljava/io/InputStream;

.field public final outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field public final readBuffer:[B

.field public final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public constructor <init>(ILjava/io/InputStream;Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->blockIndex:I

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    iget p1, p4, Lcom/liulishuo/okdownload/DownloadTask;->readBufferSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    iget-object p1, p1, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-void
.end method


# virtual methods
.method public final interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v2

    iget-object v2, v2, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    iget-object v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2, v3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->inputStream:Ljava/io/InputStream;

    iget-object v3, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    int-to-long v0, v2

    return-wide v0

    :cond_0
    iget-object v3, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iget v4, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->blockIndex:I

    iget-object v5, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->readBuffer:[B

    const-string v6, "Create output stream write from ("

    const-string v7, "Create new file: "

    monitor-enter v3

    :try_start_0
    iget-object v8, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    const-wide/16 v9, 0x0

    if-nez v8, :cond_b

    iget-object v8, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v8, v8, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    sget-object v12, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    const-string v12, "file"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v12, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v12}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_4

    iget-object v13, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v13, v13, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-eqz v13, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Create parent folder failed!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_2
    :goto_0
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "MultiPointOutputStream"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Filename is not ready!"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v7, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v7, v7, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    :goto_1
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v12

    iget-object v12, v12, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v13

    iget-object v13, v13, Lcom/liulishuo/okdownload/OkDownload;->context:Landroid/content/Context;

    iget v14, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->flushBufferSize:I

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    invoke-direct {v12, v13, v7, v14}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    iget-boolean v7, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->supportSeek:Z

    if-eqz v7, :cond_7

    iget-object v7, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v7, v4}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v7

    iget-object v13, v7, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v13

    move-object v15, v12

    iget-wide v11, v7, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->startOffset:J

    add-long/2addr v13, v11

    cmp-long v7, v13, v9

    if-lez v7, :cond_6

    move-object v7, v15

    iget-object v11, v7, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v11, v13, v14}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const-string v11, "MultiPointOutputStream"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v6, v6, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") block("

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v7, v15

    goto :goto_2

    :cond_7
    move-object v7, v12

    :goto_2
    iget-object v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-boolean v6, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    if-nez v6, :cond_a

    iget-boolean v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->firstOutputStream:Z

    if-eqz v6, :cond_a

    iget-boolean v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->isPreAllocateLength:Z

    if-eqz v6, :cond_a

    iget-object v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v11

    if-eqz v8, :cond_9

    iget-object v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v6}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v13

    sub-long v13, v11, v13

    cmp-long v8, v13, v9

    if-lez v8, :cond_a

    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v9

    cmp-long v6, v9, v13

    if-ltz v6, :cond_8

    invoke-virtual {v7, v11, v12}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->setLength(J)V

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;

    invoke-direct {v0, v13, v14, v9, v10}, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;-><init>(JJ)V

    throw v0

    :cond_9
    invoke-virtual {v7, v11, v12}, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->setLength(J)V

    :cond_a
    :goto_3
    iget-object v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v8, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    new-instance v9, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-virtual {v8, v4, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    :try_start_2
    iput-boolean v6, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->firstOutputStream:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v8, v7

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_b
    :goto_4
    monitor-exit v3

    iget-object v6, v8, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->out:Ljava/io/BufferedOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    iget-object v5, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v2, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v2, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncException:Ljava/io/IOException;

    if-nez v2, :cond_10

    iget-object v2, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    if-nez v2, :cond_d

    iget-object v2, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncRunnable:Ljava/lang/Runnable;

    monitor-enter v2

    :try_start_5
    iget-object v4, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    if-nez v4, :cond_c

    sget-object v4, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->FILE_IO_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v5, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncRunnable:Ljava/lang/Runnable;

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v4

    iput-object v4, v3, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_c
    :goto_5
    monitor-exit v2

    goto :goto_7

    :goto_6
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_d
    :goto_7
    iget-wide v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->dispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lcom/liulishuo/okdownload/DownloadTask;->minIntervalMillisCallbackProcess:I

    int-to-long v2, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_e

    iget-object v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->lastCallbackProcessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v4, v8

    cmp-long v0, v4, v2

    if-ltz v0, :cond_f

    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    :cond_f
    return-wide v6

    :cond_10
    throw v2

    :goto_8
    monitor-exit v3

    throw v0

    :cond_11
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw v0
.end method
