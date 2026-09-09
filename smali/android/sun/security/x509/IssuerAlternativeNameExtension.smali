.class public final Landroid/sun/security/x509/IssuerAlternativeNameExtension;
.super Landroid/sun/security/x509/Extension;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# instance fields
.field public final names:Landroid/sun/security/x509/GeneralNames;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/sun/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sun/security/x509/IssuerAlternativeNameExtension;->names:Landroid/sun/security/x509/GeneralNames;

    sget-object v0, Landroid/sun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v0, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sun/security/x509/Extension;->critical:Z

    new-instance v0, Landroid/sun/security/x509/GeneralNames;

    invoke-direct {v0}, Landroid/sun/security/x509/GeneralNames;-><init>()V

    iput-object v0, p0, Landroid/sun/security/x509/IssuerAlternativeNameExtension;->names:Landroid/sun/security/x509/GeneralNames;

    return-void
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 3

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_2

    sget-object v1, Landroid/sun/security/x509/PKIXExtensions;->IssuerAlternativeName_Id:Landroid/sun/security/util/ObjectIdentifier;

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/sun/security/x509/Extension;->critical:Z

    iget-object v1, p0, Landroid/sun/security/x509/IssuerAlternativeNameExtension;->names:Landroid/sun/security/x509/GeneralNames;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroid/sun/security/x509/GeneralNames;->names:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v2}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    invoke-virtual {v1, v2}, Landroid/sun/security/x509/GeneralNames;->encode(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/sun/security/x509/Extension;->encode$1(Landroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "IssuerAlternativeName"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/sun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IssuerAlternativeName [\n"

    invoke-static {v0, v1, v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroid/sun/security/x509/IssuerAlternativeNameExtension;->names:Landroid/sun/security/x509/GeneralNames;

    const-string v1, "  null\n"

    if-nez p0, :cond_0

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Landroid/sun/security/x509/GeneralNames;->names:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    const-string v0, "]\n"

    invoke-static {p0, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
