.class public final Lcom/koushikdutta/async/AsyncServer$Scheduled;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/future/Cancellable;
.implements Ljava/lang/Runnable;


# instance fields
.field public cancelled:Z

.field public final runnable:Ljava/lang/Runnable;

.field public final server:Lcom/koushikdutta/async/AsyncServer;

.field public final time:J


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    iput-object p2, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->time:J

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->server:Lcom/koushikdutta/async/AsyncServer;

    iget-object v1, v1, Lcom/koushikdutta/async/AsyncServer;->mQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, p0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->cancelled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isCancelled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->cancelled:Z

    return p0
.end method

.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer$Scheduled;->runnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
