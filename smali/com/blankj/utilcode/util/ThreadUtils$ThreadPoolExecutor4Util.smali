.class public final Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# instance fields
.field public final mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p6, p0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)V

    iput-object p6, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    return-void
.end method

.method public static access$100(I)Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;
    .locals 24

    move/from16 v2, p0

    const/4 v0, 0x0

    const/4 v1, -0x8

    if-eq v2, v1, :cond_3

    const/4 v1, -0x4

    if-eq v2, v1, :cond_2

    const/4 v1, -0x2

    if-eq v2, v1, :cond_1

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v6}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v7, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v0, "fixed("

    const-string v1, ")"

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    move-object v0, v8

    move/from16 v1, p0

    move/from16 v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    goto/16 :goto_0

    :cond_0
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget-object v14, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v15}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v1, "single"

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object v9, v8

    move-object/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    goto :goto_0

    :cond_1
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(I)V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v2, "cached"

    invoke-direct {v0, v2}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0x3c

    const/16 v17, 0x0

    const/16 v18, 0x80

    move-object/from16 v16, v8

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget v0, Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v11, v0, 0x1

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v15, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v15}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v1, "io"

    invoke-direct {v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v12, 0x1e

    move-object v9, v8

    move v10, v11

    move-object/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    sget v1, Lcom/blankj/utilcode/util/ThreadUtils;->CPU_COUNT:I

    add-int/lit8 v17, v1, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v18, v1, 0x1

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v1, v0}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;-><init>(I)V

    new-instance v0, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;

    const-string v2, "cpu"

    invoke-direct {v0, v2}, Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v19, 0x1e

    move-object/from16 v16, v8

    move-object/from16 v22, v1

    move-object/from16 v23, v0

    invoke-direct/range {v16 .. v23}, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$UtilsThreadFactory;)V

    :goto_0
    return-object v8
.end method


# virtual methods
.method public final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    :catch_0
    const-string v0, "ThreadUtils"

    const-string v1, "This will not happen!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
