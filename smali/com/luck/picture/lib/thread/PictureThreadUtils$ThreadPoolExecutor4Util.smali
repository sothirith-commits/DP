.class public final Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# instance fields
.field public final mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mWorkQueue:Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;Lcom/luck/picture/lib/thread/PictureThreadUtils$UtilsThreadFactory;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p6, p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;->access$302(Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;)V

    iput-object p6, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;

    return-void
.end method

.method public static access$100()Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;
    .locals 9

    new-instance v8, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;

    sget v0, Lcom/luck/picture/lib/thread/PictureThreadUtils;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v0, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;

    invoke-direct {v6}, Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;-><init>()V

    new-instance v7, Lcom/luck/picture/lib/thread/PictureThreadUtils$UtilsThreadFactory;

    const-string v0, "io"

    invoke-direct {v7, v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$UtilsThreadFactory;-><init>(Ljava/lang/String;)V

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move v1, v2

    invoke-direct/range {v0 .. v7}, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;-><init>(IIJLjava/util/concurrent/TimeUnit;Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;Lcom/luck/picture/lib/thread/PictureThreadUtils$UtilsThreadFactory;)V

    return-object v8
.end method


# virtual methods
.method public final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

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
    iget-object v0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;->mSubmittedCount:Ljava/util/concurrent/atomic/AtomicInteger;

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

    iget-object p0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$ThreadPoolExecutor4Util;->mWorkQueue:Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/thread/PictureThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
