.class public final Landroid/sun/security/x509/CertificateVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# instance fields
.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    return-void
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 3

    iget v0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget p0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    invoke-virtual {v0, p0}, Landroid/sun/security/util/DerOutputStream;->putInteger(I)V

    new-instance p0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "version"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version: V"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/sun/security/x509/CertificateVersion;->version:I

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
