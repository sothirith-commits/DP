.class public final Lcom/deepalhome/launcher/util/DownLoadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

.field public static downloadListener:Lcom/liulishuo/okdownload/DownloadListener;

.field public static final innerDownloadListener:Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/DownLoadUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/DownLoadUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DownLoadUtil;

    new-instance v0, Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/DownLoadUtil;->innerDownloadListener:Lcom/deepalhome/launcher/util/DownLoadUtil$innerDownloadListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTask(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lcom/liulishuo/okdownload/DownloadTask;
    .locals 9

    const-string v0, "url"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;

    invoke-direct {v0, p0, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->filename:Ljava/lang/String;

    const/16 p0, 0x1e

    iput p0, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->connectionCount:Ljava/lang/Integer;

    sget-object p0, Lcom/deepalhome/launcher/http/ServerUtil;->INSTANCE:Lcom/deepalhome/launcher/http/ServerUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/http/ServerUtil;->randomUserAgent()Ljava/lang/String;

    move-result-object p0

    const-string p2, "User-Agent"

    invoke-virtual {v0, p2, p0}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/http/OpenListProxy;->INSTANCE:Lcom/deepalhome/launcher/http/OpenListProxy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/http/OpenListProxy;->proxyAuthHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lcom/liulishuo/okdownload/DownloadTask$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v2, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->uri:Landroid/net/Uri;

    iget v4, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->minIntervalMillisCallbackProcess:I

    iget-object v5, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->headerMapFields:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->filename:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->passIfAlreadyCompleted:Z

    iget-object v8, v0, Lcom/liulishuo/okdownload/DownloadTask$Builder;->connectionCount:Ljava/lang/Integer;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/liulishuo/okdownload/DownloadTask;-><init>(Ljava/lang/String;Landroid/net/Uri;ILjava/util/HashMap;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-object p0
.end method
