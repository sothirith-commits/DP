.class public final Lorg/bouncycastle/asn1/DLTaggedObject;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final explicitness:I

.field public final obj:Lorg/bouncycastle/asn1/ASN1Encodable;

.field public final tagClass:I

.field public final tagNo:I


# direct methods
.method public constructor <init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p2, :cond_0

    and-int/lit16 v0, p2, 0xc0

    if-ne v0, p2, :cond_0

    iput p1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iput p2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    iput p3, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    iput-object p4, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid tag class: "

    invoke-static {p1, p2}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'obj\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V
    .locals 0

    iput p5, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ASN1Primitive;I)V
    .locals 0

    iput p4, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 p4, 0x80

    invoke-direct {p0, p1, p4, p2, p3}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-void
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/asn1/DLTaggedObject;
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/DLTaggedObject;

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/DLTaggedObject;

    return-object p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/asn1/DLTaggedObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v0, p1, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    if-ne v2, v0, :cond_5

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    iget v2, p1, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iget v2, p1, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    iget-object v2, p1, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v3

    if-nez v3, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1

    :cond_4
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    if-eqz p2, :cond_2

    iget p2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    or-int/lit8 p2, p2, 0x20

    :cond_1
    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, p2, p0}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(II)V

    :cond_2
    if-eqz v1, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ah;->getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    if-eqz p2, :cond_6

    iget p2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    or-int/lit8 p2, p2, 0x20

    :cond_5
    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, p2, p0}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(II)V

    :cond_6
    const/4 p0, 0x0

    if-eqz v1, :cond_7

    const/16 p2, 0x80

    invoke-virtual {p1, p2}, Lcom/umeng/analytics/pro/ah;->write(I)V

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->write(I)V

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->write(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {v0, p1, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    if-eqz p2, :cond_a

    iget p2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    or-int/lit8 p2, p2, 0x20

    :cond_9
    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-virtual {p1, p2, p0}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(II)V

    :cond_a
    if-eqz v1, :cond_b

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/umeng/analytics/pro/ah;->writeDL(I)V

    :cond_b
    invoke-virtual {p1}, Lcom/umeng/analytics/pro/ah;->getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final encodeConstructed()Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p0, 0x1

    :goto_3
    return p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodeConstructed()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p0, 0x1

    :goto_5
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final encodedLength(Z)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/umeng/analytics/pro/ah;->getLengthOfDL(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    if-eqz p1, :cond_1

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {p0}, Lcom/umeng/analytics/pro/ah;->getLengthOfIdentifier(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x3

    :cond_2
    if-eqz p1, :cond_3

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {p0}, Lcom/umeng/analytics/pro/ah;->getLengthOfIdentifier(I)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    add-int/2addr v0, p0

    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/umeng/analytics/pro/ah;->getLengthOfDL(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    if-eqz p1, :cond_5

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {p0}, Lcom/umeng/analytics/pro/ah;->getLengthOfIdentifier(I)I

    move-result p0

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    add-int/2addr v0, p0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    mul-int/lit16 v0, v0, 0x1eef

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xf0

    :goto_0
    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public final isExplicit()Z
    .locals 2

    const/4 v0, 0x1

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final rebuildConstructed(Lorg/bouncycastle/asn1/ASN1Primitive;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 0

    iget p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 p1, -0x1

    iput p1, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->toDERObject$org$bouncycastle$asn1$ASN1TaggedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final toDERObject$org$bouncycastle$asn1$ASN1TaggedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V

    return-object v6
.end method

.method public toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLTaggedObject;->toDLObject$org$bouncycastle$asn1$ASN1TaggedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :pswitch_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final toDLObject$org$bouncycastle$asn1$ASN1TaggedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 7

    new-instance v6, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->explicitness:I

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    iget v3, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    iget-object v4, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(IIILorg/bouncycastle/asn1/ASN1Encodable;I)V

    return-object v6
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    iget v2, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
