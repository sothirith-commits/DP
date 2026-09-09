.class public final Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public dirty:Z

.field public fileExist:Z

.field public final info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

.field public infoRight:Z

.field public outputStreamSupport:Z

.field public final responseInstanceLength:J

.field public final task:Lcom/liulishuo/okdownload/DownloadTask;


# direct methods
.method public constructor <init>(Lcom/liulishuo/okdownload/DownloadTask;Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iput-object p2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iput-wide p3, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->responseInstanceLength:J

    return-void
.end method


# virtual methods
.method public final check()V
    .locals 11

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget-object v2, v1, Lcom/liulishuo/okdownload/DownloadTask;->uri:Landroid/net/Uri;

    sget-object v3, Lcom/liulishuo/okdownload/core/Util;->logger:Lcom/liulishuo/okdownload/core/Util$EmptyLogger;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/liulishuo/okdownload/core/Util;->getSizeFromContentUri(Landroid/net/Uri;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    move v2, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :goto_1
    iput-boolean v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->fileExist:Z

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->info:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget-object v3, v2, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :goto_2
    move v1, v6

    goto :goto_4

    :cond_2
    iget-boolean v7, v2, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-wide v7, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->responseInstanceLength:J

    cmp-long v1, v7, v4

    if-lez v1, :cond_7

    invoke-virtual {v2}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalLength()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v6

    :goto_3
    if-ge v1, v3, :cond_9

    invoke-virtual {v2, v1}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    move-result-object v7

    iget-wide v7, v7, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    cmp-long v7, v7, v4

    if-gtz v7, :cond_8

    goto :goto_2

    :cond_8
    add-int/2addr v1, v0

    goto :goto_3

    :cond_9
    move v1, v0

    :goto_4
    iput-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->infoRight:Z

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->outputStreamFactory:Lcom/liulishuo/okdownload/core/file/DownloadUriOutputStream$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->infoRight:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->fileExist:Z

    if-eqz v1, :cond_a

    move v0, v6

    :cond_a
    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->dirty:Z

    return-void
.end method

.method public final getCauseOrThrow()Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;
    .locals 3

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->infoRight:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->INFO_DIRTY:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->fileExist:Z

    if-nez v0, :cond_1

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->FILE_NOT_EXIST:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_1
    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    if-nez v0, :cond_2

    sget-object p0, Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;->OUTPUT_STREAM_NOT_SUPPORT:Lcom/liulishuo/okdownload/core/cause/ResumeFailedCause;

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No cause find with dirty: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->dirty:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileExist["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->fileExist:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] infoRight["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->infoRight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] outputStreamSupport["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/download/BreakpointLocalCheck;->outputStreamSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
