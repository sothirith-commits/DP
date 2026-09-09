.class public final Lcom/liulishuo/okdownload/core/interceptor/RetryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Fetch;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 2

    iget-object p0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processConnect()Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    instance-of v1, v0, Lcom/liulishuo/okdownload/core/exception/RetryException;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    iput v0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connectIndex:I

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnection()V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    throw v0
.end method

.method public final interceptFetch(Lcom/liulishuo/okdownload/core/download/DownloadChain;)J
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processFetch()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {p1, p0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->catchException(Ljava/io/IOException;)V

    throw p0
.end method
