.class public final Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/liulishuo/okdownload/core/file/FileLock;

    invoke-direct {v0}, Lcom/liulishuo/okdownload/core/file/FileLock;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;

    return-void
.end method
