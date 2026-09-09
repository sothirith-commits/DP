.class public Lcom/liulishuo/okdownload/core/download/DownloadCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public volatile fileBusyAfterRun:Z

.field public final outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

.field public volatile preAllocateFailed:Z

.field public volatile preconditionFailed:Z

.field public volatile realCause:Ljava/io/IOException;

.field public redirectLocation:Ljava/lang/String;

.field public volatile serverCanceled:Z

.field public volatile unknownError:Z

.field public volatile userCanceled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method

.method public constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->outputStream:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    return-void
.end method


# virtual methods
.method public final catchException(Ljava/io/IOException;)V
    .locals 2

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ResumeFailedException;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/ServerCanceledException;

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/FileBusyAfterRunException$1;

    if-ne p1, v0, :cond_3

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/liulishuo/okdownload/core/exception/PreAllocateException;

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/liulishuo/okdownload/core/exception/InterruptException;->SIGNAL:Lcom/liulishuo/okdownload/core/exception/InterruptException$1;

    if-eq p1, v0, :cond_5

    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    instance-of p0, p1, Ljava/net/SocketException;

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "catch unknown error "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadCache"

    invoke-static {p1, p0}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final isInterrupt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preconditionFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->userCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->serverCanceled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->fileBusyAfterRun:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->preAllocateFailed:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
