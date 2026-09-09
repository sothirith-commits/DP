.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokio/Source;


# instance fields
.field public final crc:Ljava/util/zip/CRC32;

.field public final inflater:Ljava/util/zip/Inflater;

.field public final inflaterSource:Lokio/InflaterSource;

.field public section:B

.field public final source:Lokio/RealBufferedSource;


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 2

    const-string v0, "source"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokio/RealBufferedSource;

    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    iput-object v0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    new-instance p1, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object p1, p0, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    new-instance v1, Lokio/InflaterSource;

    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/RealBufferedSource;Ljava/util/zip/Inflater;)V

    iput-object v1, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    return-void
.end method

.method public static checkEqual(Ljava/lang/String;II)V
    .locals 1

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s: actual 0x%08x != expected 0x%08x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    invoke-virtual {p0}, Lokio/InflaterSource;->close()V

    return-void
.end method

.method public final read(Lokio/Buffer;J)J
    .locals 26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string v0, "sink"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-byte v0, v6, Lokio/GzipSource;->section:B

    iget-object v11, v6, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    const-wide/16 v12, -0x1

    iget-object v15, v6, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    if-nez v0, :cond_c

    const-wide/16 v0, 0xa

    invoke-virtual {v15, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    iget-object v14, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v0, 0x3

    invoke-virtual {v14, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v20

    shr-int/lit8 v0, v20, 0x1

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_0

    move/from16 v21, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move/from16 v21, v0

    :goto_0
    if-eqz v21, :cond_1

    const-wide/16 v4, 0xa

    iget-object v1, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_1
    invoke-virtual {v15}, Lokio/RealBufferedSource;->readShort()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v1, v2, v0}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    const-wide/16 v0, 0x8

    invoke-virtual {v15, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    shr-int/lit8 v0, v20, 0x2

    and-int/2addr v0, v10

    const v22, 0xff00

    const-wide/16 v4, 0x2

    if-ne v0, v10, :cond_4

    invoke-virtual {v15, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v21, :cond_2

    const-wide/16 v16, 0x2

    iget-object v1, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_2
    invoke-virtual {v14}, Lokio/Buffer;->readShort()S

    move-result v0

    sget v1, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    and-int v1, v0, v22

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v4, v0

    invoke-virtual {v15, v4, v5}, Lokio/RealBufferedSource;->require(J)V

    if-eqz v21, :cond_3

    iget-object v1, v15, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-wide/from16 p2, v4

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    move-wide/from16 v0, p2

    goto :goto_1

    :cond_3
    move-wide v0, v4

    :goto_1
    invoke-virtual {v15, v0, v1}, Lokio/RealBufferedSource;->skip(J)V

    :cond_4
    shr-int/lit8 v0, v20, 0x3

    and-int/2addr v0, v10

    const-wide/16 v23, 0x1

    if-ne v0, v10, :cond_7

    const-wide v18, 0x7fffffffffffffffL

    const/4 v0, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v25, v14

    move-object v14, v15

    move-object v4, v15

    move v15, v0

    invoke-virtual/range {v14 .. v19}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-eqz v0, :cond_6

    if-eqz v21, :cond_5

    add-long v16, v14, v23

    iget-object v1, v4, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    move-object v8, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    goto :goto_2

    :cond_5
    move-object v8, v4

    :goto_2
    add-long v14, v14, v23

    invoke-virtual {v8, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7
    move-object/from16 v25, v14

    move-object v8, v15

    :goto_3
    shr-int/lit8 v0, v20, 0x4

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_a

    const-wide v18, 0x7fffffffffffffffL

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object v14, v8

    invoke-virtual/range {v14 .. v19}, Lokio/RealBufferedSource;->indexOf(BJJ)J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-eqz v0, :cond_9

    if-eqz v21, :cond_8

    add-long v4, v14, v23

    iget-object v1, v8, Lokio/RealBufferedSource;->bufferField:Lokio/Buffer;

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    :cond_8
    add-long v14, v14, v23

    invoke-virtual {v8, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_a
    :goto_4
    if-eqz v21, :cond_b

    const-wide/16 v0, 0x2

    invoke-virtual {v8, v0, v1}, Lokio/RealBufferedSource;->require(J)V

    invoke-virtual/range {v25 .. v25}, Lokio/Buffer;->readShort()S

    move-result v0

    sget v1, Lokio/-SegmentedByteString;->DEFAULT__ByteString_size:I

    and-int v1, v0, v22

    ushr-int/lit8 v1, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    int-to-short v1, v1

    const-string v2, "FHCRC"

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->reset()V

    :cond_b
    iput-byte v10, v6, Lokio/GzipSource;->section:B

    goto :goto_5

    :cond_c
    move-object v8, v15

    :goto_5
    iget-byte v0, v6, Lokio/GzipSource;->section:B

    if-ne v0, v10, :cond_e

    iget-wide v2, v7, Lokio/Buffer;->size:J

    iget-object v0, v6, Lokio/GzipSource;->inflaterSource:Lokio/InflaterSource;

    const-wide/16 v4, 0x2000

    invoke-virtual {v0, v7, v4, v5}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    move-result-wide v14

    cmp-long v0, v14, v12

    if-eqz v0, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v4, v14

    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->updateCrc(Lokio/Buffer;JJ)V

    return-wide v14

    :cond_d
    iput-byte v9, v6, Lokio/GzipSource;->section:B

    :cond_e
    iget-byte v0, v6, Lokio/GzipSource;->section:B

    if-ne v0, v9, :cond_10

    invoke-virtual {v8}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    invoke-virtual {v11}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "CRC"

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    invoke-virtual {v8}, Lokio/RealBufferedSource;->readIntLe()I

    move-result v0

    iget-object v1, v6, Lokio/GzipSource;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v1

    long-to-int v1, v1

    const-string v2, "ISIZE"

    invoke-static {v2, v0, v1}, Lokio/GzipSource;->checkEqual(Ljava/lang/String;II)V

    const/4 v0, 0x3

    iput-byte v0, v6, Lokio/GzipSource;->section:B

    invoke-virtual {v8}, Lokio/RealBufferedSource;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_6

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    :goto_6
    return-wide v12
.end method

.method public final timeout()Lokio/Timeout;
    .locals 0

    iget-object p0, p0, Lokio/GzipSource;->source:Lokio/RealBufferedSource;

    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    invoke-interface {p0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public final updateCrc(Lokio/Buffer;JJ)V
    .locals 4

    iget-object p1, p1, Lokio/Buffer;->head:Lokio/Segment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    iget v0, p1, Lokio/Segment;->limit:I

    iget v1, p1, Lokio/Segment;->pos:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long/2addr p2, v0

    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_1

    iget v2, p1, Lokio/Segment;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int p2, v2

    iget p3, p1, Lokio/Segment;->limit:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lokio/GzipSource;->crc:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lokio/Segment;->data:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long/2addr p4, p2

    iget-object p1, p1, Lokio/Segment;->next:Lokio/Segment;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide p2, v0

    goto :goto_1

    :cond_1
    return-void
.end method
