.class public final Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;
.super Lcom/koushikdutta/async/FilteredDataEmitter;
.source "SourceFile"


# instance fields
.field public mChunkLength:I

.field public mChunkLengthRemaining:I

.field public mState:I

.field public final pending:Lcom/koushikdutta/async/ByteBufferList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/koushikdutta/async/FilteredDataEmitter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    return-void
.end method


# virtual methods
.method public final checkByte(CC)Z
    .locals 2

    if-eq p1, p2, :cond_0

    const/16 v0, 0x8

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    new-instance v0, Lcom/koushikdutta/async/http/BodyDecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, " was expected, got "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 7

    iget-object p1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->pending:Lcom/koushikdutta/async/ByteBufferList;

    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    return-void

    :cond_0
    :goto_0
    :try_start_0
    iget v0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    invoke-static {v0}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_c

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0xa

    if-eq v0, v3, :cond_a

    const/4 v5, 0x3

    const/4 v6, 0x5

    if-eq v0, v5, :cond_7

    const/4 v5, 0x6

    if-eq v0, v2, :cond_5

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    if-lez v0, :cond_4

    iput v3, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_4
    const/4 v0, 0x7

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iput v5, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    goto :goto_0

    :cond_7
    iget v0, p2, Lcom/koushikdutta/async/ByteBufferList;->remaining:I

    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    if-nez v1, :cond_8

    iput v6, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    :cond_8
    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-virtual {p2, p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    invoke-static {p0, p1}, Lcom/koushikdutta/async/Util;->emitAllData(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_0

    :cond_a
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->checkByte(CC)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iput v2, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    goto :goto_0

    :cond_c
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getByteChar()C

    move-result v0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x2

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    goto :goto_2

    :cond_d
    iget v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    const/16 v2, 0x61

    if-lt v0, v2, :cond_e

    const/16 v2, 0x66

    if-gt v0, v2, :cond_e

    add-int/lit8 v0, v0, -0x57

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    :cond_e
    const/16 v2, 0x30

    if-lt v0, v2, :cond_f

    const/16 v2, 0x39

    if-gt v0, v2, :cond_f

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    goto :goto_2

    :cond_f
    const/16 v2, 0x41

    if-lt v0, v2, :cond_10

    const/16 v2, 0x46

    if-gt v0, v2, :cond_10

    add-int/lit8 v0, v0, -0x37

    add-int/2addr v0, v1

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    :goto_2
    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLength:I

    iput v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mChunkLengthRemaining:I

    goto/16 :goto_0

    :cond_10
    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid chunk length: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->report(Ljava/lang/Exception;)V

    :cond_11
    return-void
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lcom/koushikdutta/async/http/filter/ChunkedInputFilter;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance p1, Lcom/koushikdutta/async/http/BodyDecoderException;

    const-string v0, "chunked input ended before final chunk"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/DataEmitterBase;->report(Ljava/lang/Exception;)V

    return-void
.end method
