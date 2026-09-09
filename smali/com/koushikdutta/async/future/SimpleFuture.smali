.class public Lcom/koushikdutta/async/future/SimpleFuture;
.super Lcom/koushikdutta/async/future/SimpleCancellable;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field public exception:Ljava/lang/Exception;

.field public internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

.field public result:Ljava/lang/Object;

.field public silent:Z

.field public waiter:Lcom/koushikdutta/async/AsyncSemaphore;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()Z
    .locals 3

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    invoke-super {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->cancel()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/koushikdutta/async/AsyncSemaphore;->release()V

    iput-object v2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_1
    iget-object v1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iput-object v2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iput-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v2, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_1

    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncSemaphore;->acquire()V

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    if-nez v0, :cond_1

    new-instance v0, Lcom/koushikdutta/async/AsyncSemaphore;

    invoke-direct {v0}, Lcom/koushikdutta/async/AsyncSemaphore;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/AsyncSemaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleFuture;->getResultOrThrow()Ljava/lang/Object;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getResultOrThrow()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object p0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 2

    iget-boolean v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->silent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;-><init>()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    iput-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    iget-object p0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    iput-object p0, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_1
    iget-object p0, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    if-eqz p0, :cond_3

    iget-object p2, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    iget-object v0, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->callback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iput-object v1, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->e:Ljava/lang/Exception;

    iput-object v1, p1, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;->result:Ljava/lang/Object;

    invoke-interface {p0, p2, v0, p1}, Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;->onCompleted(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final setCallback(Landroidx/cardview/widget/CardView$1;)V
    .locals 2

    new-instance v0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void
.end method

.method public final setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iget-boolean p2, p0, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->isCancelled()Z

    move-result p2

    if-nez p2, :cond_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setComplete(Ljava/lang/Exception;Ljava/lang/Object;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/SimpleCancellable;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->result:Ljava/lang/Object;

    iput-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->exception:Ljava/lang/Exception;

    iget-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/koushikdutta/async/AsyncSemaphore;->release()V

    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->waiter:Lcom/koushikdutta/async/AsyncSemaphore;

    :cond_1
    iget-object p1, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    iput-object p2, p0, Lcom/koushikdutta/async/future/SimpleFuture;->internalCallback:Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p3, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->handleCallbackUnlocked(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    const/4 p0, 0x1

    return p0

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
