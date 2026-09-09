.class public final Lokhttp3/RequestBody$Companion$toRequestBody$1;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# instance fields
.field public final $contentType:Lokhttp3/MediaType;

.field public final synthetic $r8$classId:I

.field public final $this_toRequestBody:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lokhttp3/MediaType;Lokio/ByteString;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$r8$classId:I

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lokhttp3/MediaType;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method

.method public constructor <init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$r8$classId:I

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    iput-object p2, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lokhttp3/MediaType;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    check-cast p0, Lokhttp3/RequestBody;

    invoke-virtual {p0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    return-wide v0

    :pswitch_0
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    check-cast p0, Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->getSize$okio()I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    iget v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lokhttp3/MediaType;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$contentType:Lokhttp3/MediaType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final writeTo(Lokio/BufferedSink;)V
    .locals 1

    iget v0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    check-cast p0, Lokhttp3/RequestBody;

    invoke-virtual {p0, p1}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lokhttp3/RequestBody$Companion$toRequestBody$1;->$this_toRequestBody:Ljava/lang/Object;

    check-cast p0, Lokio/ByteString;

    invoke-interface {p1, p0}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
