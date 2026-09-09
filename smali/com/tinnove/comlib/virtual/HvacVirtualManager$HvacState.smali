.class public final Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public airRecirculationMode:I

.field public fanDirection:I

.field public fanSpeed:I

.field public frontWindowDeforestOn:Z

.field public isACOn:Z

.field public isAutoOn:Z

.field public isCarPowerOn:Z

.field public isGeneratorOn:Z

.field public isHvacPowerOn:Z

.field public leftSeatHeatLevel:I

.field public leftSeatVentilationLevel:I

.field public leftTemp:F

.field public rearWindowDeforestOn:Z

.field public rightSeatHeatLevel:I

.field public rightSeatVentilationLevel:I

.field public rightTemp:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    if-eq v3, v2, :cond_1

    goto/16 :goto_1

    :cond_1
    check-cast p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    iget-boolean v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    iget v3, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    iget p1, p1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-boolean v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HvacState{isCarPowerOn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHvacPowerOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", rightTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fanDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fanSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isACOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", frontWindowDeforestOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rearWindowDeforestOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", airRecirculationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGeneratorOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isGeneratorOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", leftSeatHeatLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatHeatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightSeatHeatLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatHeatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftSeatVentilationLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftSeatVentilationLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rightSeatVentilationLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightSeatVentilationLevel:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
