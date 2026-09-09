.class public final Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FILE_IO_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

.field public final doneState:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

.field public volatile firstOutputStream:Z

.field public final flushBufferSize:I

.field public final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public final isPreAllocateLength:Z

.field public final lastSyncTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field public final noMoreStreamList:Ljava/util/ArrayList;

.field public final noSyncLengthMap:Landroid/util/SparseArray;

.field public final outputStreamMap:Landroid/util/SparseArray;

.field public final parkedRunBlockThreadMap:Landroid/util/SparseArray;

.field public path:Ljava/lang/String;

.field public volatile runSyncThread:Ljava/lang/Thread;

.field public final state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

.field public final store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

.field public final supportSeek:Z

.field public final syncBufferIntervalMills:I

.field public final syncBufferSize:I

.field public syncException:Ljava/io/IOException;

.field public volatile syncFuture:Ljava/util/concurrent/Future;

.field public final syncRunnable:Ljava/lang/Runnable;

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

    const-string v0, "OkDownload file io"

    invoke-direct {v7, v0}, Lcom/liulishuo/okdownload/core/Util$1;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->FILE_IO_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->lastSyncTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    new-instance v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->doneState:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    new-instance v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->firstOutputStream:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v1, p1, Lcom/liulishuo/okdownload/DownloadTask;->flushBufferSize:I

    iput v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->flushBufferSize:I

    iget v1, p1, Lcom/liulishuo/okdownload/DownloadTask;->syncBufferSize:I

    iput v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferSize:I

    iget v1, p1, Lcom/liulishuo/okdownload/DownloadTask;->syncBufferIntervalMills:I

    iput v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p2

    iget-object p2, p2, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->supportSeek:Z

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p2

    iget-object p2, p2, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p2

    iget-object p2, p2, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Lcom/liulishuo/okdownload/DownloadTask;->isPreAllocateLength:Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->isPreAllocateLength:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noMoreStreamList:Ljava/util/ArrayList;

    new-instance p2, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;-><init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;I)V

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized close(I)V
    .locals 3

    const-string v0, "OutputStream close task["

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    const-string v1, "MultiPointOutputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] block["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final done(I)V
    .locals 6

    const-string v0, "OutputStream done but no need to ensure sync, because the syncFuture.isDone["

    const-string v1, "OutputStream done but no need to ensure sync, because the sync job not run yet. task["

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noMoreStreamList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncException:Ljava/io/IOException;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->doneState:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->inspectStreamState(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->doneState:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-boolean v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    invoke-virtual {p0, p1, v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->ensureSync(IZ)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "]"

    const-string v4, "] block["

    const-string v5, "MultiPointOutputStream"

    if-nez v2, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v1, v1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "] task["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->close(I)V

    return-void

    :cond_3
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->close(I)V

    throw v0
.end method

.method public final ensureSync(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :try_start_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    invoke-static {}, Ljava/util/concurrent/locks/LockSupport;->park()V

    :catch_0
    :goto_2
    return-void

    :cond_4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x19

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public final flushProcess()V
    .locals 11

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    if-ge v3, v1, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    cmp-long v4, v7, v4

    if-lez v4, :cond_0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;

    iget-object v5, v4, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream;->pdf:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_2
    const-string v0, "MultiPointOutputStream"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OutputStream flush and sync data to filesystem failed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    iget-object v8, v8, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    if-ne v9, v8, :cond_2

    invoke-virtual {v8, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    add-long/2addr v4, v6

    iget-object v8, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noSyncLengthMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    const-string v8, "MultiPointOutputStream"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "OutputStream sync success ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v10, v10, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") block("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")  syncLength("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") currentOffset("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {v6, v3}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Info not on store!"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->lastSyncTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final inspectStreamState(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;)V
    .locals 8

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noMoreStreamList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->noMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p1, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move v2, v3

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v2, p1, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    return-void
.end method

.method public final runSync()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OutputStream start flush looper task["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v1, v1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with syncBufferIntervalMills["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] syncBufferSize["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MultiPointOutputStream"

    invoke-static {v2, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSyncThread:Ljava/lang/Thread;

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    int-to-long v3, v0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->flushProcess()V

    :cond_0
    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->inspectStreamState(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-boolean v5, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    const-wide/16 v6, 0x0

    if-nez v5, :cond_4

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferSize:I

    int-to-long v8, v0

    cmp-long v0, v3, v8

    if-gez v0, :cond_2

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    :goto_1
    int-to-long v3, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->lastSyncTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long/2addr v3, v8

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    int-to-long v8, v0

    sub-long v3, v8, v3

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->flushProcess()V

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncBufferIntervalMills:I

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "runSync state change isNoMoreStream["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-boolean v5, v5, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "] newNoMoreStreamBlockList["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-object v5, v5, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->flushProcess()V

    :cond_5
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->newNoMoreStreamBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Thread;

    iget-object v7, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->remove(I)V

    if-eqz v6, :cond_6

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->state:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;

    iget-boolean v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$StreamsState;->isNoMoreStream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_9

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-eqz v2, :cond_8

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->parkedRunBlockThreadMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
