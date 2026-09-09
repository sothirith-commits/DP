.class public final Lcom/koushikdutta/async/PushParser$UntilWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "SourceFile"


# instance fields
.field public callback:Lcom/koushikdutta/async/callback/DataCallback;

.field public value:B


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 7

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p2, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {v3}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-byte v6, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->value:B

    if-ne v2, v6, :cond_0

    move v2, v1

    goto :goto_2

    :cond_0
    move v2, v4

    :goto_2
    if-nez v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    if-eqz v2, :cond_2

    invoke-virtual {p2, v3}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p2, v0, v5}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    iget v3, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v3, v1

    iput v3, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/koushikdutta/async/PushParser$UntilWaiter;->callback:Lcom/koushikdutta/async/callback/DataCallback;

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    if-eqz v2, :cond_4

    const/4 p0, 0x0

    :cond_4
    return-object p0
.end method
