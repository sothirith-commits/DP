.class public final Lorg/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field public final synthetic $r8$classId:I

.field public _parser:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    return-void
.end method

.method public static parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/BEROctetString;

    new-instance v1, Lorg/bouncycastle/asn1/ConstructedOctetStream;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-static {v1}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-object v0
.end method


# virtual methods
.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getOctetStream()Ljava/io/InputStream;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object p0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/ConstructedOctetStream;

    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

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

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/BEROctetStringParser;->_parser:Ljava/lang/Object;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-static {p0}, Lorg/bouncycastle/asn1/BEROctetStringParser;->parse(Lorg/bouncycastle/asn1/ASN1StreamParser;)Lorg/bouncycastle/asn1/BEROctetString;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
