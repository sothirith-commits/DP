.class public final Lcom/liulishuo/okdownload/core/interceptor/connect/RedirectInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/interceptor/Interceptor$Connect;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final interceptConnect(Lcom/liulishuo/okdownload/core/download/DownloadChain;)Lcom/koushikdutta/async/FilteredDataEmitter$1;
    .locals 3

    const/4 p0, 0x0

    :goto_0
    iget-object v0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    invoke-virtual {v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;->isInterrupt()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->processConnect()Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-eq v1, v2, :cond_1

    const/16 v2, 0x134

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    :cond_1
    :goto_1
    add-int/lit8 p0, p0, 0x1

    const/16 v2, 0xa

    if-ge p0, v2, :cond_3

    const-string v2, "Location"

    iget-object v0, v0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Ljava/net/URLConnection;

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->releaseConnection()V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->connectionFactory:Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/liulishuo/okdownload/core/connection/DownloadUrlConnection$Factory;->create(Ljava/lang/String;)Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object v1

    monitor-enter p1

    :try_start_0
    iput-object v1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->connection:Lcom/koushikdutta/async/FilteredDataEmitter$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    iget-object v1, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->cache:Lcom/liulishuo/okdownload/core/download/DownloadCache;

    iput-object v0, v1, Lcom/liulishuo/okdownload/core/download/DownloadCache;->redirectLocation:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Response code is "

    const-string v0, " but can\'t find Location field"

    invoke-static {v1, p1, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Too many redirect requests: "

    invoke-static {v0, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    sget-object p0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    throw p0
.end method
