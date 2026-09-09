.class public final Lcom/koushikdutta/async/http/filter/GZIPInputFilter;
.super Lcom/koushikdutta/async/http/filter/InflaterInputFilter;
.source "SourceFile"


# instance fields
.field public final crc:Ljava/util/zip/CRC32;

.field public mNeedsHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;-><init>(Ljava/util/zip/Inflater;)V

    iput-boolean v1, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static peekShort([BLjava/nio/ByteOrder;)S
    .locals 3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    aget-byte p1, p0, v2

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v1

    :goto_0
    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0

    :cond_0
    aget-byte p1, p0, v1

    shl-int/lit8 p1, p1, 0x8

    aget-byte p0, p0, v2

    goto :goto_0
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    iget-boolean v0, p0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter;->mNeedsHeader:Z

    if-eqz v0, :cond_0

    new-instance p2, Lcom/koushikdutta/async/PushParser;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/PushParser;-><init>(Lcom/koushikdutta/async/DataEmitter;)V

    new-instance v0, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/http/filter/GZIPInputFilter$1;-><init>(Lcom/koushikdutta/async/http/filter/GZIPInputFilter;Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/PushParser;)V

    const/16 p0, 0xa

    invoke-virtual {p2, p0, v0}, Lcom/koushikdutta/async/PushParser;->readByteArray(ILcom/koushikdutta/async/PushParser$ParseCallback;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/http/filter/InflaterInputFilter;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    :goto_0
    return-void
.end method
