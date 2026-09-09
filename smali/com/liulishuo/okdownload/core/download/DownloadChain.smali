.class public final Lcom/liulishuo/okdownload/core/download/DownloadChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field public final blockIndex:I

.field public final cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

.field public final callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

.field public connectIndex:I

.field public final connectInterceptorList:Ljava/util/ArrayList;

.field public volatile connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

.field public volatile currentThread:Ljava/lang/Thread;

.field public fetchIndex:I

.field public final fetchInterceptorList:Ljava/util/ArrayList;

.field public final finished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public noCallbackIncreaseBytes:J

.field public final releaseConnectionRunnable:Landroidx/appcompat/widget/Toolbar$2;

.field public responseContentLength:J

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

    const-string v0, "OkDownload Cancel Block"

    invoke-direct {v7, v0}, Lcom/liulishuo/okdownload/core/Util$1;-><init>(Ljava/lang/String;)V

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    const/4 v1, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lcom/liulishuo/okdownload/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(ILcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/download/DownloadCache;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    iput v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$2;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, Landroidx/appcompat/widget/Toolbar$2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionRunnable:Landroidx/appcompat/widget/Toolbar$2;

    iput p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iput-object p3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-object p5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p1

    iget-object p1, p1, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    return-void
.end method


# virtual methods
.method public final flushNoCallbackIncreaseBytes()V
    .locals 7

    iget-wide v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    iget-object v6, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v4, v6, v5, v0, v1}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->fetchProgress(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    iput-wide v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->noCallbackIncreaseBytes:J

    return-void
.end method

.method public final declared-synchronized getConnectionOrCreate()Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->redirectLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;->create(Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final processConnect()Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;->interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw p0
.end method

.method public final processFetch()J
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;

    invoke-interface {v0, p0}, Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;->interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw p0
.end method

.method public final declared-synchronized releaseConnection()V
    .locals 3

    const-string v0, "release connection "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {v1}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->release()V

    const-string v1, "DownloadChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " task["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] block["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->currentThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->finished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnectionRunnable:Landroidx/appcompat/widget/Toolbar$2;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    throw v1

    :goto_0
    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "The chain has been finished!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final start()V
    .locals 11

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v0

    iget-object v0, v0, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    new-instance v1, Lcom/liulishuo/okdownload/core/interceptor/RetryInterceptor;

    invoke-direct {v1}, Lcom/liulishuo/okdownload/core/interceptor/RetryInterceptor;-><init>()V

    new-instance v2, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;

    invoke-direct {v2}, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;-><init>()V

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectInterceptorList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/liulishuo/okdownload/core/interceptor/connect/RedirectInterceptor;

    invoke-direct {v4}, Lcom/liulishuo/okdownload/core/interceptor/connect/RedirectInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/liulishuo/okdownload/core/interceptor/connect/HeaderInterceptor;

    invoke-direct {v4}, Lcom/liulishuo/okdownload/core/interceptor/connect/HeaderInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;

    invoke-direct {v4}, Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processConnect()Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v4

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v5}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    iget-wide v7, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->responseContentLength:J

    iget-object v9, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v10, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    invoke-virtual {v6, v9, v10, v7, v8}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->fetchStart(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    new-instance v6, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;

    iget-object v4, v4, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v4, Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    iget-object v5, v5, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz v5, :cond_0

    invoke-direct {v6, v10, v4, v5, v9}, Lcom/liulishuo/okdownload/core/interceptor/FetchDataInterceptor;-><init>(ILjava/io/InputStream;Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;Lcom/liulishuo/okdownload/DownloadTask;)V

    iget-object v4, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, p0, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processFetch()J

    move-result-wide v1

    iget-object p0, v0, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    invoke-virtual {p0, v9, v10, v1, v2}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->fetchEnd(Lcom/liulishuo/okdownload/DownloadTask;IJ)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw p0
.end method
