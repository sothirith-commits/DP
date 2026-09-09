.class public final Landroid/sun/security/x509/X509CertInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# static fields
.field public static final map:Ljava/util/HashMap;


# instance fields
.field public algId:Landroid/sun/security/x509/CertificateAlgorithmId;

.field public extensions:Landroid/sun/security/x509/CertificateExtensions;

.field public interval:Landroid/sun/security/x509/CertificateValidity;

.field public issuer:Landroid/sun/security/x509/CertificateIssuerName;

.field public pubKey:Landroid/sun/security/x509/CertificateX509Key;

.field public rawCertInfo:[B

.field public serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

.field public subject:Landroid/sun/security/x509/CertificateSubjectName;

.field public version:Landroid/sun/security/x509/CertificateVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/sun/security/x509/X509CertInfo;->map:Ljava/util/HashMap;

    const/4 v1, 0x1

    const-string v2, "version"

    const/4 v3, 0x2

    const-string v4, "serialNumber"

    invoke-static {v1, v0, v2, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "algorithmID"

    const/4 v3, 0x4

    const-string v4, "issuer"

    invoke-static {v1, v0, v2, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "validity"

    const/4 v3, 0x6

    const-string v4, "subject"

    invoke-static {v1, v0, v2, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x7

    const-string v2, "key"

    const/16 v3, 0x8

    const-string v4, "issuerID"

    invoke-static {v1, v0, v2, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x9

    const-string v2, "subjectID"

    const/16 v3, 0xa

    const-string v4, "extensions"

    invoke-static {v1, v0, v2, v3, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/sun/security/x509/CertificateVersion;

    invoke-direct {v0}, Landroid/sun/security/x509/CertificateVersion;-><init>()V

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    return-void
.end method


# virtual methods
.method public final emit(Landroid/sun/security/util/DerOutputStream;)V
    .locals 2

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateVersion;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateSerialNumber;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateAlgorithmId;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    iget v1, v1, Landroid/sun/security/x509/CertificateVersion;->version:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    invoke-virtual {v1}, Landroid/sun/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string p1, "Null issuer DN not allowed in v1 certificate"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateIssuerName;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateValidity;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    iget v1, v1, Landroid/sun/security/x509/CertificateVersion;->version:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    invoke-virtual {v1}, Landroid/sun/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string p1, "Null subject DN not allowed in v1 certificate"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateSubjectName;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    invoke-virtual {v1, v0}, Landroid/sun/security/x509/CertificateX509Key;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/sun/security/x509/CertificateExtensions;->encode(Landroid/sun/security/util/DerOutputStream;)V

    :cond_4
    const/16 p0, 0x30

    invoke-virtual {p1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    return-void
.end method

.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 1

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_0

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sun/security/x509/X509CertInfo;->emit(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    :cond_0
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Landroid/sun/security/x509/X509CertInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Landroid/sun/security/x509/X509CertInfo;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-eqz v2, :cond_5

    iget-object v3, p1, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    array-length v2, v2

    array-length v3, v3

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_0
    iget-object v3, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-byte v3, v3, v2

    iget-object v4, p1, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    aget-byte v4, v4, v2

    if-eq v3, v4, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v2, p1

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v4, Landroid/sun/security/x509/X509CertInfo;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-eqz v1, :cond_19

    const/16 p1, 0xa

    if-eq v1, p1, :cond_15

    const-string p1, "number"

    const-string v2, "x500principal"

    const-string v4, "dname"

    packed-switch v1, :pswitch_data_0

    return-object v3

    :pswitch_0
    if-nez v0, :cond_2

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    return-object p0

    :cond_2
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroid/sun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    if-nez v0, :cond_4

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    return-object p0

    :cond_4
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnName:Landroid/sun/security/x509/X500Name;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez p1, :cond_6

    iget-object p1, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnName:Landroid/sun/security/x509/X500Name;

    if-eqz p1, :cond_6

    iget-object p1, p1, Landroid/sun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    iput-object p1, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    :cond_6
    iget-object p0, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    :goto_2
    return-object p0

    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2
    if-nez v0, :cond_8

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    return-object p0

    :cond_8
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "notBefore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/util/Date;

    iget-object p0, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    :cond_9
    const-string p1, "notAfter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    new-instance p1, Ljava/util/Date;

    iget-object p0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_3
    return-object p1

    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_3
    if-nez v0, :cond_b

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    return-object p0

    :cond_b
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnName:Landroid/sun/security/x509/X500Name;

    goto :goto_4

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez p1, :cond_d

    iget-object p1, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnName:Landroid/sun/security/x509/X500Name;

    if-eqz p1, :cond_d

    iget-object p1, p1, Landroid/sun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    iput-object p1, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    :cond_d
    iget-object p0, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    :goto_4
    return-object p0

    :cond_e
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateIssuerName."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-nez v0, :cond_f

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    return-object p0

    :cond_f
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "algorithm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Landroid/sun/security/x509/CertificateAlgorithmId;->algId:Landroid/sun/security/x509/AlgorithmId;

    return-object p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-nez v0, :cond_11

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    return-object p0

    :cond_11
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Landroid/sun/security/x509/CertificateSerialNumber;->serial:Landroid/sun/security/x509/SerialNumber;

    return-object p0

    :cond_12
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-nez v0, :cond_13

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    return-object p0

    :cond_13
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    new-instance p1, Ljava/lang/Integer;

    iget p0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object p1

    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    if-nez v0, :cond_16

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    return-object p0

    :cond_16
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    if-nez p0, :cond_17

    return-object v3

    :cond_17
    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No extension found with name "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/security/cert/CertificateParsingException;

    const-string v0, "Attribute name not recognized: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getEncodedInfo()[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    if-nez v0, :cond_0

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Landroid/sun/security/x509/X509CertInfo;->emit(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_2
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "info"

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-byte v2, v2, v1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move-object v2, p1

    move-object v0, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v4, Landroid/sun/security/x509/X509CertInfo;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    if-eqz v1, :cond_26

    iput-object v3, p0, Landroid/sun/security/x509/X509CertInfo;->rawCertInfo:[B

    const-string p1, "number"

    const-string v2, "Attribute must be of type X500Name."

    const-string v4, "dname"

    const-string v5, "Invalid version"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-nez v0, :cond_4

    iget-object p1, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    iget p1, p1, Landroid/sun/security/x509/CertificateVersion;->version:I

    add-int/lit8 p1, p1, -0x2

    if-ltz p1, :cond_3

    instance-of p1, p2, Landroid/sun/security/x509/CertificateExtensions;

    if-eqz p1, :cond_2

    check-cast p2, Landroid/sun/security/x509/CertificateExtensions;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    goto/16 :goto_2

    :cond_2
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Extensions class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget-object p1, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    if-nez p1, :cond_5

    new-instance p1, Landroid/sun/security/x509/CertificateExtensions;

    invoke-direct {p1}, Landroid/sun/security/x509/CertificateExtensions;-><init>()V

    iput-object p1, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    :cond_5
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    invoke-virtual {p0, v0, p2}, Landroid/sun/security/x509/CertificateExtensions;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    if-nez v0, :cond_7

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    iget p0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_6

    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "SubjectUniqueId class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    throw v3

    :pswitch_2
    if-nez v0, :cond_9

    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    iget p0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_8

    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "IssuerUniqueId class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/security/cert/CertificateException;

    invoke-direct {p0, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    throw v3

    :pswitch_3
    if-nez v0, :cond_b

    instance-of p1, p2, Landroid/sun/security/x509/CertificateX509Key;

    if-eqz p1, :cond_a

    check-cast p2, Landroid/sun/security/x509/CertificateX509Key;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    goto/16 :goto_2

    :cond_a
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Key class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "value"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    check-cast p2, Ljava/security/PublicKey;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateX509Key;->key:Ljava/security/PublicKey;

    goto/16 :goto_2

    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateX509Key."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_4
    if-nez v0, :cond_e

    instance-of p1, p2, Landroid/sun/security/x509/CertificateSubjectName;

    if-eqz p1, :cond_d

    check-cast p2, Landroid/sun/security/x509/CertificateSubjectName;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    goto/16 :goto_2

    :cond_d
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Subject class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Landroid/sun/security/x509/X500Name;

    if-eqz p1, :cond_10

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    check-cast p2, Landroid/sun/security/x509/X500Name;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnName:Landroid/sun/security/x509/X500Name;

    iput-object v3, p0, Landroid/sun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    goto/16 :goto_2

    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    if-nez v0, :cond_12

    instance-of p1, p2, Landroid/sun/security/x509/CertificateValidity;

    if-eqz p1, :cond_11

    check-cast p2, Landroid/sun/security/x509/CertificateValidity;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    goto/16 :goto_2

    :cond_11
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "CertificateValidity class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_12
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Ljava/util/Date;

    if-eqz p1, :cond_15

    const-string p1, "notBefore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    check-cast p2, Ljava/util/Date;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    goto/16 :goto_2

    :cond_13
    const-string p1, "notAfter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    check-cast p2, Ljava/util/Date;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    goto/16 :goto_2

    :cond_14
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateValidity."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute must be of type Date."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_6
    if-nez v0, :cond_17

    instance-of p1, p2, Landroid/sun/security/x509/CertificateIssuerName;

    if-eqz p1, :cond_16

    check-cast p2, Landroid/sun/security/x509/CertificateIssuerName;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    goto/16 :goto_2

    :cond_16
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Issuer class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Landroid/sun/security/x509/X500Name;

    if-eqz p1, :cond_19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    check-cast p2, Landroid/sun/security/x509/X500Name;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnName:Landroid/sun/security/x509/X500Name;

    iput-object v3, p0, Landroid/sun/security/x509/CertificateIssuerName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    goto/16 :goto_2

    :cond_18
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateIssuerName."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_7
    if-nez v0, :cond_1b

    instance-of p1, p2, Landroid/sun/security/x509/CertificateAlgorithmId;

    if-eqz p1, :cond_1a

    check-cast p2, Landroid/sun/security/x509/CertificateAlgorithmId;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    goto/16 :goto_2

    :cond_1a
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "AlgorithmId class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p2, Landroid/sun/security/x509/AlgorithmId;

    if-eqz p1, :cond_1d

    const-string p1, "algorithm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    check-cast p2, Landroid/sun/security/x509/AlgorithmId;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateAlgorithmId;->algId:Landroid/sun/security/x509/AlgorithmId;

    goto/16 :goto_2

    :cond_1c
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateAlgorithmId."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute must be of type AlgorithmId."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    if-nez v0, :cond_1f

    instance-of p1, p2, Landroid/sun/security/x509/CertificateSerialNumber;

    if-eqz p1, :cond_1e

    check-cast p2, Landroid/sun/security/x509/CertificateSerialNumber;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    goto :goto_2

    :cond_1e
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "SerialNumber class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Landroid/sun/security/x509/SerialNumber;

    if-eqz v1, :cond_21

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    check-cast p2, Landroid/sun/security/x509/SerialNumber;

    iput-object p2, p0, Landroid/sun/security/x509/CertificateSerialNumber;->serial:Landroid/sun/security/x509/SerialNumber;

    goto :goto_2

    :cond_20
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet:CertificateSerialNumber."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute must be of type SerialNumber."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    if-nez v0, :cond_23

    instance-of p1, p2, Landroid/sun/security/x509/CertificateVersion;

    if-eqz p1, :cond_22

    check-cast p2, Landroid/sun/security/x509/CertificateVersion;

    iput-object p2, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    goto :goto_2

    :cond_22
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Version class type invalid."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_25

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    :goto_2
    return-void

    :cond_24
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute name not recognized by CertAttrSet: CertificateVersion."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Attribute must be of type Integer."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p2, "Attribute name not recognized: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/sun/security/x509/X509CertInfo;->version:Landroid/sun/security/x509/CertificateVersion;

    invoke-virtual {v3}, Landroid/sun/security/x509/CertificateVersion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  Subject: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sun/security/x509/X509CertInfo;->subject:Landroid/sun/security/x509/CertificateSubjectName;

    invoke-virtual {v4}, Landroid/sun/security/x509/CertificateSubjectName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  Signature Algorithm: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sun/security/x509/X509CertInfo;->algId:Landroid/sun/security/x509/CertificateAlgorithmId;

    invoke-virtual {v4}, Landroid/sun/security/x509/CertificateAlgorithmId;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  Key:  "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sun/security/x509/X509CertInfo;->pubKey:Landroid/sun/security/x509/CertificateX509Key;

    invoke-virtual {v4}, Landroid/sun/security/x509/CertificateX509Key;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sun/security/x509/X509CertInfo;->interval:Landroid/sun/security/x509/CertificateValidity;

    invoke-virtual {v4}, Landroid/sun/security/x509/CertificateValidity;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  Issuer: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/sun/security/x509/X509CertInfo;->issuer:Landroid/sun/security/x509/CertificateIssuerName;

    invoke-virtual {v4}, Landroid/sun/security/x509/CertificateIssuerName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/sun/security/x509/X509CertInfo;->serialNum:Landroid/sun/security/x509/CertificateSerialNumber;

    invoke-virtual {v2}, Landroid/sun/security/x509/CertificateSerialNumber;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    if-eqz v1, :cond_3

    iget-object v1, v1, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\nCertificate Extensions: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    const-string v5, "]: "

    const-string v6, "\n["

    if-ge v2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v1, v2

    check-cast v2, Landroid/sun/security/x509/Extension;

    :try_start_0
    iget-object v4, v2, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-static {v4}, Landroid/sun/security/x509/OIDMap;->getClass(Landroid/sun/security/util/ObjectIdentifier;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/sun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/sun/security/x509/Extension;->extensionValue:[B

    if-eqz v2, :cond_1

    new-instance v4, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v4}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v2}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    new-instance v4, Landroid/sun/misc/HexDumpEncoder;

    invoke-direct {v4}, Landroid/sun/misc/HexDumpEncoder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extension unknown: DER encoded OCTET string =\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Landroid/sun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/sun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, ", Error parsing this extension"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    move v2, v6

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroid/sun/security/x509/X509CertInfo;->extensions:Landroid/sun/security/x509/CertificateExtensions;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nUnparseable certificate extensions: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sun/security/x509/Extension;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v4

    goto :goto_2

    :cond_3
    const-string p0, "\n]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "X.509 cert is incomplete"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
