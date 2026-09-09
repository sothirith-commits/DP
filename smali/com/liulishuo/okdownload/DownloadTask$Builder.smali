.class public final Lcom/liulishuo/okdownload/DownloadTask$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public connectionCount:Ljava/lang/Integer;

.field public filename:Ljava/lang/String;

.field public volatile headerMapFields:Ljava/util/HashMap;

.field public minIntervalMillisCallbackProcess:I

.field public passIfAlreadyCompleted:Z

.field public final uri:Landroid/net/Uri;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    iput-object p2, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final declared-synchronized addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->headerMapFields:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->headerMapFields:Ljava/util/HashMap;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->headerMapFields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->headerMapFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
