.class public abstract Lorg/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkContextTagClass(Lorg/bouncycastle/asn1/DLTaggedObject;)V
    .locals 4

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x40

    const-string v2, "CONTEXT"

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_1

    const-string p0, "UNIVERSAL"

    goto :goto_0

    :cond_1
    const-string p0, "PRIVATE"

    goto :goto_0

    :cond_2
    move-object p0, v2

    goto :goto_0

    :cond_3
    const-string p0, "APPLICATION"

    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTagText(II)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    const-string v1, "]"

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc0

    if-eq p0, v0, :cond_0

    const-string p0, "[UNIVERSAL "

    :goto_0
    invoke-static {p1, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[PRIVATE "

    goto :goto_0

    :cond_1
    const-string p0, "[CONTEXT "

    goto :goto_0

    :cond_2
    const-string p0, "[APPLICATION "

    goto :goto_0
.end method
