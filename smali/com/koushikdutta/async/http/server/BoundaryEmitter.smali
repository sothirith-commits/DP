.class public Lcom/koushikdutta/async/http/server/BoundaryEmitter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "SourceFile"


# instance fields
.field public boundary:[B

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    return-void
.end method


# virtual methods
.method public onBoundaryEnd()V
    .locals 0

    return-void
.end method

.method public onBoundaryStart()V
    .locals 0

    return-void
.end method

.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 9

    iget p1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length p1, p1

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    iget v2, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->addFirst(Ljava/nio/ByteBuffer;)V

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    :cond_0
    iget p1, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    new-array v1, p1, [B

    invoke-virtual {p2, v1}, Lcom/koushikdutta/async/ByteBufferList;->get([B)V

    move p2, v0

    move v2, p2

    :goto_0
    if-ge p2, p1, :cond_f

    iget v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    const/4 v4, -0x1

    if-ltz v3, :cond_2

    aget-byte v5, v1, p2

    iget-object v6, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    aget-byte v7, v6, v3

    if-ne v5, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    array-length v5, v6

    if-ne v3, v5, :cond_e

    iput v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    :cond_1
    if-lez v3, :cond_e

    sub-int/2addr p2, v3

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    :cond_2
    const/4 v5, -0x2

    const/16 v6, 0x2d

    const/16 v7, 0xd

    const/4 v8, -0x4

    if-ne v3, v4, :cond_7

    aget-byte v3, v1, p2

    if-ne v3, v7, :cond_5

    iput v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    sub-int v3, p2, v2

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v4, v4

    sub-int/2addr v3, v4

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    invoke-super {p0, p0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_4
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryStart()V

    goto/16 :goto_1

    :cond_5
    if-ne v3, v6, :cond_6

    iput v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto/16 :goto_1

    :cond_6
    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string p2, "Invalid multipart/form-data. Expected \r or -"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void

    :cond_7
    const/4 v4, -0x3

    if-ne v3, v5, :cond_9

    aget-byte v3, v1, p2

    if-ne v3, v6, :cond_8

    iput v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    :cond_8
    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string p2, "Invalid multipart/form-data. Expected -"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void

    :cond_9
    if-ne v3, v4, :cond_b

    aget-byte v3, v1, p2

    if-ne v3, v7, :cond_a

    iput v8, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    sub-int v3, p2, v2

    iget-object v4, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v4, v4

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->boundary:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v4, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance v4, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v4}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {v4, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    invoke-super {p0, p0, v4}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {p0}, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->onBoundaryEnd()V

    goto :goto_1

    :cond_a
    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string p2, "Invalid multipart/form-data. Expected \r"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void

    :cond_b
    if-ne v3, v8, :cond_d

    aget-byte v3, v1, p2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    add-int/lit8 v2, p2, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    goto :goto_1

    :cond_c
    new-instance v3, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v4, "Invalid multipart/form-data. Expected \n"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_d
    new-instance v3, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v4, "Invalid multipart/form-data. Unknown state?"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    :cond_e
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_f
    if-ge v2, p1, :cond_10

    iget p2, p0, Lcom/koushikdutta/async/http/server/BoundaryEmitter;->state:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p1, v2

    sub-int/2addr p1, p2

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v1, v2, p1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {p2}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)V

    invoke-super {p0, p0, p2}, Lcom/koushikdutta/async/FilteredDataEmitter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :cond_10
    return-void
.end method
