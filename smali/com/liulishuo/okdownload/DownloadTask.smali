.class public final Lcom/liulishuo/okdownload/DownloadTask;
.super Lcom/liulishuo/okdownload/core/IdentifiedTask;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final autoCallbackToUIThread:Z

.field public final connectionCount:Ljava/lang/Integer;

.field public final directoryFile:Ljava/io/File;

.field public final filenameFromResponse:Z

.field public final filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

.field public final flushBufferSize:I

.field public final headerMapFields:Ljava/util/Map;

.field public final id:I

.field public final isPreAllocateLength:Ljava/lang/Boolean;

.field public final lastCallbackProcessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

.field public listener:Lcom/liulishuo/okdownload/DownloadListener;

.field public final minIntervalMillisCallbackProcess:I

.field public final passIfAlreadyCompleted:Z

.field public final priority:I

.field public final providedPathFile:Ljava/io/File;

.field public final readBufferSize:I

.field public final syncBufferIntervalMills:I

.field public final syncBufferSize:I

.field public tag:Ljava/lang/Object;

.field public targetFile:Ljava/io/File;

.field public final uri:Landroid/net/Uri;

.field public final url:Ljava/lang/String;

.field public final wifiRequired:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;ILjava/util/HashMap;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/okdownload/DownloadTask;->priority:I

    const/16 v1, 0x1000

    iput v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->readBufferSize:I

    const/16 v1, 0x4000

    iput v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->flushBufferSize:I

    const/high16 v1, 0x10000

    iput v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->syncBufferSize:I

    const/16 v1, 0x7d0

    iput v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->syncBufferIntervalMills:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->autoCallbackToUIThread:Z

    iput p3, p0, Lcom/liulishuo/okdownload/DownloadTask;->minIntervalMillisCallbackProcess:I

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->headerMapFields:Ljava/util/Map;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p3, p0, Lcom/liulishuo/okdownload/DownloadTask;->lastCallbackProcessTimestamp:Ljava/util/concurrent/atomic/AtomicLong;

    iput-boolean p6, p0, Lcom/liulishuo/okdownload/DownloadTask;->passIfAlreadyCompleted:Z

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadTask;->wifiRequired:Z

    iput-object p7, p0, Lcom/liulishuo/okdownload/DownloadTask;->connectionCount:Ljava/lang/Integer;

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/liulishuo/okdownload/DownloadTask;->isPreAllocateLength:Ljava/lang/Boolean;

    sget-object p4, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p4

    const-string p6, "file"

    invoke-virtual {p4, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    new-instance p4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p4, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->isDirectory()Z

    move-result p6

    if-eqz p6, :cond_0

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    goto :goto_1

    :cond_0
    sget-object p6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p7

    if-eqz p7, :cond_4

    invoke-static {p5}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-nez p7, :cond_2

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p7, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Uri already provided filename!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    if-nez p4, :cond_3

    new-instance p4, Ljava/io/File;

    const-string p7, "/"

    invoke-direct {p4, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    goto :goto_1

    :cond_4
    invoke-static {p5}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p7

    if-eqz p7, :cond_6

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p4

    if-nez p4, :cond_5

    new-instance p4, Ljava/io/File;

    const-string p7, "/"

    invoke-direct {p4, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_5
    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    goto :goto_1

    :cond_6
    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    :goto_1
    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    iput-boolean p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameFromResponse:Z

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameFromResponse:Z

    new-instance p4, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p4, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    :goto_2
    invoke-static {p5}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_8

    new-instance p4, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p4}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->providedPathFile:Ljava/io/File;

    goto :goto_3

    :cond_8
    new-instance p4, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p4, p5}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    new-instance p4, Ljava/io/File;

    iget-object p6, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    invoke-direct {p4, p6, p5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->targetFile:Ljava/io/File;

    iput-object p4, p0, Lcom/liulishuo/okdownload/DownloadTask;->providedPathFile:Ljava/io/File;

    :goto_3
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p4

    iget-object p4, p4, Lcom/liulishuo/okdownload/OkDownload;->breakpointStore:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    monitor-enter p4

    :try_start_0
    iget-object p5, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->keyToIdMap:Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

    iget-object p5, p5, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_9

    move-object p3, p1

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p4

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_a
    :try_start_1
    iget-object p1, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move p2, v0

    :goto_4
    if-ge p2, p1, :cond_c

    iget-object p3, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->storedInfos:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    if-eqz p3, :cond_b

    invoke-virtual {p3, p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->isSameFrom(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result p5

    if-eqz p5, :cond_b

    iget p1, p3, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p4

    goto :goto_7

    :cond_b
    add-int/2addr p2, v1

    goto :goto_4

    :cond_c
    :try_start_2
    iget-object p1, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_5
    if-ge v0, p1, :cond_f

    iget-object p2, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/liulishuo/okdownload/core/IdentifiedTask;

    if-nez p2, :cond_d

    goto :goto_6

    :cond_d
    invoke-virtual {p2, p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->compareIgnoreId(Lcom/liulishuo/okdownload/core/IdentifiedTask;)Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-virtual {p2}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->getId()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p4

    goto :goto_7

    :cond_e
    :goto_6
    add-int/2addr v0, v1

    goto :goto_5

    :cond_f
    :try_start_3
    invoke-virtual {p4}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->allocateId()I

    move-result p1

    iget-object p2, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->unStoredTasks:Landroid/util/SparseArray;

    new-instance p3, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;

    invoke-direct {p3, p1, p0}, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;-><init>(ILcom/liulishuo/okdownload/DownloadTask;)V

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p2, p4, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->keyToIdMap:Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p0, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p5, p5, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    iget-object p6, p2, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->keyToIdMap:Ljava/util/HashMap;

    invoke-virtual {p6, p3, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p2, Lcom/liulishuo/okdownload/core/breakpoint/KeyToIdMap;->idToKeyMap:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p4

    :goto_7
    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    return-void

    :goto_8
    monitor-exit p4

    throw p0
.end method


# virtual methods
.method public final cancel()V
    .locals 4

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v1, "cancel manually: "

    monitor-enter v0

    :try_start_0
    const-string v2, "DownloadDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p0, v1, v2}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->filterCanceledCalls(Lcom/liulishuo/okdownload/core/IdentifiedTask;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-gtz p0, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    iget-object p0, v0, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->processCalls()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->handleCanceledCalls(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/liulishuo/okdownload/DownloadTask;

    iget p1, p1, Lcom/liulishuo/okdownload/DownloadTask;->priority:I

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->priority:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public final enqueue(Lcom/liulishuo/okdownload/DownloadListener;)V
    .locals 3

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask;->listener:Lcom/liulishuo/okdownload/DownloadListener;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    iget-object p1, p1, Lcom/liulishuo/okdownload/OkDownload;->downloadDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const-string v0, "enqueueLocked for single task: "

    monitor-enter p1

    :try_start_0
    const-string v1, "DownloadDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->inspectCompleted(Lcom/liulishuo/okdownload/DownloadTask;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p1

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningAsyncCalls:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->runningSyncCalls:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->inspectForConflict(Lcom/liulishuo/okdownload/DownloadTask;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->enqueueIgnorePriority(Lcom/liulishuo/okdownload/DownloadTask;)V

    iget-object p0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq v0, p0, :cond_2

    iget-object p0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->readyAsyncCalls:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    monitor-exit p1

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit p1

    :goto_2
    iget-object p0, p1, Lcom/liulishuo/okdownload/core/dispatcher/DownloadDispatcher;->skipProceedCallCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :goto_3
    monitor-exit p1

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Lcom/liulishuo/okdownload/DownloadTask;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/liulishuo/okdownload/DownloadTask;

    iget v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    iget v2, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/IdentifiedTask;->compareIgnoreId(Lcom/liulishuo/okdownload/core/IdentifiedTask;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->targetFile:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->targetFile:Ljava/io/File;

    :cond_1
    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->targetFile:Ljava/io/File;

    return-object p0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    return p0
.end method

.method public final getParentFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    return-object p0
.end method

.method public final getProvidedPathFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->providedPathFile:Ljava/io/File;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->providedPathFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
