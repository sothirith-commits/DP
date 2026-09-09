.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final enabled:Z

.field public final position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;Z)V
    .locals 1

    const-string v0, "position"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "set_power"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eqz p2, :cond_0

    const-string p1, "Turn on A/C"

    goto :goto_0

    :cond_0
    const-string p1, "Turn off A/C"

    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->displayName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {p0, v0, p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Position;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    iget-object p1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toJson()Lcom/google/gson/JsonObject;
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "position"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetPower(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
