.class public final Lorg/bouncycastle/asn1/DLExternal;
.super Lorg/bouncycastle/asn1/ASN1Primitive;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

.field public directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field public encoding:I

.field public externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

.field public indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLExternal;->$r8$classId:I

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/asn1/DLExternal;->$r8$classId:I

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/DLExternal;->getObjFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    instance-of v2, v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1, v3}, Lorg/bouncycastle/asn1/DLExternal;->getObjFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    instance-of v4, v1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v4, :cond_1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/DLExternal;->getObjFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_1
    instance-of v4, v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    if-nez v4, :cond_2

    iput-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/DLExternal;->getObjFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    add-int/2addr v2, v3

    if-ne p1, v2, :cond_a

    instance-of p1, v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    if-eqz p1, :cond_9

    check-cast v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget p1, v1, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    if-ltz p1, :cond_8

    const/4 v2, 0x2

    if-gt p1, v2, :cond_8

    iput p1, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Util;->checkContextTagClass(Lorg/bouncycastle/asn1/DLTaggedObject;)V

    iget p1, v1, Lorg/bouncycastle/asn1/DLTaggedObject;->tagNo:I

    if-eqz p1, :cond_5

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_3

    sget-object p1, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1Set$1;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/DLTaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1BitString;

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "invalid tag: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lorg/bouncycastle/asn1/DLTaggedObject;->tagClass:I

    invoke-static {v1, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    sget-object p1, Lorg/bouncycastle/asn1/ASN1OctetString;->TYPE:Lorg/bouncycastle/asn1/ASN1Set$1;

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/DLTaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1OctetString;

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DLTaggedObject;->isExplicit()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, v1, Lorg/bouncycastle/asn1/DLTaggedObject;->obj:Lorg/bouncycastle/asn1/ASN1Encodable;

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Object;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Object;

    goto :goto_1

    :cond_6
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid encoding value: "

    invoke-static {v0, p1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No tagged object found in sequence. Structure doesn\'t seem to be of type External"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input sequence too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getObjFromSequence(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "too few objects in input sequence"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/asn1/DLExternal;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/DLExternal;

    iget-object v1, p1, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v3, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v3, v1}, Lorg/bouncycastle/util/Objects;->areEqual(Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v3, p1, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Objects;->areEqual(Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object v3, p1, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Objects;->areEqual(Lorg/bouncycastle/asn1/ASN1Primitive;Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    iget v3, p1, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget-object p1, p1, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final buildSequence()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 5

    iget v0, p0, Lorg/bouncycastle/asn1/DLExternal;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v2, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    if-nez v2, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    iget-object p0, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v2, p0, v4}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Primitive;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_6
    new-instance v1, Lorg/bouncycastle/asn1/DLTaggedObject;

    iget v2, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    if-nez v2, :cond_7

    const/4 v3, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x0

    :goto_1
    iget-object p0, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, p0, v4}, Lorg/bouncycastle/asn1/DLTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Primitive;I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance p0, Lorg/bouncycastle/asn1/DLSequence;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/DLSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final encode(Lcom/umeng/analytics/pro/ah;Z)V
    .locals 1

    const/16 v0, 0x28

    invoke-virtual {p1, v0, p2}, Lcom/umeng/analytics/pro/ah;->writeIdentifier(IZ)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLExternal;->buildSequence()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lcom/umeng/analytics/pro/ah;Z)V

    return-void
.end method

.method public final encodeConstructed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final encodedLength(Z)I
    .locals 0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLExternal;->buildSequence()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v1

    :goto_2
    xor-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    xor-int/2addr v0, v1

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLExternal;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLExternal;->toDERObject$org$bouncycastle$asn1$ASN1External()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final toDERObject$org$bouncycastle$asn1$ASN1External()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/DLExternal;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DLExternal;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object v1, v0, Lorg/bouncycastle/asn1/DLExternal;->directReference:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v1, v0, Lorg/bouncycastle/asn1/DLExternal;->indirectReference:Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iput-object v1, v0, Lorg/bouncycastle/asn1/DLExternal;->dataValueDescriptor:Lorg/bouncycastle/asn1/ASN1Primitive;

    iget v1, p0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    if-ltz v1, :cond_4

    const/4 v2, 0x2

    if-gt v1, v2, :cond_4

    iput v1, v0, Lorg/bouncycastle/asn1/DLExternal;->encoding:I

    iget-object p0, p0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    const/4 v3, 0x1

    const-string v4, "unexpected object: "

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-class v1, Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-class v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iput-object p0, v0, Lorg/bouncycastle/asn1/DLExternal;->externalContent:Lorg/bouncycastle/asn1/ASN1Primitive;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid encoding value: "

    invoke-static {v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/DLExternal;->$r8$classId:I

    return-object p0
.end method
