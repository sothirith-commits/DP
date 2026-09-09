.class public final Lcom/koushikdutta/async/SocketChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "SourceFile"


# instance fields
.field public mChannel:Ljava/nio/channels/SocketChannel;


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/SocketChannelWrapper;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public final read([Ljava/nio/ByteBuffer;)J
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/SocketChannelWrapper;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 0

    iget-object p0, p0, Lcom/koushikdutta/async/SocketChannelWrapper;->mChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/channels/SocketChannel;->read([Ljava/nio/ByteBuffer;II)J

    move-result-wide p0

    return-wide p0
.end method
