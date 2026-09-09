.class public final Landroid/sun/security/x509/CertificateValidity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# instance fields
.field public notAfter:Ljava/util/Date;

.field public notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 8

    iget-object v0, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide v3, 0x24bd0146400L

    cmp-long v1, v1, v3

    const/16 v2, 0x18

    const/16 v5, 0x17

    if-gez v1, :cond_0

    iget-object v1, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v1, v5}, Landroid/sun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Landroid/sun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    :goto_0
    iget-object v1, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v1, v6, v3

    if-gez v1, :cond_1

    iget-object p0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p0, v5}, Landroid/sun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {v0, p0, v2}, Landroid/sun/security/util/DerOutputStream;->putTime(Ljava/util/Date;B)V

    :goto_1
    new-instance p0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CertAttrSet:CertificateValidity: null values to encode.\n"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "validity"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Validity: [From: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/sun/security/x509/CertificateValidity;->notBefore:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\n               To: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/sun/security/x509/CertificateValidity;->notAfter:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
