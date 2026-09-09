.class public final Lio/github/muntashirakon/adb/AdbProtocol$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final arg0:I

.field public final arg1:I

.field public final command:I

.field public final dataCheck:I

.field public final dataLength:I

.field public final magic:I

.field public payload:[B


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    return-void
.end method

.method public static parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;
    .locals 8

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    rsub-int/lit8 v5, v3, 0x18

    invoke-virtual {p0, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const-string v5, "Stream closed"

    if-ltz v4, :cond_c

    add-int/2addr v3, v4

    if-lt v3, v0, :cond_0

    new-instance v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;

    invoke-direct {v0, v1}, Lio/github/muntashirakon/adb/AdbProtocol$Message;-><init>(Ljava/nio/ByteBuffer;)V

    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    not-int v3, v1

    iget v4, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    if-ne v4, v3, :cond_b

    const v1, 0x434e5953

    const v3, 0x4e584e43    # 9.072519E8f

    if-eq v4, v1, :cond_2

    if-eq v4, v3, :cond_2

    const v1, 0x4e45504f    # 8.2759366E8f

    if-eq v4, v1, :cond_2

    const v1, 0x59414b4f

    if-eq v4, v1, :cond_2

    const v1, 0x45534c43

    if-eq v4, v1, :cond_2

    const v1, 0x45545257

    if-eq v4, v1, :cond_2

    const v1, 0x48545541

    if-eq v4, v1, :cond_2

    const v1, 0x534c5453

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/StreamCorruptedException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid header: Invalid command 0x%x."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget v1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    if-ltz v1, :cond_a

    if-gt v1, p2, :cond_a

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    new-array p2, v1, [B

    iput-object p2, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    move p2, v2

    :cond_4
    iget-object v6, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    sub-int v7, v1, p2

    invoke-virtual {p0, v6, p2, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ltz v6, :cond_9

    add-int/2addr p2, v6

    if-lt p2, v1, :cond_4

    const/high16 p0, 0x1000000

    if-le p1, p0, :cond_5

    if-ne v4, v3, :cond_7

    iget p1, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    if-gt p1, p0, :cond_7

    :cond_5
    iget-object p0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    sget-object p1, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    array-length p1, p0

    move p2, v2

    :goto_1
    if-ge v2, p1, :cond_6

    aget-byte v1, p0, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p2, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    iget p0, v0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    if-ne p2, p0, :cond_8

    :cond_7
    return-object v0

    :cond_8
    new-instance p0, Ljava/io/StreamCorruptedException;

    const-string p1, "Invalid header: Checksum mismatched."

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/io/StreamCorruptedException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid header: Invalid data length %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/io/StreamCorruptedException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid header: Invalid magic 0x%x."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "????"

    goto :goto_0

    :sswitch_0
    const-string v0, "OKAY"

    goto :goto_0

    :sswitch_1
    const-string v0, "STLS"

    goto :goto_0

    :sswitch_2
    const-string v0, "CNXN"

    goto :goto_0

    :sswitch_3
    const-string v0, "OPEN"

    goto :goto_0

    :sswitch_4
    const-string v0, "AUTH"

    goto :goto_0

    :sswitch_5
    const-string v0, "WRTE"

    goto :goto_0

    :sswitch_6
    const-string v0, "CLSE"

    goto :goto_0

    :sswitch_7
    const-string v0, "SYNC"

    :goto_0
    const-string v1, "Message{command="

    const-string v2, ", arg0=0x"

    invoke-static {v1, v0, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", arg1=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payloadLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", checksum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", magic=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x434e5953 -> :sswitch_7
        0x45534c43 -> :sswitch_6
        0x45545257 -> :sswitch_5
        0x48545541 -> :sswitch_4
        0x4e45504f -> :sswitch_3
        0x4e584e43 -> :sswitch_2
        0x534c5453 -> :sswitch_1
        0x59414b4f -> :sswitch_0
    .end sparse-switch
.end method
