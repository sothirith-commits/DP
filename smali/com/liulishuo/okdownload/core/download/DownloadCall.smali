.class public final Lcom/liulishuo/okdownload/core/download/DownloadCall;
.super Lcom/liulishuo/okdownload/core/NamedRunnable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final asyncExecuted:Z

.field public final blockChainList:Ljava/util/ArrayList;

.field public volatile cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

.field public volatile canceled:Z

.field public volatile currentThread:Ljava/lang/Thread;

.field public volatile finishing:Z

.field public final store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

.field public final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v0, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    new-instance v7, Lcom/liulishuo/okdownload/core/Util$1;

    const-string v0, "OkDownload Block"

    invoke-direct {v7, v0}, Lcom/liulishuo/okdownload/core/Util$1;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/core/download/DownloadCall;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/liulishuo/okdownload/core/NamedRunnable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->asyncExecuted:Z

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    return-void
.end method


# virtual methods
.method public final assembleBlockAndCallbackFromBeginning(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-wide v3, v1, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->instanceLength:J

    iget-boolean v1, v1, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->acceptRange:Z

    sget-object v5, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v5

    iget-object v5, v5, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v5

    iget-object v5, v5, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v5, p0

    iget-object v5, v5, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/liulishuo/okdownload/DownloadTask;->connectionCount:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_0
    const-wide/32 v6, 0x100000

    cmp-long v1, v3, v6

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/32 v6, 0x500000

    cmp-long v1, v3, v6

    if-gez v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-wide/32 v6, 0x3200000

    cmp-long v1, v3, v6

    if-gez v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-wide/32 v6, 0x6400000

    cmp-long v1, v3, v6

    if-gez v1, :cond_4

    const/4 v1, 0x4

    goto :goto_1

    :cond_4
    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v6, v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    int-to-long v7, v1

    div-long v9, v3, v7

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move v15, v13

    move-wide v13, v11

    :goto_2
    if-ge v15, v1, :cond_7

    add-long/2addr v11, v13

    if-nez v15, :cond_6

    rem-long v13, v3, v7

    add-long/2addr v13, v9

    goto :goto_3

    :cond_6
    move-wide v13, v9

    :goto_3
    new-instance v2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    invoke-direct {v2, v11, v12, v13, v14}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJ)V

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v15, v2

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-object/from16 v2, p3

    invoke-virtual {v1, v5, v0, v2}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    return-void
.end method

.method public final cancel()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->finishing:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v3

    iget-object v3, v3, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    const-string v4, "flying canceled: "

    monitor-enter v3

    :try_start_1
    const-string v5, "DownloadDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v4, v4, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->asyncExecuted:Z

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_2
    :goto_0
    monitor-exit v3

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    if-eqz v3, :cond_3

    iput-boolean v0, v3, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    :cond_3
    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    iget-object v7, v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    iget-object v6, v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    if-eqz v4, :cond_7

    const-string v4, "DownloadCall"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "interrupt thread with cancel operation because of chains are not running "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v6, v6, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    if-eqz v3, :cond_9

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz v3, :cond_8

    sget-object v4, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->FILE_IO_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;-><init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;I)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_9
    :goto_2
    const-string v3, "DownloadCall"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cancel task "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " consume: "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :goto_3
    monitor-exit v3

    throw p0

    :goto_4
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget p1, p1, Lcom/liulishuo/okdownload/DownloadTask;->priority:I

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->priority:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public final execute()V
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->currentThread:Ljava/lang/Thread;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v2, v0, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v4, v3, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    iget-object v4, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v4

    iget-object v4, v4, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskStart(Lcom/liulishuo/okdownload/DownloadTask;)V

    const/4 v4, 0x0

    :cond_0
    iget-object v5, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v5, v5, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1

    new-instance v0, Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v4, v4, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;-><init>(Ljava/io/IOException;)V

    iput-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    :goto_0
    const/4 v2, 0x1

    goto/16 :goto_18

    :cond_1
    iget-boolean v5, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v5, :cond_2

    :goto_1
    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v5, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v8, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v8, v8, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    iget-object v5, v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    if-nez v5, :cond_3

    iget-object v5, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v8, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v5, v8}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->createAndInsert(Lcom/liulishuo/okdownload/DownloadTask;)Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_17

    :cond_3
    :goto_2
    iget-object v8, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v8, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v8

    iget-object v8, v8, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    iget-object v9, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v10, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-direct {v8, v9, v5, v10}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V

    new-instance v14, Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-direct {v14, v8}, Lcom/liulishuo/okdownload/core/download/DownloadCache;-><init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V

    iput-object v14, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    new-instance v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;

    iget-object v9, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v8, v9, v5}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    :try_start_1
    invoke-virtual {v8}, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->check()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    iget-object v9, v2, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;

    iget-object v10, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v10}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v9, Lcom/liulishuo/okdownload/core/file/FileLock;->fileLockCountMap:Ljava/util/Map;

    monitor-enter v11

    :try_start_2
    iget-object v12, v9, Lcom/liulishuo/okdownload/core/file/FileLock;->fileLockCountMap:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    if-gtz v11, :cond_5

    goto :goto_4

    :cond_5
    iget-object v11, v9, Lcom/liulishuo/okdownload/core/file/FileLock;->waitThreadForFileLockMap:Ljava/util/Map;

    monitor-enter v11

    :try_start_3
    iget-object v9, v9, Lcom/liulishuo/okdownload/core/file/FileLock;->waitThreadForFileLockMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-interface {v9, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v9, "FileLock"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "waitForRelease start "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-gtz v9, :cond_6

    const-string v9, "FileLock"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "waitForRelease finish "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    sget-wide v15, Lcom/liulishuo/okdownload/core/file/FileLock;->WAIT_RELEASE_LOCK_NANO:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v9}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_7
    :goto_4
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v9

    iget-object v9, v9, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    iget-object v10, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-wide v11, v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->instanceLength:J

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v9, v10, Lcom/liulishuo/okdownload/DownloadTask;->filenameFromResponse:Z

    if-nez v9, :cond_8

    goto/16 :goto_8

    :cond_8
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v9

    iget-object v9, v9, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    monitor-enter v9

    :try_start_5
    iget-object v13, v9, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v13

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v15, :cond_b

    invoke-virtual {v13, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    if-ne v7, v5, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v7, v10}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->isSameFrom(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v17

    if-eqz v17, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v7, 0x0

    :goto_7
    if-nez v7, :cond_c

    goto :goto_8

    :cond_c
    iget v3, v7, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {v9, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->remove(I)V

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v9

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v3

    iget-object v3, v3, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x2800

    cmp-long v3, v9, v18

    if-gtz v3, :cond_d

    goto :goto_8

    :cond_d
    iget-object v3, v7, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v9, v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_8

    :cond_e
    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v9

    cmp-long v3, v9, v11

    if-eqz v3, :cond_f

    goto :goto_8

    :cond_f
    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    iget-object v3, v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v7, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v3, "DownloadStrategy"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Reuse another same info: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_8
    :try_start_6
    iget-boolean v3, v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->resumable:Z

    if-eqz v3, :cond_16

    iget-wide v9, v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->instanceLength:J

    new-instance v3, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;

    iget-object v7, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-direct {v3, v7, v5, v9, v10}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)V

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->check()V

    iget-boolean v7, v3, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->dirty:Z

    if-eqz v7, :cond_15

    const-string v7, "DownloadCall"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "breakpoint invalid: download from beginning because of local check is dirty "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v10, v10, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v7}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_12

    goto :goto_9

    :cond_12
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Delete file failed!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    invoke-virtual {v3}, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    move-result-object v3

    invoke-virtual {v1, v5, v8, v3}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->assembleBlockAndCallbackFromBeginning(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    goto :goto_b

    :catch_1
    move-exception v0

    const/4 v2, 0x1

    goto/16 :goto_16

    :cond_15
    iget-object v3, v0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object v7, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v3, v7, v5}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->downloadFromBreakpoint(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)V

    goto :goto_b

    :cond_16
    const-string v3, "DownloadCall"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "breakpoint invalid: download from beginning because of remote check not resumable "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v9, v9, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v3}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_a

    :cond_17
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_a

    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Delete file failed!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_a
    iget-object v3, v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->failedCause:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    if-eqz v3, :cond_26

    invoke-virtual {v1, v5, v8, v3}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->assembleBlockAndCallbackFromBeginning(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :goto_b
    iget-object v3, v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v5, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_c
    if-ge v15, v3, :cond_1d

    invoke-virtual {v5, v15}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v8

    iget-object v9, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    iget-wide v11, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_1a

    goto :goto_e

    :cond_1a
    iget-object v9, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    iget-object v10, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    if-gez v9, :cond_1b

    move-object/from16 v20, v7

    goto :goto_d

    :cond_1b
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    move-object/from16 v20, v7

    iget-wide v6, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    cmp-long v6, v18, v6

    if-lez v6, :cond_1c

    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "block is dirty so have to reset: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "resetBlockIfDirty"

    invoke-static {v7, v6}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_1c
    iget-object v10, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v13, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    new-instance v6, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    move-object v8, v6

    move v9, v15

    move-object v11, v5

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Lcom/liulishuo/okdownload/core/download/DownloadChain;-><init>(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V

    move-object/from16 v7, v20

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_1d
    iget-boolean v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v3, :cond_1e

    goto :goto_11

    :cond_1e
    iget-object v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liulishuo/okdownload/core/download/DownloadChain;

    sget-object v9, Lcom/liulishuo/okdownload/core/download/DownloadCall;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {v9, v8}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_13

    :cond_1f
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :catch_2
    :cond_20
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/Future;

    invoke-interface {v8}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v9, :cond_20

    :try_start_8
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_8
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_10

    :cond_21
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_11
    iget-boolean v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v3, :cond_22

    goto/16 :goto_1

    :cond_22
    iget-boolean v3, v14, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    if-eqz v3, :cond_24

    add-int/lit8 v3, v4, 0x1

    const/4 v5, 0x1

    if-ge v4, v5, :cond_23

    iget-object v4, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v5, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v5, v5, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v4, v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->remove(I)V

    move v4, v3

    const/4 v3, 0x1

    goto :goto_12

    :cond_23
    move v4, v3

    :cond_24
    const/4 v3, 0x0

    :goto_12
    if-nez v3, :cond_0

    goto/16 :goto_1

    :goto_13
    :try_start_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Future;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_14

    :catchall_2
    move-exception v0

    goto :goto_15

    :cond_25
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_15
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    throw v0

    :cond_26
    :try_start_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No cause find with resumable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v8, Lcom/liulishuo/okdownload/core/download/BreakpointRemoteCheck;->resumable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :goto_16
    iput-boolean v2, v14, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    iput-object v0, v14, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v14, v2}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    goto/16 :goto_0

    :goto_17
    new-instance v2, Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;

    invoke-direct {v2, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;-><init>(Ljava/io/IOException;)V

    iput-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    goto/16 :goto_0

    :goto_18
    iput-boolean v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->finishing:Z

    iget-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->blockChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-boolean v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-nez v2, :cond_31

    if-nez v0, :cond_27

    goto/16 :goto_20

    :cond_27
    iget-boolean v2, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    if-eqz v2, :cond_28

    goto :goto_1a

    :cond_28
    iget-boolean v2, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    if-eqz v2, :cond_29

    const/4 v5, 0x4

    :goto_19
    const/4 v7, 0x0

    goto :goto_1b

    :cond_29
    iget-boolean v2, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    if-eqz v2, :cond_2a

    iget-object v7, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    const/4 v5, 0x6

    goto :goto_1b

    :cond_2a
    const/4 v5, 0x1

    goto :goto_19

    :cond_2b
    :goto_1a
    iget-object v7, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    const/4 v5, 0x2

    :goto_1b
    const/4 v2, 0x3

    if-eq v5, v2, :cond_30

    monitor-enter p0

    :try_start_d
    iget-boolean v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v2, :cond_2c

    monitor-exit p0

    goto :goto_1e

    :catchall_5
    move-exception v0

    goto :goto_1f

    :cond_2c
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->finishing:Z

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    iget-object v3, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v4, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v4, v4, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    if-ne v5, v2, :cond_2d

    invoke-virtual {v3, v4}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->remove(I)V

    goto :goto_1c

    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1c
    if-ne v5, v2, :cond_2f

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v2

    iget-object v2, v2, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz v0, :cond_2e

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1d

    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2f
    :goto_1d
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v0, v1, v5, v7}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    :goto_1e
    return-void

    :goto_1f
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    :cond_30
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "can\'t recognize cancelled on here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    :goto_20
    return-void
.end method

.method public final finished()V
    .locals 3

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->asyncExecuted:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    :goto_0
    invoke-interface {v2, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->processCalls()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v0

    const-string v0, "DownloadCall"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call is finished "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "Call wasn\'t in-flight!"

    invoke-direct {p0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method
