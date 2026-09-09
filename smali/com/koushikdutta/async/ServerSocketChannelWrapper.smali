.class public final Lcom/koushikdutta/async/ServerSocketChannelWrapper;
.super Lcom/koushikdutta/async/ChannelWrapper;
.source "SourceFile"


# virtual methods
.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t read ServerSocketChannel"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([Ljava/nio/ByteBuffer;)J
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t read ServerSocketChannel"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read([Ljava/nio/ByteBuffer;II)J
    .locals 0

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Can\'t read ServerSocketChannel"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
