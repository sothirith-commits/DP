.class public final Lcom/koushikdutta/async/LineEmitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public final charset:Ljava/nio/charset/Charset;

.field public data:Lcom/koushikdutta/async/ByteBufferList;

.field public mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    iget p1, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    :goto_0
    iget v0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->read(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iget v2, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    sub-int/2addr v2, v0

    iput v2, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    const/16 v0, 0xa

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->mLineCallback:Lcom/koushikdutta/async/LineEmitter$StringCallback;

    iget-object p2, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    iget-object v0, p0, Lcom/koushikdutta/async/LineEmitter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->peekString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/LineEmitter$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    new-instance p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p1}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object p1, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object p0, p0, Lcom/koushikdutta/async/LineEmitter;->data:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    return-void
.end method
