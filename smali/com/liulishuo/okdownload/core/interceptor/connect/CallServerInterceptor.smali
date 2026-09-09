.class public final Lcom/liulishuo/okdownload/core/interceptor/connect/CallServerInterceptor;
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
    .locals 1

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    iget-object v0, p1, Lcom/liulishuo/okdownload/core/download/DownloadChain;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {p0, v0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkOnWifi(Lcom/liulishuo/okdownload/DownloadTask;)V

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object p0

    iget-object p0, p0, Lcom/liulishuo/okdownload/OkDownload;->downloadStrategy:Lcom/liulishuo/okdownload/core/download/DownloadStrategy;

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy;->inspectNetworkAvailable()V

    invoke-virtual {p1}, Lcom/liulishuo/okdownload/core/download/DownloadChain;->getConnectionOrCreate()Lcom/koushikdutta/async/FilteredDataEmitter$1;

    move-result-object p0

    iget-object p1, p0, Lcom/koushikdutta/async/FilteredDataEmitter$1;->this$0:Ljava/lang/Object;

    check-cast p1, Ljava/net/URLConnection;

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p0
.end method
