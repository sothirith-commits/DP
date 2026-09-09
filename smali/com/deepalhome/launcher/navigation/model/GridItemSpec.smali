.class public final Lcom/deepalhome/launcher/navigation/model/GridItemSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

.field public final appearsInFunctionPalette:Z

.field public final coarseSpan:I

.field public final removable:Z

.field public final repeatable:Z

.field public final type:Lcom/deepalhome/launcher/navigation/model/GridItemType;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridAnchor;IZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iput-object p2, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iput p3, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    iput-boolean p4, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    iput-boolean p5, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    iput-boolean p6, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->appearsInFunctionPalette:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    iget-object v3, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iget-object v3, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->appearsInFunctionPalette:Z

    iget-boolean p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->appearsInFunctionPalette:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    invoke-static {v0, v2, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    if-eqz v3, :cond_0

    move v3, v2

    :cond_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    if-eqz v3, :cond_1

    move v3, v2

    :cond_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->appearsInFunctionPalette:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v2, p0

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridItemSpec(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->type:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coarseSpan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", removable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->removable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", movable=true, repeatable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->repeatable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", appearsInFunctionPalette="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->appearsInFunctionPalette:Z

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
