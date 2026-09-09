.class public final Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private acStatus:Ljava/lang/String;

.field private acStatusFront:Ljava/lang/String;

.field private acStatusRear:Ljava/lang/String;

.field private airRecycleMode:Ljava/lang/String;

.field private drivingMode:Ljava/lang/String;

.field private energyManagementMode:Ljava/lang/String;

.field private frontAirMode:Ljava/lang/String;

.field private frontAutoMode:Ljava/lang/String;

.field private frontDefrost:Ljava/lang/String;

.field private fuelLevelLiters:Ljava/lang/String;

.field private fuelPercent:Ljava/lang/String;

.field private hvPercent:Ljava/lang/String;

.field private oilRemainRange:Ljava/lang/String;

.field private rearDefrost:Ljava/lang/String;

.field private rearSeatBeltAlarm:Ljava/lang/String;

.field private rearViewMirrorFold:Ljava/lang/String;

.field private seatHeatingFrontLeft:Ljava/lang/String;

.field private seatHeatingFrontRight:Ljava/lang/String;

.field private seatVentilationFrontLeft:Ljava/lang/String;

.field private seatVentilationFrontRight:Ljava/lang/String;

.field private socRemainRange:Ljava/lang/String;

.field private temperatureLeft:Ljava/lang/String;

.field private temperatureRight:Ljava/lang/String;

.field private tirePressureFrontLeft:Ljava/lang/String;

.field private tirePressureFrontRight:Ljava/lang/String;

.field private tirePressureRearLeft:Ljava/lang/String;

.field private tirePressureRearRight:Ljava/lang/String;

.field private totalRemainRange:Ljava/lang/String;

.field private trunkDoorDegree:Ljava/lang/String;

.field private type:Ljava/lang/Integer;

.field private windLevelFront:Ljava/lang/String;

.field private windModeFront:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 34

    move-object/from16 v0, p0

    const v32, 0x7fffffff

    const/16 v33, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v0 .. v33}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    move-object/from16 v1, p28

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 32

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x1

    const-string v2, "0"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_e

    const/4 v14, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v14, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v26, p26

    :goto_19
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v27, p27

    :goto_1a
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v28, p28

    :goto_1b
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v29, p29

    :goto_1c
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v30, p30

    :goto_1d
    const/high16 v31, 0x40000000    # 2.0f

    and-int v0, v0, v31

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p31

    :goto_1e
    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v2

    move-object/from16 p13, v13

    move-object/from16 p14, v15

    move-object/from16 p15, v14

    move-object/from16 p16, v16

    move-object/from16 p17, v17

    move-object/from16 p18, v18

    move-object/from16 p19, v19

    move-object/from16 p20, v20

    move-object/from16 p21, v21

    move-object/from16 p22, v22

    move-object/from16 p23, v23

    move-object/from16 p24, v24

    move-object/from16 p25, v25

    move-object/from16 p26, v26

    move-object/from16 p27, v27

    move-object/from16 p28, v28

    move-object/from16 p29, v29

    move-object/from16 p30, v30

    move-object/from16 p31, v0

    invoke-direct/range {p0 .. p31}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p32

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_15

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v15, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_16

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_17

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v15, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move-object/from16 p24, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p25, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p26

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p26, v15

    if-eqz v16, :cond_1a

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v15, p27

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_1b

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v15, p28

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move-object/from16 p28, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p29

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p30

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v1, v1, v16

    if-eqz v1, :cond_1e

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p31

    :goto_1e
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p30, v15

    move-object/from16 p31, v1

    invoke-virtual/range {p0 .. p31}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final component10()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final component11()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final component12()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    return-object p0
.end method

.method public final component13()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final component14()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    return-object p0
.end method

.method public final component15()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    return-object p0
.end method

.method public final component16()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    return-object p0
.end method

.method public final component17()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    return-object p0
.end method

.method public final component18()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component19()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final component20()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final component21()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final component22()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final component23()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final component24()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    return-object p0
.end method

.method public final component25()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    return-object p0
.end method

.method public final component26()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component27()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    return-object p0
.end method

.method public final component28()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    return-object p0
.end method

.method public final component29()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final component30()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component31()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final component8()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    return-object p0
.end method

.method public final component9()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/carinfo/CacheCarInfo;
    .locals 33

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v31, p31

    new-instance v32, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-object/from16 v0, v32

    invoke-direct/range {v0 .. v31}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v32
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    iget-object p1, p1, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAcStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    return-object p0
.end method

.method public final getAcStatusFront()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    return-object p0
.end method

.method public final getAcStatusRear()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    return-object p0
.end method

.method public final getAirRecycleMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getDrivingMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnergyManagementMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getFrontAirMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getFrontAutoMode()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    return-object p0
.end method

.method public final getFrontDefrost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    return-object p0
.end method

.method public final getFuelLevelLiters()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    return-object p0
.end method

.method public final getFuelPercent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    return-object p0
.end method

.method public final getHvPercent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    return-object p0
.end method

.method public final getOilRemainRange()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final getRearDefrost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    return-object p0
.end method

.method public final getRearSeatBeltAlarm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    return-object p0
.end method

.method public final getRearViewMirrorFold()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatHeatingFrontLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatHeatingFrontRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatVentilationFrontLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatVentilationFrontRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final getSocRemainRange()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemperatureLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getTemperatureRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    return-object p0
.end method

.method public final getTirePressureFrontLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getTirePressureFrontRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    return-object p0
.end method

.method public final getTirePressureRearLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    return-object p0
.end method

.method public final getTirePressureRearRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    return-object p0
.end method

.method public final getTotalRemainRange()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    return-object p0
.end method

.method public final getTrunkDoorDegree()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->type:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWindLevelFront()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    return-object p0
.end method

.method public final getWindModeFront()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    if-nez v2, :cond_1b

    move v2, v1

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    if-nez v2, :cond_1c

    move v2, v1

    goto :goto_1c

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    if-nez v2, :cond_1d

    move v2, v1

    goto :goto_1d

    :cond_1d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    if-nez p0, :cond_1e

    goto :goto_1e

    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public final setAcStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    return-void
.end method

.method public final setAcStatusFront(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    return-void
.end method

.method public final setAcStatusRear(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    return-void
.end method

.method public final setAirRecycleMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    return-void
.end method

.method public final setDrivingMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    return-void
.end method

.method public final setEnergyManagementMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    return-void
.end method

.method public final setFrontAirMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    return-void
.end method

.method public final setFrontAutoMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    return-void
.end method

.method public final setFrontDefrost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    return-void
.end method

.method public final setFuelLevelLiters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    return-void
.end method

.method public final setFuelPercent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    return-void
.end method

.method public final setHvPercent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    return-void
.end method

.method public final setOilRemainRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    return-void
.end method

.method public final setRearDefrost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    return-void
.end method

.method public final setRearSeatBeltAlarm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    return-void
.end method

.method public final setRearViewMirrorFold(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    return-void
.end method

.method public final setSeatHeatingFrontLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    return-void
.end method

.method public final setSeatHeatingFrontRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    return-void
.end method

.method public final setSeatVentilationFrontLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    return-void
.end method

.method public final setSeatVentilationFrontRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    return-void
.end method

.method public final setSocRemainRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    return-void
.end method

.method public final setTemperatureLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    return-void
.end method

.method public final setTemperatureRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    return-void
.end method

.method public final setTirePressureFrontLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    return-void
.end method

.method public final setTirePressureFrontRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    return-void
.end method

.method public final setTirePressureRearLeft(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    return-void
.end method

.method public final setTirePressureRearRight(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    return-void
.end method

.method public final setTotalRemainRange(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    return-void
.end method

.method public final setTrunkDoorDegree(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->type:Ljava/lang/Integer;

    return-void
.end method

.method public final setWindLevelFront(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    return-void
.end method

.method public final setWindModeFront(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CacheCarInfo(totalRemainRange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->totalRemainRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", socRemainRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->socRemainRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oilRemainRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->oilRemainRange:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hvPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->hvPercent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fuelPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelPercent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fuelLevelLiters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->fuelLevelLiters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", temperatureLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", temperatureRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->temperatureRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tirePressureFrontLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tirePressureFrontRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureFrontRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tirePressureRearLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tirePressureRearRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->tirePressureRearRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acStatusFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusFront:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acStatusRear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->acStatusRear:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", windLevelFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windLevelFront:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", windModeFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->windModeFront:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frontAirMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAirMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frontAutoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontAutoMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatVentilationFrontLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatVentilationFrontRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatVentilationFrontRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatHeatingFrontLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatHeatingFrontRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->seatHeatingFrontRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frontDefrost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->frontDefrost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rearDefrost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearDefrost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", airRecycleMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->airRecycleMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rearViewMirrorFold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearViewMirrorFold:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rearSeatBeltAlarm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->rearSeatBeltAlarm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trunkDoorDegree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->trunkDoorDegree:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", energyManagementMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->energyManagementMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", drivingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->drivingMode:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
