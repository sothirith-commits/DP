.class public final Lorg/bouncycastle/asn1/ConstructedBitStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public _currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

.field public _currentStream:Ljava/io/InputStream;

.field public _first:Z

.field public final _octetAligned:Z

.field public _padBits:I

.field public final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    iput-object p1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    return-void
.end method


# virtual methods
.method public final getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    iget-object v1, v0, Lorg/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/lang/Object;

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1StreamParser;->implParseObject(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_octetAligned:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expected octet-aligned bitstring, but found padBits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-eqz v1, :cond_5

    iget p0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    if-nez p0, :cond_4

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitStringParser;

    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string v0, "only the last nested bitstring can have padding"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown object encountered: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final read()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    return v1
.end method

.method public final read([BII)I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_1

    return v2

    :cond_1
    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_first:Z

    :cond_2
    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v0, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_4

    add-int/2addr v1, v0

    if-ne v1, p3, :cond_3

    return v1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1BitStringParser;->getPadBits()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1BitStringParser;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentParser:Lorg/bouncycastle/asn1/ASN1BitStringParser;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_currentStream:Ljava/io/InputStream;

    const/4 p0, 0x1

    if-ge v1, p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    return v2
.end method
