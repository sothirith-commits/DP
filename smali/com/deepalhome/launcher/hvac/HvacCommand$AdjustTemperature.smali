.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final offset:I

.field public final position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)V

    return-void
.end method

.method public constructor <init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;I)V
    .locals 1

    const-string v0, "position"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "adjust_temperature"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-ltz p2, :cond_0

    const-string p1, "Increase temperature"

    goto :goto_0

    :cond_0
    const-string p1, "Decrease temperature"

    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;

    iget v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    iget v3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    iget-object p1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toJson()Lcom/google/gson/JsonObject;
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "position"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdjustTemperature(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
