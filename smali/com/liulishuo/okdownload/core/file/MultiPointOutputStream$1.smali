.class public final Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;


# direct methods
.method public synthetic constructor <init>(Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;I)V
    .locals 0

    iput p2, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;->$r8$classId:I

    iput-object p1, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;->this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;->this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    :try_start_0
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->allNoSyncLength:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_0
    if-ge p0, v2, :cond_0

    :try_start_2
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->close(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "MultiPointOutputStream"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OutputStream close failed task["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v6, v6, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] block["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    :goto_2
    iget v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_7

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    :try_start_4
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, p0

    :goto_3
    if-ge v3, v2, :cond_2

    iget-object v4, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->noMoreStreamList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto/16 :goto_8

    :cond_2
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/liulishuo/okdownload/DownloadTask;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    :cond_3
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/core/file/FileLock;->increaseLock(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v1, v2}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->ensureSync(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v1

    iget-object v1, v1, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v1, v1, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;

    iget-object v2, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/liulishuo/okdownload/core/file/FileLock;->decreaseLock(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v1

    invoke-static {}, Lcom/liulishuo/okdownload/OkDownload;->with()Lcom/liulishuo/okdownload/OkDownload;

    move-result-object v2

    iget-object v2, v2, Lcom/liulishuo/okdownload/OkDownload;->processFileStrategy:Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;

    iget-object v2, v2, Lcom/liulishuo/okdownload/core/file/ProcessFileStrategy;->fileLock:Lcom/liulishuo/okdownload/core/file/FileLock;

    iget-object v3, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/liulishuo/okdownload/core/file/FileLock;->decreaseLock(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_4
    :goto_4
    monitor-enter v0

    :try_start_7
    iget-object v1, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    :goto_5
    if-ge p0, v2, :cond_5

    :try_start_8
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->close(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v3

    const-string v4, "MultiPointOutputStream"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OutputStream close failed task["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v6, v6, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] block["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_5
    iget-object p0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    goto/16 :goto_2

    :goto_7
    return-void

    :catchall_3
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw p0

    :goto_8
    monitor-enter v0

    :try_start_a
    iget-object v2, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->outputStreamMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_9
    if-ge p0, v3, :cond_6

    :try_start_b
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->close(I)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_a

    :catch_2
    move-exception v4

    const-string v5, "MultiPointOutputStream"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OutputStream close failed task["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v7, v7, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] block["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/liulishuo/okdownload/core/Util;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_6
    iget-object p0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->store:Lcom/liulishuo/okdownload/core/breakpoint/BreakpointStoreOnCache;

    iget-object v0, v0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget v0, v0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :catchall_4
    move-exception p0

    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw p0

    :pswitch_0
    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream$1;->this$0:Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_d
    invoke-virtual {p0}, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->runSync()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    iput-object v0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->syncException:Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sync to breakpoint-store for task["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/liulishuo/okdownload/core/file/MultiPointOutputStream;->task:Lcom/liulishuo/okdownload/DownloadTask;

    iget p0, p0, Lcom/liulishuo/okdownload/DownloadTask;->id:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] failed with cause: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiPointOutputStream"

    invoke-static {v0, p0}, Lcom/liulishuo/okdownload/core/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
