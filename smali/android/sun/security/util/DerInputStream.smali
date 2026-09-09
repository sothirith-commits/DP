.class public final Landroid/sun/security/util/DerInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buffer:Landroid/sun/security/util/DerInputBuffer;

.field public tag:B


# direct methods
.method public constructor <init>(Landroid/sun/security/util/DerInputBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    const p0, 0x7fffffff

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    array-length v2, p1

    if-gt v1, v2, :cond_1

    array-length v1, p1

    if-gt v0, v1, :cond_1

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    invoke-static {v1}, Landroid/sun/security/util/DerIndefLenConverter;->isIndefinite(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v0, [B

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {p1}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v0, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p1, v1}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v1, p1, v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iput-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    :goto_0
    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    const p1, 0x7fffffff

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Encoding bytes too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLength(ILjava/io/InputStream;)I
    .locals 2

    and-int/lit16 v0, p0, 0x80

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    and-int/lit8 p0, p0, 0x7f

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-ltz p0, :cond_4

    const/4 v0, 0x4

    if-le p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-lez p0, :cond_3

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    move p0, v0

    :goto_1
    return p0

    :cond_4
    :goto_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "DerInputStream.getLength(): lengthTag="

    const-string v1, ", "

    invoke-static {p0, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-gez p0, :cond_5

    const-string p0, "incorrect DER encoding."

    goto :goto_3

    :cond_5
    const-string p0, "too big."

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getLength(Landroid/sun/security/util/DerInputBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-static {v0, p0}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getDerValue()Landroid/sun/security/util/DerValue;
    .locals 1

    new-instance v0, Landroid/sun/security/util/DerValue;

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, p0}, Landroid/sun/security/util/DerValue;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    return-object v0
.end method

.method public final getInteger()I
    .locals 2

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-static {p0}, Landroid/sun/security/util/DerInputStream;->getLength(Landroid/sun/security/util/DerInputBuffer;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/sun/security/util/DerInputBuffer;->getInteger(I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "DER input, Integer tag error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getOctetString()[B
    .locals 2

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-static {v0}, Landroid/sun/security/util/DerInputStream;->getLength(Landroid/sun/security/util/DerInputBuffer;)I

    move-result v0

    new-array v1, v0, [B

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
    return-object v1

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "DER input not an octet string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSequence()[Landroid/sun/security/util/DerValue;
    .locals 2

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/sun/security/util/DerInputStream;->tag:B

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/sun/security/util/DerInputStream;->readVector(I)[Landroid/sun/security/util/DerValue;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Sequence tag error"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getUnalignedBitString()Landroid/sun/security/util/BitArray;
    .locals 3

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-static {v0}, Landroid/sun/security/util/DerInputStream;->getLength(Landroid/sun/security/util/DerInputBuffer;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v1, v0, 0x8

    iget-object v2, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    sub-int/2addr v1, v2

    new-array v2, v0, [B

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "short read of DER bit string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Landroid/sun/security/util/BitArray;

    invoke-direct {p0, v2, v1}, Landroid/sun/security/util/BitArray;-><init>([BI)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "DER input not a bit string"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final readVector(I)[Landroid/sun/security/util/DerValue;
    .locals 5

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, v0, 0xff

    iget-object v2, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-static {v1, v2}, Landroid/sun/security/util/DerInputStream;->getLength(ILjava/io/InputStream;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/lit8 v2, v1, 0x2

    new-array v2, v2, [B

    iget-byte v4, p0, Landroid/sun/security/util/DerInputStream;->tag:B

    aput-byte v4, v2, v3

    const/4 v4, 0x1

    aput-byte v0, v2, v4

    new-instance v0, Ljava/io/DataInputStream;

    iget-object v4, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Landroid/sun/security/util/DerIndefLenConverter;

    invoke-direct {v0}, Landroid/sun/security/util/DerIndefLenConverter;-><init>()V

    new-instance v1, Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0, v2}, Landroid/sun/security/util/DerIndefLenConverter;->convert([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    iget-byte v0, p0, Landroid/sun/security/util/DerInputStream;->tag:B

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-static {v0}, Landroid/sun/security/util/DerInputStream;->getLength(Landroid/sun/security/util/DerInputBuffer;)I

    move-result v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Indefinite length encoding not supported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    new-array p0, v3, [Landroid/sun/security/util/DerValue;

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {v0}, Landroid/sun/security/util/DerInputBuffer;->dup()Landroid/sun/security/util/DerInputBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/sun/security/util/DerInputBuffer;->truncate(I)V

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    new-instance p0, Landroid/sun/security/util/DerInputStream;

    invoke-direct {p0, v0}, Landroid/sun/security/util/DerInputStream;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    :goto_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p1}, Ljava/util/Vector;-><init>(I)V

    :cond_4
    new-instance p1, Landroid/sun/security/util/DerValue;

    iget-object v1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-direct {p1, v1}, Landroid/sun/security/util/DerValue;-><init>(Landroid/sun/security/util/DerInputBuffer;)V

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object p1, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p0, p0, Landroid/sun/security/util/DerInputStream;->buffer:Landroid/sun/security/util/DerInputBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p1, p0, [Landroid/sun/security/util/DerValue;

    :goto_2
    if-ge v3, p0, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sun/security/util/DerValue;

    aput-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object p1

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "extra data at end of vector"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
