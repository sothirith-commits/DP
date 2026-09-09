.class public final Lcom/koushikdutta/async/PushParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public final mWaiting:Ljava/util/LinkedList;

.field public final order:Ljava/nio/ByteOrder;

.field public final pending:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->order:Ljava/nio/ByteOrder;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    iget-object v0, p0, Lcom/koushikdutta/async/PushParser;->pending:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget v2, v0, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/PushParser$Waiter;

    iget v3, v3, Lcom/koushikdutta/async/PushParser$Waiter;->length:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser;->order:Ljava/nio/ByteOrder;

    iput-object v2, v0, Lcom/koushikdutta/async/ByteBufferList;->order:Ljava/nio/ByteOrder;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/PushParser$Waiter;

    invoke-virtual {v2, p1, v0}, Lcom/koushikdutta/async/PushParser$Waiter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v0, p2}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_2
    return-void
.end method

.method public final readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/koushikdutta/async/PushParser;->mWaiting:Ljava/util/LinkedList;

    new-instance v0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    if-lez p1, :cond_0

    iput-object p2, v0, Lcom/koushikdutta/async/PushParser$ByteArrayWaiter;->callback:Lcom/koushikdutta/async/PushParser$ParseCallback;

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length should be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
