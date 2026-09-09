.class public abstract Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public volatile runner:Ljava/lang/Thread;

.field public final state:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static getDeliver()Lcom/luck/picture/lib/thread/PictureThreadUtils$3;
    .locals 1

    sget-object v0, Lcom/luck/picture/lib/thread/PictureThreadUtils;->sDeliver:Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    if-nez v0, :cond_0

    new-instance v0, Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    invoke-direct {v0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$3;-><init>()V

    sput-object v0, Lcom/luck/picture/lib/thread/PictureThreadUtils;->sDeliver:Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    :cond_0
    sget-object v0, Lcom/luck/picture/lib/thread/PictureThreadUtils;->sDeliver:Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    return-object v0
.end method


# virtual methods
.method public abstract doInBackground()Ljava/lang/Object;
.end method

.method public abstract onCancel()V
.end method

.method public final onDone()V
    .locals 1

    sget-object v0, Lcom/luck/picture/lib/thread/PictureThreadUtils;->TASK_POOL_MAP:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract onFail(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
.end method

.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->runner:Ljava/lang/Thread;

    :try_start_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->doInBackground()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->getDeliver()Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    move-result-object v1

    new-instance v3, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->getDeliver()Lcom/luck/picture/lib/thread/PictureThreadUtils$3;

    move-result-object v1

    new-instance v2, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/umeng/commonsdk/internal/c$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/luck/picture/lib/thread/PictureThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lcom/luck/picture/lib/thread/PictureThreadUtils$Task;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x4

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    :goto_0
    return-void
.end method
