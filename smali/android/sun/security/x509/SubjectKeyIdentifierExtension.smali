.class public final Landroid/sun/security/x509/SubjectKeyIdentifierExtension;
.super Landroid/sun/security/x509/Extension;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# instance fields
.field public id:Landroid/sun/security/x509/KeyIdentifier;


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 4

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_1

    sget-object v1, Landroid/sun/security/x509/PKIXExtensions;->SubjectKey_Id:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/sun/security/x509/Extension;->critical:Z

    iget-object v1, p0, Landroid/sun/security/x509/SubjectKeyIdentifierExtension;->id:Landroid/sun/security/x509/KeyIdentifier;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v3, 0x4

    iget-object v1, v1, Landroid/sun/security/x509/KeyIdentifier;->octetString:[B

    invoke-virtual {v2, v3, v1}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/sun/security/x509/Extension;->encode$1(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "SubjectKeyIdentifier"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/sun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SubjectKeyIdentifier [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/sun/security/x509/SubjectKeyIdentifierExtension;->id:Landroid/sun/security/x509/KeyIdentifier;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
