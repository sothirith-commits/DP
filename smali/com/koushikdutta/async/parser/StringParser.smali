.class public final Lcom/koushikdutta/async/parser/StringParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lcom/koushikdutta/async/FilteredDataEmitter;)Lcom/koushikdutta/async/future/SimpleFuture;
    .locals 6

    invoke-virtual {p1}, Lcom/koushikdutta/async/FilteredDataEmitter;->charset()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/parser/ByteBufferListParser;

    invoke-direct {v1}, Lcom/koushikdutta/async/parser/ByteBufferListParser;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    new-instance v2, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/parser/ByteBufferListParser$1;-><init>(Lcom/koushikdutta/async/FilteredDataEmitter;)V

    new-instance v3, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/koushikdutta/async/parser/ByteBufferListParser$2;-><init>(Lcom/koushikdutta/async/ByteBufferList;I)V

    invoke-interface {p1, v3}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    new-instance v3, Landroidx/cardview/widget/CardView$1;

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-direct {v3, v2, v1, v4, v5}, Landroidx/cardview/widget/CardView$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    iput-object v3, p1, Lcom/koushikdutta/async/DataEmitterBase;->endCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;

    const/4 v1, 0x3

    invoke-direct {p1, v1, p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/Util$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>()V

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p1, Lcom/koushikdutta/async/future/SimpleCancellable;->complete:Z

    if-eqz v0, :cond_0

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iput-object v2, p1, Lcom/koushikdutta/async/future/SimpleCancellable;->parent:Lcom/koushikdutta/async/future/Cancellable;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v0, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setCallbackInternal(Lcom/koushikdutta/async/future/SimpleFuture$FutureCallsite;Lcom/koushikdutta/async/future/SimpleFuture$FutureCallbackInternal;)V

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
