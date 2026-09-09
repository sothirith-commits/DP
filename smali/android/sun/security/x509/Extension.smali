.class public Landroid/sun/security/x509/Extension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public critical:Z

.field public extensionId:Landroid/sun/security/util/ObjectIdentifier;

.field public extensionValue:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/sun/security/x509/Extension;->critical:Z

    iput-object v0, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    return-void
.end method


# virtual methods
.method public final encode$1(Landroid/sun/security/util/DerOutputStream;)V
    .locals 3

    iget-object v0, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    if-eqz v0, :cond_2

    new-instance v0, Landroid/sun/security/util/DerOutputStream;

    invoke-direct {v0}, Landroid/sun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v0}, Landroid/sun/security/util/ObjectIdentifier;->encode(Landroid/sun/security/util/DerOutputStream;)V

    iget-boolean v1, p0, Landroid/sun/security/x509/Extension;->critical:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v0, v2}, Landroid/sun/security/util/DerOutputStream;->putLength(I)V

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/sun/security/util/DerOutputStream;->write(B[B)V

    const/16 p0, 0x30

    invoke-virtual {p1, p0, v0}, Landroid/sun/security/util/DerOutputStream;->write(BLandroid/sun/security/util/DerOutputStream;)V

    return-void

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "No value to encode for the extension!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Null OID to encode for the extension!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroid/sun/security/x509/Extension;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Landroid/sun/security/x509/Extension;

    iget-boolean v0, p0, Landroid/sun/security/x509/Extension;->critical:Z

    iget-boolean v2, p1, Landroid/sun/security/x509/Extension;->critical:Z

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    iget-object v2, p1, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Landroid/sun/security/util/ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    iget-object p1, p1, Landroid/sun/security/x509/Extension;->extensionValue:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/sun/security/x509/Extension;->extensionValue:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    aget-byte v4, v0, v3

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Landroid/sun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroid/sun/security/x509/Extension;->critical:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x4cf

    goto :goto_1

    :cond_1
    const/16 p0, 0x4d5

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ObjectId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/sun/security/x509/Extension;->extensionId:Landroid/sun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Landroid/sun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean p0, p0, Landroid/sun/security/x509/Extension;->critical:Z

    if-eqz p0, :cond_0

    const-string p0, " Criticality=true\n"

    invoke-static {v0, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, " Criticality=false\n"

    invoke-static {v0, p0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
