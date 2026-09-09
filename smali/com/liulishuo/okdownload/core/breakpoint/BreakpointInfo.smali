.class public final Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final blockInfoList:Ljava/util/ArrayList;

.field public chunked:Z

.field public etag:Ljava/lang/String;

.field public final filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

.field public final id:I

.field public final parentFile:Ljava/io/File;

.field public targetFile:Ljava/io/File;

.field public final taskOnlyProvidedParentPath:Z

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iput-object p4, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p4, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/liulishuo/okdownload/core/Util;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>()V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    invoke-direct {p1, p3}, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    :goto_0
    iput-boolean p4, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    return-void
.end method


# virtual methods
.method public final copy()Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;
    .locals 14

    new-instance v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;

    iget v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v3, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;-><init>(Ljava/lang/String;ILjava/lang/String;ZLjava/io/File;)V

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    iput-boolean v0, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object v1, v6, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    new-instance v2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object v3, v0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    iget-wide v8, v0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->startOffset:J

    iget-wide v10, v0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;-><init>(JJJ)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v6
.end method

.method public final getBlock(I)Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    return-object p0
.end method

.method public final getFile()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    :cond_1
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->targetFile:Ljava/io/File;

    return-object p0
.end method

.method public final getTotalLength()J
    .locals 4

    iget-boolean v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->chunked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->getTotalOffset()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-wide v2, v2, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->contentLength:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public final getTotalOffset()J
    .locals 6

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;

    iget-object v4, v4, Lcom/liulishuo/okdownload/core/breakpoint/BlockInfo;->currentOffset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public final isSameFrom(Lcom/liulishuo/okdownload/DownloadTask;)Z
    .locals 4

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    iget-object v1, p1, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    iget-object v2, p1, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v3, v3, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/liulishuo/okdownload/DownloadTask;->filenameFromResponse:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] url["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] etag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->etag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] taskOnlyProvidedParentPath["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->taskOnlyProvidedParentPath:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] parent path["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->parentFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] filename["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] block(s):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/breakpoint/BreakpointInfo;->blockInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
