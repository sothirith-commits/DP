.class public final Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;


# static fields
.field public static final CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".*\\d+ *- *(\\d+) */ *\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;->CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 14

    const-string p0, "Update store failed!"

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processConnect()Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v0

    iget-object v1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v2, v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    iget-boolean v2, v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/net/URLConnection;

    const-string v4, "Content-Range"

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    if-nez v4, :cond_1

    sget-object v4, Lcom/liulishuo/okdownload/core/interceptor/BreakpointInterceptor;->CONTENT_RANGE_RIGHT_VALUE:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v7

    :goto_0
    cmp-long v2, v9, v5

    if-lez v2, :cond_1

    const-wide/16 v7, 0x1

    add-long/2addr v7, v9

    :cond_1
    cmp-long v2, v7, v5

    if-gez v2, :cond_2

    iget-object v2, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v2, Ljava/net/URLConnection;

    const-string v4, "Content-Length"

    invoke-virtual {v2, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :cond_2
    invoke-virtual {v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v9

    cmp-long v2, v7, v5

    if-lez v2, :cond_5

    cmp-long v2, v7, v9

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SingleBlock special check: the response instance-length["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "] isn\'t equal to the instance length from trial-connection["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "BreakpointInterceptor"

    invoke-static {v4, v2}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v9

    iget-object v10, v9, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v10

    iget-wide v12, v9, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->startOffset:J

    add-long/2addr v10, v12

    cmp-long v9, v10, v5

    if-eqz v9, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    new-instance v2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJ)V

    iget-object v5, v1, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v3, :cond_4

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v2

    iget-object v2, v2, Lcom/liulishuo/okdownload/OkDownload;->callbackDispatcher:Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;

    iget-object v2, v2, Lcom/liulishuo/okdownload/core/dispatcher/CallbackDispatcher;->transmit:Lcom/koushikdutta/async/FilteredDataEmitter$1;

    sget-object v3, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->CONTENT_LENGTH_CHANGED:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    iget-object v4, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v2, v4, v1, v3}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->downloadFromBeginning(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;)V

    goto :goto_2

    :cond_4
    const-string p0, "Discard breakpoint because of on this special case, we have to download from beginning"

    invoke-static {v4, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/liulishuo/okdownload/core/exception/RetryException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;->update(Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    :cond_6
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw p0
.end method

.method public final interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J
    .locals 12

    iget-wide v0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->responseContentLength:J

    iget p0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->blockIndex:I

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v6, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-object v6, v6, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    if-eqz v6, :cond_8

    const-wide/16 v7, 0x0

    :goto_1
    :try_start_0
    iget v9, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    iget-object v10, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchInterceptorList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_1

    iget v9, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    sub-int/2addr v9, v5

    iput v9, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->fetchIndex:I

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processFetch()J

    move-result-wide v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v11, v9, v2

    if-nez v11, :cond_6

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-boolean p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    if-nez p1, :cond_2

    invoke-virtual {v6, p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->done(I)V

    :cond_2
    if-eqz v4, :cond_5

    iget-object p1, v6, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object p1

    iget-object v2, p1, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    sget-object v6, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    cmp-long p0, v7, v0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Fetch-length isn\'t equal to the response content-length, "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "!= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current offset on block-info isn\'t update correct, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " != "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    return-wide v7

    :cond_6
    add-long/2addr v7, v9

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->flushNoCallbackIncreaseBytes()V

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iget-boolean p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    if-nez p1, :cond_7

    invoke-virtual {v6, p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->done(I)V

    :cond_7
    throw v0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
