.class public final Lokhttp3/internal/concurrent/TaskQueue$execute$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final runOnce()J
    .locals 15

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    iget v4, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$r8$classId:I

    packed-switch v4, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v0, v0}, Lokhttp3/internal/http2/Http2Writer;->ping(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_0
    return-wide v2

    :pswitch_0
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iget-object v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const-wide/high16 v8, -0x8000000000000000L

    move-wide v9, v8

    move-object v8, v7

    move v7, v0

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lokhttp3/internal/connection/RealConnection;

    const-string v12, "connection"

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-enter v11

    :try_start_1
    invoke-virtual {p0, v11, v4, v5}, Lokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lokhttp3/internal/connection/RealConnection;J)I

    move-result v12

    if-lez v12, :cond_0

    add-int/2addr v7, v1

    goto :goto_2

    :cond_0
    add-int/2addr v0, v1

    iget-wide v12, v11, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J

    sub-long v12, v4, v12

    cmp-long v14, v12, v9

    if-lez v14, :cond_1

    move-object v8, v11

    move-wide v9, v12

    :cond_1
    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v11

    throw p0

    :cond_2
    iget-wide v11, p0, Lokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v6, v9, v11

    if-gez v6, :cond_5

    iget v6, p0, Lokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v0, v6, :cond_3

    goto :goto_3

    :cond_3
    if-lez v0, :cond_4

    sub-long v2, v11, v9

    goto :goto_4

    :cond_4
    if-lez v7, :cond_8

    move-wide v2, v11

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    monitor-enter v8

    :try_start_2
    iget-object v0, v8, Lokhttp3/internal/connection/RealConnection;->calls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    xor-int/2addr v0, v1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    monitor-exit v8

    goto :goto_4

    :cond_6
    :try_start_3
    iget-wide v6, v8, Lokhttp3/internal/connection/RealConnection;->idleAtNs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-long/2addr v6, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_7

    monitor-exit v8

    goto :goto_4

    :cond_7
    :try_start_4
    iput-boolean v1, v8, Lokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v8

    iget-object v0, v8, Lokhttp3/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object p0, p0, Lokhttp3/internal/connection/RealConnectionPool;->cleanupQueue:Lokhttp3/internal/concurrent/TaskQueue;

    invoke-virtual {p0}, Lokhttp3/internal/concurrent/TaskQueue;->cancelAll()V

    :cond_8
    :goto_4
    return-wide v2

    :catchall_1
    move-exception p0

    monitor-exit v8

    throw p0

    :pswitch_1
    iget-object p0, p0, Lokhttp3/internal/concurrent/TaskQueue$execute$1;->$block:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
