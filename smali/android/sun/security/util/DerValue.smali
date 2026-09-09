.class public final Landroid/sun/security/util/DerValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buffer:Landroid/sun/security/util/DerInputBuffer;

.field public final data:Landroid/sun/security/util/DerInputStream;

.field public length:I

.field public tag:B


# direct methods
.method public constructor <init>(B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/sun/security/util/DerValue;->tag:B

    new-instance p1, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p1, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    array-length p2, p2

    iput p2, p0, Landroid/sun/security/util/DerValue;->length:I

    new-instance p2, Landroid/sun/security/util/DerInputStream;

    invoke-direct {p2, p1}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    iput-object p2, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    const p0, 0x7fffffff

    iget-object p1, p2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>(Landroid/sun/security/util/DerInputBuffer;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    invoke-static {v1, p1}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/sun/security/util/DerValue;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/sun/security/util/DerInputBuffer;->dup()Landroid/sun/security/util/DerInputBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    add-int/lit8 v3, v2, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    iget-byte v5, p0, Landroid/sun/security/util/DerValue;->tag:B

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    aput-byte v0, v3, v4

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v2, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0, v3}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ne v0, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, v2}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    iput v0, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-virtual {v2}, Landroid/sun/security/util/DerInputBuffer;->dup()Landroid/sun/security/util/DerInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    iget v2, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-virtual {v0, v2}, Landroid/sun/security/util/DerInputBuffer;->truncate(I)V

    new-instance v0, Landroid/sun/security/util/DerInputStream;

    iget-object v2, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, v2}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget p0, p0, Landroid/sun/security/util/DerValue;->length:I

    add-int/2addr p0, v1

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Indefinite length encoding not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/sun/security/util/DerInputBuffer;->dup()Landroid/sun/security/util/DerInputBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    iget v1, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-virtual {v0, v1}, Landroid/sun/security/util/DerInputBuffer;->truncate(I)V

    new-instance v0, Landroid/sun/security/util/DerInputStream;

    iget-object v1, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, v1}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    iput-object v0, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget p0, p0, Landroid/sun/security/util/DerValue;->length:I

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Ljava/io/InputStream;->skip(J)J

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/sun/security/util/DerValue;->init(ZLjava/io/InputStream;)Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/sun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x13

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/sun/security/util/DerValue;->init(Ljava/lang/String;B)Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/sun/security/util/DerValue;->init(Ljava/lang/String;B)Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/sun/security/util/DerValue;->init(ZLjava/io/InputStream;)Landroid/sun/security/util/DerInputStream;

    move-result-object p1

    iput-object p1, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    return-void
.end method

.method public static createTag(BZ)B
    .locals 1

    const/16 v0, -0x80

    or-int/2addr p0, v0

    int-to-byte p0, p0

    if-eqz p1, :cond_0

    or-int/lit8 p0, p0, 0x20

    int-to-byte p0, p0

    :cond_0
    return p0
.end method

.method public static doEquals(Landroid/sun/security/util/DerValue;Landroid/sun/security/util/DerValue;)Z
    .locals 3

    iget-object v0, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v2, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget-object v2, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v2, v2, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget-object p0, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    iget-object p1, p1, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0, p1}, Landroid/sun/security/util/DerInputBuffer;->equals(Landroid/sun/security/util/DerInputBuffer;)Z

    move-result p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static isPrintableStringChar(C)Z
    .locals 2

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_4

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_4

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :cond_4
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 3

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-virtual {p1, v0}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    iget v0, p0, Landroid/sun/security/util/DerValue;->length:I

    if-lez v0, :cond_1

    new-array v0, v0, [B

    iget-object v1, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    iget-object v2, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    iget p0, p0, Landroid/sun/security/util/DerValue;->length:I

    if-ne v2, p0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "short DER value read (encode)"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final equals(Landroid/sun/security/util/DerValue;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget-byte v1, p0, Landroid/sun/security/util/DerValue;->tag:B

    iget-byte v2, p1, Landroid/sun/security/util/DerValue;->tag:B

    if-eq v1, v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v1, p1, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v2, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    if-ne v2, v1, :cond_2

    return v0

    :cond_2
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-le v0, v1, :cond_3

    invoke-static {p0, p1}, Landroid/sun/security/util/DerValue;->doEquals(Landroid/sun/security/util/DerValue;Landroid/sun/security/util/DerValue;)Z

    move-result p0

    goto :goto_0

    :cond_3
    invoke-static {p1, p0}, Landroid/sun/security/util/DerValue;->doEquals(Landroid/sun/security/util/DerValue;Landroid/sun/security/util/DerValue;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/sun/security/util/DerValue;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/sun/security/util/DerValue;

    invoke-virtual {p0, p1}, Landroid/sun/security/util/DerValue;->equals(Landroid/sun/security/util/DerValue;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    const-string v1, "UTF8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getUTF8String, not UTF-8 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x13

    const-string v2, "ASCII"

    if-ne v0, v1, :cond_3

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getPrintableString, not a string "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getT61String, not T61 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v1, 0x16

    if-ne v0, v1, :cond_7

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getIA5String, not IA5 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getBMPString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_a

    if-ne v0, v1, :cond_9

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getGeneralString, not GeneralString "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBMPString()Ljava/lang/String;
    .locals 3

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getDataBytes()[B

    move-result-object p0

    const-string v1, "UnicodeBigUnmarked"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getBMPString, not BMP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getDataBytes()[B
    .locals 4

    iget v0, p0, Landroid/sun/security/util/DerValue;->length:I

    new-array v1, v0, [B

    iget-object v2, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object v3, v3, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    iget-object p0, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "short read of DER octet string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getOID()Landroid/sun/security/util/ObjectIdentifier;
    .locals 3

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/sun/security/util/ObjectIdentifier;

    iget-object p0, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, p0}, Landroid/sun/security/util/ObjectIdentifier;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getOID, not an OID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getOctetString()[B
    .locals 7

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v1, 0x20

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    and-int/lit8 v3, v0, 0x20

    if-ne v3, v1, :cond_0

    and-int/lit8 v0, v0, 0x1f

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DerValue.getOctetString, not an Octet String: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/sun/security/util/DerValue;->length:I

    new-array v3, v0, [B

    if-nez v0, :cond_2

    return-object v3

    :cond_2
    iget-object v4, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    iget v5, p0, Landroid/sun/security/util/DerValue;->length:I

    if-ne v4, v5, :cond_b

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_a

    const/4 p0, 0x2

    if-gt p0, v0, :cond_9

    const/4 p0, 0x1

    aget-byte p0, v3, p0

    invoke-static {p0}, Landroid/sun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    new-array p0, v0, [B

    invoke-static {v3, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v3, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0, p0}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {p0, v3, v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object v3, p0

    :goto_1
    const p0, 0x7fffffff

    invoke-virtual {v3, p0}, Ljava/io/InputStream;->mark(I)V

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, v3}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v0

    new-array v4, v0, [B

    if-eqz v0, :cond_5

    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ne v5, v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "short read of DER octet string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    if-nez p0, :cond_6

    move-object p0, v4

    goto :goto_2

    :cond_6
    array-length v5, p0

    add-int/2addr v5, v0

    new-array v5, v5, [B

    array-length v6, p0

    invoke-static {p0, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    invoke-static {v4, v1, v5, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v5

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "DER input not an octet string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    move-object v3, p0

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Encoding bytes too short"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    return-object v3

    :cond_b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "short read on DerValue buffer"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final init(Ljava/lang/String;B)Landroid/sun/security/util/DerInputStream;
    .locals 1

    iput-byte p2, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v0, 0xc

    if-eq p2, v0, :cond_3

    const/16 v0, 0x16

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1b

    if-eq p2, v0, :cond_2

    const/16 v0, 0x1e

    if-eq p2, v0, :cond_1

    const/16 v0, 0x13

    if-eq p2, v0, :cond_2

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    const-string p2, "ISO-8859-1"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported DER string type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p2, "UnicodeBigUnmarked"

    goto :goto_0

    :cond_2
    const-string p2, "ASCII"

    goto :goto_0

    :cond_3
    const-string p2, "UTF8"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p2, p1

    iput p2, p0, Landroid/sun/security/util/DerValue;->length:I

    new-instance p2, Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p2, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    new-instance p0, Landroid/sun/security/util/DerInputStream;

    invoke-direct {p0, p2}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    const p1, 0x7fffffff

    iget-object p2, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p2, p1}, Ljava/io/InputStream;->mark(I)V

    return-object p0
.end method

.method public final init(ZLjava/io/InputStream;)Landroid/sun/security/util/DerInputStream;
    .locals 5

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {p2}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    invoke-static {v1, p2}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    iput v1, p0, Landroid/sun/security/util/DerValue;->length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-byte v4, p0, Landroid/sun/security/util/DerValue;->tag:B

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v0, v2, v3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x2

    invoke-virtual {v0, v2, p2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance p2, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {p2}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2, v2}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-byte p2, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result p2

    invoke-static {p2, v0}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result p2

    iput p2, p0, Landroid/sun/security/util/DerValue;->length:I

    move-object p2, v0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Indefinite length encoding not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result p1

    iget v0, p0, Landroid/sun/security/util/DerValue;->length:I

    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "extra data given to DerValue constructor"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget p1, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-static {p1, p2}, Landroid/sun/misc/IOUtils;->readFully(ILjava/io/InputStream;)[B

    move-result-object p1

    new-instance p2, Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object p2, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    new-instance p0, Landroid/sun/security/util/DerInputStream;

    invoke-direct {p0, p2}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    return-object p0
.end method

.method public final isContextSpecific(B)Z
    .locals 3

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    and-int/lit8 p0, p0, 0x1f

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final toByteArray()[B
    .locals 1

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sun/security/util/DerValue;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object p0, p0, Landroid/sun/security/util/DerValue;->data:Landroid/sun/security/util/DerInputStream;

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final toDerInputStream()Landroid/sun/security/util/DerInputStream;
    .locals 3

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toDerInputStream rejects tag type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Landroid/sun/security/util/DerInputStream;

    iget-object p0, p0, Landroid/sun/security/util/DerValue;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, p0}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[DerValue, tag = "

    const-string v1, "OID."

    const-string v2, "\""

    :try_start_0
    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-byte v2, p0, Landroid/sun/security/util/DerValue;->tag:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const-string p0, "[DerValue, null]"

    return-object p0

    :cond_1
    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/sun/security/util/DerValue;->getOID()Landroid/sun/security/util/ObjectIdentifier;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v0, p0, Landroid/sun/security/util/DerValue;->tag:B

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", length = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/sun/security/util/DerValue;->length:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "misformatted DER value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
