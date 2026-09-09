.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "set_mode"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    iget-object p1, p1, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toJson()Lcom/google/gson/JsonObject;
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand;->toJson()Lcom/google/gson/JsonObject;

    move-result-object v0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->getRawValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetMode(mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;->mode:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
