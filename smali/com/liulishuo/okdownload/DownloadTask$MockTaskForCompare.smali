.class public final Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;
.super Lcom/liulishuo/okdownload/core/IdentifiedTask;
.source "SourceFile"


# instance fields
.field public final filename:Ljava/lang/String;

.field public final id:I

.field public final parentFile:Ljava/io/File;

.field public final providedPathFile:Ljava/io/File;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/liulishuo/okdownload/DownloadTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/IdentifiedTask;-><init>()V

    iput p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->id:I

    iget-object p1, p2, Lcom/liulishuo/okdownload/DownloadTask;->url:Ljava/lang/String;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    iget-object p1, p2, Lcom/liulishuo/okdownload/DownloadTask;->directoryFile:Ljava/io/File;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    iget-object p1, p2, Lcom/liulishuo/okdownload/DownloadTask;->providedPathFile:Ljava/io/File;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    iget-object p1, p2, Lcom/liulishuo/okdownload/DownloadTask;->filenameHolder:Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;

    iget-object p1, p1, Lcom/liulishuo/okdownload/core/download/DownloadStrategy$FilenameHolder;->filename:Ljava/lang/String;

    iput-object p1, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->id:I

    return p0
.end method

.method public final getParentFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->parentFile:Ljava/io/File;

    return-object p0
.end method

.method public final getProvidedPathFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->providedPathFile:Ljava/io/File;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/liulishuo/okdownload/DownloadTask$MockTaskForCompare;->url:Ljava/lang/String;

    return-object p0
.end method
