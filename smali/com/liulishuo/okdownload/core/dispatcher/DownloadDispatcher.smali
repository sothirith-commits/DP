.class public final Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field public final flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final maxParallelRunningCount:I

.field public final readyAsyncCalls:Ljava/util/List;

.field public final runningAsyncCalls:Ljava/util/List;

.field public final runningSyncCalls:Ljava/util/List;

.field public final skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x5

    iput v3, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    iput-object v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    return-void
.end method

.method public static inspectForConflict(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/List;)Z
    .locals 5

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-boolean v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2, p0}, Lcom/liulishuo/okdownload/DownloadTask;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object p1, v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v0, 0x5

    invoke-virtual {p1, p0, v0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    return v3

    :cond_2
    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized enqueueIgnorePriority(Lcom/liulishuo/okdownload/DownloadTask;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    new-instance v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-direct {v1, p1, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCall;-><init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized filterCanceledCalls(Lcom/liulishuo/okdownload/core/IdentifiedTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-eq v2, p1, :cond_1

    iget v2, v2, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-boolean p1, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-nez p1, :cond_3

    iget-boolean p1, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->finishing:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-eq v2, p1, :cond_6

    iget v2, v2, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_5

    :cond_6
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-eq v2, p1, :cond_9

    iget v2, v2, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getId()I

    move-result v3

    if-ne v2, v3, :cond_8

    :cond_9
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v1, "OkDownload Download"

    sget-object v2, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    new-instance v8, Lcom/liulishuo/okdownload/core/Util$1;

    invoke-direct {v8, v1}, Lcom/liulishuo/okdownload/core/Util$1;-><init>(Ljava/lang/String;)V

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized handleCanceledCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "handle cancel calls, cancel calls: "

    monitor-enter p0

    :try_start_0
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCall;->cancel()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const-string p2, "DownloadDispatcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle cancel calls, callback cancel event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x1

    if-gt p2, v0, :cond_2

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p2

    iget-object p2, p2, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object p2, p2, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p2, p1, v1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    iget-object p1, p1, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    invoke-virtual {p1, p2}, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->endTasksWithCanceled(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final inspectCompleted(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 14

    iget-boolean v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->passIfAlreadyCompleted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v2, v2, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v0, :cond_8

    iget-boolean v4, v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v7

    cmp-long v4, v7, v5

    if-gtz v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v3, :cond_6

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v7

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-nez v4, :cond_6

    iget-object v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->responseFilenameMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iput-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    iget-object v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p1, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/liulishuo/okdownload/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v5

    :goto_1
    move-wide v12, v5

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "file is not ready on valid info for task on complete state "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadStrategy"

    invoke-static {v0, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_1

    :goto_2
    new-instance p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    const-wide/16 v8, 0x0

    move-object v7, p0

    move-wide v10, v12

    invoke-direct/range {v7 .. v13}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p0

    :cond_8
    :goto_3
    return v1
.end method

.method public final declared-synchronized isFileConflictAfterRun(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 6

    const-string v0, "is file conflict after run: "

    monitor-enter p0

    :try_start_0
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-boolean v5, v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-nez v5, :cond_1

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-ne v3, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    iget-boolean v5, v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;->canceled:Z

    if-nez v5, :cond_4

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    if-ne v3, p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit p0

    return v4

    :cond_6
    monitor-exit p0

    return v1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized processCalls()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v0, v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/download/DownloadCall;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0, v2}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->isFileConflictAfterRun(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v4, v3}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->taskEnd(Lcom/liulishuo/okdownload/DownloadTask;ILjava/lang/Exception;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->flyingCanceledAsyncCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->maxParallelRunningCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v1, v2, :cond_3

    monitor-exit p0

    return-void

    :cond_5
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
