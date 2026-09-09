.class public final Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/PushParser$ParseCallback;
.implements Lcom/koushikdutta/async/callback/DataCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;


# direct methods
.method public synthetic constructor <init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;I)V
    .locals 0

    iput p2, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    if-eqz p1, :cond_0

    :goto_0
    iget-object p1, p2, Lcom/koushikdutta/async/ByteBufferList;->mBuffers:Lcom/koushikdutta/async/util/ArrayDeque;

    invoke-virtual {p1}, Lcom/koushikdutta/async/util/ArrayDeque;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remove()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-static {p1}, Lcom/koushikdutta/async/ByteBufferList;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    iget-boolean p1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;I)V

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/PushParser;

    invoke-virtual {p0, p2, p1}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v0, p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_1
    return-void
.end method

.method public parsed(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, [B

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->peekShort([BLjava/nio/ByteOrder;)S

    move-result p1

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    if-eq v0, p1, :cond_0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "CRC mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->report(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    iget-object p1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    const/4 p1, 0x0

    iput-boolean p1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    iget-object p0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$emitter:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/DataEmitter;

    invoke-virtual {v1, p0}, Lcom/koushikdutta/async/FilteredDataEmitter;->setDataEmitter(Lcom/koushikdutta/async/DataEmitter;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, [B

    iget-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1$1;->this$1:Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    iget-boolean v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->hcrc:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->this$0:Ljava/lang/Object;

    check-cast v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;

    iget-object v1, v1, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v1}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->peekShort([BLjava/nio/ByteOrder;)S

    move-result p1

    const v1, 0xffff

    and-int/2addr p1, v1

    new-instance v1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/16 v2, 0x17

    invoke-direct {v1, v2, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    iget-object p0, v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;->val$parser:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/PushParser;

    invoke-virtual {p0, p1, v1}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
