.class public final Lcom/deepalhome/launcher/task/model/ConditionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final airConditionTemperatureLeft:Ljava/lang/Float;

.field private final airConditionTemperatureRight:Ljava/lang/Float;

.field private final currentSpeed:I

.field private final isAirConditionOn:Ljava/lang/Boolean;

.field private final isFrontAirConditionOn:Ljava/lang/Boolean;

.field private final isLongPress:Z

.field private final isRearAirConditionOn:Ljava/lang/Boolean;

.field private final isSpeedInitialized:Z

.field private final isWifiConnected:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    const/16 v10, 0x1ff

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/deepalhome/launcher/task/model/ConditionContext;-><init>(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    iput-boolean p2, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    iput-boolean p3, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    iput-boolean p4, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    iput-object p5, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    iput-object p9, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    return-void
.end method

.method public synthetic constructor <init>(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p11, p10, 0x10

    const/4 v0, 0x0

    if-eqz p11, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    move-object p9, v0

    :cond_8
    invoke-direct/range {p0 .. p9}, Lcom/deepalhome/launcher/task/model/ConditionContext;-><init>(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/task/model/ConditionContext;IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/ConditionContext;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/deepalhome/launcher/task/model/ConditionContext;->copy(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;)Lcom/deepalhome/launcher/task/model/ConditionContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    return p0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component6()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component7()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final component8()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    return-object p0
.end method

.method public final component9()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    return-object p0
.end method

.method public final copy(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;)Lcom/deepalhome/launcher/task/model/ConditionContext;
    .locals 11

    new-instance v10, Lcom/deepalhome/launcher/task/model/ConditionContext;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/deepalhome/launcher/task/model/ConditionContext;-><init>(IZZZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/task/model/ConditionContext;

    iget v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    iget v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    iget-boolean v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    iget-object v3, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    iget-object p1, p1, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAirConditionTemperatureLeft()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    return-object p0
.end method

.method public final getAirConditionTemperatureRight()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    return-object p0
.end method

.method public final getCurrentSpeed()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final isAirConditionOn()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isFrontAirConditionOn()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isLongPress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    return p0
.end method

.method public final isRearAirConditionOn()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isSpeedInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    return p0
.end method

.method public final isWifiConnected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConditionContext(currentSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->currentSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isWifiConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSpeedInitialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isSpeedInitialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isLongPress:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAirConditionOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isAirConditionOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFrontAirConditionOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isFrontAirConditionOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRearAirConditionOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->isRearAirConditionOn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", airConditionTemperatureLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureLeft:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", airConditionTemperatureRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/task/model/ConditionContext;->airConditionTemperatureRight:Ljava/lang/Float;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
