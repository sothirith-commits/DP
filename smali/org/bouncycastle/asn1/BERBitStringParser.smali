.class public final Lorg/bouncycastle/asn1/BERBitStringParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# instance fields
.field public _bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

.field public final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method public static parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-static {v0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    iget v0, v0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    new-instance v1, Lorg/bouncycastle/asn1/BERBitString;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public final getBitStream()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ConstructedBitStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    return-object v0
.end method

.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {p0}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object p0

    return-object p0
.end method

.method public final getPadBits()I
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_bitStream:Lorg/bouncycastle/asn1/ConstructedBitStream;

    iget p0, p0, Lorg/bouncycastle/asn1/ConstructedBitStream;->_padBits:I

    return p0
.end method

.method public final toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/BERBitStringParser;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {p0}, Lorg/bouncycastle/asn1/BERBitStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BERBitString;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException converting stream to byte array: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw v0
.end method
