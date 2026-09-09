.class public final Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;
.super Ljava/util/concurrent/LinkedBlockingQueue;
.source "SourceFile"


# instance fields
.field private mCapacity:I

.field private volatile mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    return-void
.end method

.method public static synthetic access$302(Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;)V
    .locals 0

    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    return-void
.end method


# virtual methods
.method public final bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->offer(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final offer(Ljava/lang/Runnable;)Z
    .locals 2

    iget v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mCapacity:I

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/ThreadUtils$LinkedBlockingQueue4Util;->mPool:Lcom/blankj/utilcode/util/ThreadUtils$ThreadPoolExecutor4Util;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
