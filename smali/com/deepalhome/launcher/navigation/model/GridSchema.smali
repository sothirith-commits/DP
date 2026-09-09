.class public final Lcom/deepalhome/launcher/navigation/model/GridSchema;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final railUnits:I

.field public final slotCount:I

.field public final unitsPerSlot:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 2

    const/4 p1, 0x1

    const/16 v0, 0x12

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    iput p2, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    iput p3, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    if-lez p1, :cond_2

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "railUnits must be greater than 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unitsPerSlot must be greater than 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "slotCount must be greater than 0."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    iget v1, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    iget v3, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    iget v3, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    iget p1, p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getRailCount()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    invoke-static {v2, v0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final normalizePlacement(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridPlacement;)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 2

    const-string v0, "type"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "placement"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->INSTANCE:Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/navigation/model/GridItemSpecCatalog;->spec(Lcom/deepalhome/launcher/navigation/model/GridItemType;)Lcom/deepalhome/launcher/navigation/model/GridItemSpec;

    move-result-object p1

    iget-object v0, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->anchor:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    iget p2, p2, Lcom/deepalhome/launcher/navigation/model/GridPlacement;->index:I

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->getRailCount()I

    move-result v0

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForRail(I)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    iget v0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    iget p1, p1, Lcom/deepalhome/launcher/navigation/model/GridItemSpec;->coarseSpan:I

    sub-int/2addr v0, p1

    if-gez v0, :cond_3

    move v0, v1

    :cond_3
    invoke-static {p2, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/deepalhome/launcher/navigation/model/GridSchema;->placementForSlot(II)Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final placementForRail(I)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->RAIL:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iget v2, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    add-int v3, v2, p0

    mul-int/2addr v3, p1

    add-int/2addr v3, v2

    invoke-direct {v0, v1, p1, v3, p0}, Lcom/deepalhome/launcher/navigation/model/GridPlacement;-><init>(Lcom/deepalhome/launcher/navigation/model/GridAnchor;III)V

    return-object v0
.end method

.method public final placementForSlot(II)Lcom/deepalhome/launcher/navigation/model/GridPlacement;
    .locals 4

    new-instance v0, Lcom/deepalhome/launcher/navigation/model/GridPlacement;

    sget-object v1, Lcom/deepalhome/launcher/navigation/model/GridAnchor;->SLOT:Lcom/deepalhome/launcher/navigation/model/GridAnchor;

    iget v2, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    add-int/2addr v2, p0

    mul-int/2addr v2, p1

    const/4 v3, 0x1

    if-ge p2, v3, :cond_0

    move p2, v3

    :cond_0
    mul-int/2addr p2, p0

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/deepalhome/launcher/navigation/model/GridPlacement;-><init>(Lcom/deepalhome/launcher/navigation/model/GridAnchor;III)V

    return-object v0
.end method

.method public final slotSpan(I)I
    .locals 2

    int-to-double v0, p1

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GridSchema(slotCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->slotCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unitsPerSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->unitsPerSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", railUnits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/deepalhome/launcher/navigation/model/GridSchema;->railUnits:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
