.class public final Lcom/liulishuo/okdownload/core/download/DownloadCache$PreError;
.super Lcom/liulishuo/okdownload/core/download/DownloadCache;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/download/DownloadCache;-><init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->unknownError:Z

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/download/DownloadCache;->realCause:Ljava/io/IOException;

    return-void
.end method
