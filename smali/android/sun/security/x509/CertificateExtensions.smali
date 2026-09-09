.class public final Landroid/sun/security/x509/CertificateExtensions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/sun/security/x509/CertAttrSet;


# instance fields
.field public final map:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "x509"

    invoke-static {v0}, Landroid/sun/security/util/Debug;->getInstance(Ljava/lang/String;)Landroid/sun/security/util/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public final encode(Landroid/sun/security/util/DerOutputStream;)V
    .locals 4

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    instance-of v3, v2, Landroid/sun/security/x509/CertAttrSet;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/sun/security/x509/CertAttrSet;

    invoke-interface {v2, v0}, Landroid/sun/security/x509/CertAttrSet;->encode(Landroid/sun/security/util/DerOutputStream;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/sun/security/x509/Extension;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/sun/security/x509/Extension;

    invoke-virtual {v2, v0}, Landroid/sun/security/x509/Extension;->encode$1(Landroid/sun/security/util/DerOutputStream;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string p1, "Illegal extension object"

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {p0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {p0, v1, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/sun/security/util/DerValue;->createTag(BZ)B

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/sun/security/x509/CertificateExtensions;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/sun/security/x509/CertificateExtensions;

    iget-object p1, p1, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length v0, p1

    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_7

    aget-object v4, p1, v3

    instance-of v5, v4, Landroid/sun/security/x509/CertAttrSet;

    if-eqz v5, :cond_3

    check-cast v4, Landroid/sun/security/x509/CertAttrSet;

    invoke-interface {v4}, Landroid/sun/security/x509/CertAttrSet;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    aget-object v4, p1, v3

    check-cast v4, Landroid/sun/security/x509/Extension;

    if-nez v2, :cond_4

    iget-object v2, v4, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v2}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/sun/security/x509/Extension;

    if-nez v5, :cond_5

    return v1

    :cond_5
    invoke-virtual {v5, v4}, Landroid/sun/security/x509/Extension;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "extensions"

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->hashCode()I

    move-result p0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p2, Landroid/sun/security/x509/Extension;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    check-cast p2, Landroid/sun/security/x509/Extension;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unknown extension type."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/sun/security/x509/CertificateExtensions;->map:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
