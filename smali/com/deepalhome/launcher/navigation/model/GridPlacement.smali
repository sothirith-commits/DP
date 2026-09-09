.class public final Lcom/deepalhome/launcher/navigation/model/GridPlacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

.field public final index:I

.field public final spanUnits:I

.field public final startUnit:I


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridAnchor;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iput p2, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    iput p3, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    iput p4, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    iget p1, p1, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridPlacement(anchor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->startUnit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spanUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->spanUnits:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
