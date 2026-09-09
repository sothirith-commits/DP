.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final enabled:Z

.field public final level:Ljava/lang/Integer;

.field public final position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "position"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "set_seat_heating"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    iput-object p2, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    iput-object p3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    const-string p3, "Seat heating"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Off"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getSeatDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->getNormalizedLevel()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getSeatDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->getNormalizedLevel()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x6863

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Open"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getSeatDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    iget-boolean v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    iget-boolean v3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    iget-object v3, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getNormalizedLevel()Ljava/lang/Integer;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    if-eqz p0, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v1, p0

    return v1
.end method

.method public final toJson()Lcom/google/gson/JsonObject;
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->getRawValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->getNormalizedLevel()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "level"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetSeatHeating(enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->position:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;->level:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
