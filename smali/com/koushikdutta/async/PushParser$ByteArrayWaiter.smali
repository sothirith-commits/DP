.class public final Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "SourceFile"


# instance fields
.field public callback:Lcom/koushikdutta/async/PushParser$ParseCallback;


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 0

    iget p1, p0, Lcom/koushikdutta/async/PushParser$Waiter;->length:I

    new-array p1, p1, [B

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    iget-object p0, p0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-interface {p0, p1}, Lcom/koushikdutta/async/PushParser$ParseCallback;->parsed(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
