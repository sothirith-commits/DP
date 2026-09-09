.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final offset:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "adjust_fan_speed"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    if-ltz p1, :cond_0

    const-string p1, "Increase fan speed"

    goto :goto_0

    :cond_0
    const-string p1, "Decrease fan speed"

    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;

    iget p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    iget p1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public final toJson()Lcom/google/gson/JsonObject;
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "offset"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdjustFanSpeed(offset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;->offset:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
