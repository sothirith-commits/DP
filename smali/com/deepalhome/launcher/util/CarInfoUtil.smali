.class public final Lcom/deepalhome/launcher/util/CarInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_AIR_CD_AC_MODE:J

.field public static final ID_AIR_CD_AC_MODE_FRONT:J

.field public static final ID_AUTO_AIR_CD_MODE:J

.field public static final ID_AUTO_AIR_CD_MODE_FRONT:J

.field public static final ID_BLW_DIRECT_FRONT:J

.field public static final ID_BLW_LEVEL_FRONT:J

.field public static final ID_CAR_GEAR:J

.field public static final ID_CAR_SPEED:J

.field public static final ID_EP_HV_BATT_REMAIN_RANGE:J

.field public static final ID_FUEL_L:J

.field public static final ID_FUEL_LEVEL:J

.field public static final ID_FUEL_PERCENT:J

.field public static final ID_FUEL_REMAIN_RANGE:J

.field public static final ID_HV_PERCENT:J

.field public static final ID_LIGHT_CONTROL:J

.field public static final ID_REMAINING_MILEAGE_REAL:J

.field public static final ID_REMAINING_MILEAGE_STANDARD:J

.field public static final ID_TEMPERATURE:J

.field public static final ID_TEMPERATURE_FRONTLEFT:J

.field public static final ID_TEMPERATURE_FRONTRIGHT:J

.field public static final ID_TIRE_PRESSURE_FRONTLEFT:J

.field public static final ID_TIRE_PRESSURE_FRONTRIGHT:J

.field public static final ID_TIRE_PRESSURE_REARLEFT:J

.field public static final ID_TIRE_PRESSURE_REARRIGHT:J

.field public static final ID_WHOLE_CABIN_AIR_CD:J

.field public static final ID_WHOLE_CABIN_AIR_CD_FRONT:J

.field public static final ID_WHOLE_CABIN_AIR_CD_REAR:J

.field public static final INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

.field public static volatile currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

.field public static volatile currentDrivingGear:Ljava/lang/Integer;

.field public static volatile currentDrivingSpeedKmh:Ljava/lang/Integer;

.field public static volatile isStarted:Z

.field public static final logcatListener:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

.field public static final onAirConditionStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onCarInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onCarStatusChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onVehiclePropertyChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    const-wide/32 v0, 0x9000074

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTLEFT:J

    const-wide/32 v0, 0x9000075

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTRIGHT:J

    const-wide/32 v0, 0x9000076

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARLEFT:J

    const-wide/32 v0, 0x9000077

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARRIGHT:J

    const-wide/32 v0, 0x500001e

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_EP_HV_BATT_REMAIN_RANGE:J

    const-wide/32 v0, 0x5000056

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_L:J

    const-wide/32 v0, 0x500005a

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_LEVEL:J

    const-wide/32 v0, 0x5000032

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_PERCENT:J

    const-wide/32 v0, 0x5000033

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_REMAIN_RANGE:J

    const-wide/32 v0, 0x500001d

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_HV_PERCENT:J

    const-wide/32 v0, 0x5000054

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_REAL:J

    const-wide/32 v0, 0x5000055

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_STANDARD:J

    const-wide/32 v0, 0x2000006

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AIR_CD_AC_MODE:J

    const-wide/32 v0, 0x2000075

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AIR_CD_AC_MODE_FRONT:J

    const-wide/32 v0, 0x2000003

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AUTO_AIR_CD_MODE:J

    const-wide/32 v0, 0x200006c

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AUTO_AIR_CD_MODE_FRONT:J

    const-wide/32 v0, 0x2000084

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_BLW_DIRECT_FRONT:J

    const-wide/32 v0, 0x200007e

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_BLW_LEVEL_FRONT:J

    const-wide/32 v0, 0x200000a

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE:J

    const-wide/32 v0, 0x2000077

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE_FRONTLEFT:J

    const-wide/32 v0, 0x2000078

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE_FRONTRIGHT:J

    const-wide/32 v0, 0x2000001

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD:J

    const-wide/32 v0, 0x200006a

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD_FRONT:J

    const-wide/32 v0, 0x200006b

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD_REAR:J

    const-wide/32 v0, 0x897ff7

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_SPEED:J

    const-wide/32 v0, 0x897ff8

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_GEAR:J

    const-wide/32 v0, 0x897ff9

    sput-wide v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_LIGHT_CONTROL:J

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarStatusChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onAirConditionStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onVehiclePropertyChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;->Companion:Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/carinfo/AirConditionState$Companion;->fromCache(Lcom/deepalhome/launcher/carinfo/CacheCarInfo;)Lcom/deepalhome/launcher/carinfo/AirConditionState;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->logcatListener:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$sumRemainRange(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p0

    :goto_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_1
    add-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onAirConditionStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addOnCarStatusChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarStatusChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static addOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onVehiclePropertyChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    return-void
.end method

.method public static equalsId(Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;J)Z
    .locals 2

    const-string v0, "carInfo"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "0x"

    const-string v1, ""

    iget-object p0, p0, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->id:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static normalizePercentCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ltz p0, :cond_0

    const/16 v2, 0x65

    if-ge p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static normalizeRangeCacheValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeOnAirConditionStateChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onAirConditionStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static removeOnVehiclePropertyChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->onVehiclePropertyChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static syncOptimisticAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, p1

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p2

    :goto_1
    and-int/lit8 v0, p5, 0x8

    if-eqz v0, :cond_2

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p3

    :goto_2
    and-int/lit8 v0, p5, 0x10

    if-eqz v0, :cond_3

    move-object v12, v1

    goto :goto_3

    :cond_3
    move-object/from16 v12, p4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    const/16 v13, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v13}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static syncS05AirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    move-object/from16 v4, p2

    :goto_1
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_6

    move-object v9, v3

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_7

    move-object v10, v3

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_8

    move-object v11, v3

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_9

    move-object v12, v3

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v3, p11

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getFrontDefrost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v14

    invoke-virtual {v14}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getRearDefrost()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v15

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    invoke-static/range {p1 .. p10}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;

    invoke-direct {v2, v12, v3}, Lcom/deepalhome/launcher/util/CarInfoUtil$syncS05AirConditionState$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_c
    if-eqz v11, :cond_d

    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "AC/FrontDefrost"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "AC/FrontDefrost"

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v11

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v7

    invoke-direct/range {p1 .. p8}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_d
    if-eqz v12, :cond_e

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "AC/RearDefrost"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "AC/RearDefrost"

    move-object/from16 p1, v1

    move-object/from16 p2, v4

    move-object/from16 p3, v12

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p8, v7

    invoke-direct/range {p1 .. p8}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_e
    return-void
.end method

.method public static updateAirConditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    if-nez p0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->statusRaw:Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontStatusRaw:Ljava/lang/String;

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p1

    :goto_1
    if-nez p2, :cond_2

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->rearStatusRaw:Ljava/lang/String;

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p2

    :goto_2
    if-nez p3, :cond_3

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureLeft:Ljava/lang/String;

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object/from16 v6, p3

    :goto_3
    if-nez p4, :cond_4

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->temperatureRight:Ljava/lang/String;

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p4

    :goto_4
    if-nez p5, :cond_5

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindLevelRaw:Ljava/lang/String;

    move-object v8, v1

    goto :goto_5

    :cond_5
    move-object/from16 v8, p5

    :goto_5
    if-nez p6, :cond_6

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontWindModeRaw:Ljava/lang/String;

    move-object v9, v1

    goto :goto_6

    :cond_6
    move-object/from16 v9, p6

    :goto_6
    if-nez p7, :cond_7

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAirModeRaw:Ljava/lang/String;

    move-object v10, v1

    goto :goto_7

    :cond_7
    move-object/from16 v10, p7

    :goto_7
    if-nez p8, :cond_8

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontAutoModeRaw:Ljava/lang/String;

    move-object v11, v1

    goto :goto_8

    :cond_8
    move-object/from16 v11, p8

    :goto_8
    if-nez p9, :cond_9

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/AirConditionState;->frontDefrostRaw:Ljava/lang/String;

    move-object v12, v1

    goto :goto_9

    :cond_9
    move-object/from16 v12, p9

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/carinfo/AirConditionState;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/deepalhome/launcher/carinfo/AirConditionState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentAirConditionState:Lcom/deepalhome/launcher/carinfo/AirConditionState;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$persistAirConditionState$1;-><init>(Lcom/deepalhome/launcher/carinfo/AirConditionState;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->onAirConditionStateChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v4, 0x3

    invoke-direct {v3, v4, v2, v0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_b
    return-void
.end method

.method public static synthetic updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p11, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p11, 0x2

    if-eqz v0, :cond_1

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p11, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p11, 0x8

    if-eqz v0, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 v0, p11, 0x10

    if-eqz v0, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 v0, p11, 0x20

    if-eqz v0, :cond_5

    move-object p6, v1

    :cond_5
    and-int/lit8 v0, p11, 0x40

    if-eqz v0, :cond_6

    move-object p7, v1

    :cond_6
    and-int/lit16 v0, p11, 0x80

    if-eqz v0, :cond_7

    move-object p8, v1

    :cond_7
    and-int/lit16 v0, p11, 0x100

    if-eqz v0, :cond_8

    move-object p9, v1

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v1

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, p1

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p8

    move-object p8, p9

    move-object p9, p10

    invoke-static/range {p0 .. p9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final notifyListeners(Lcom/deepalhome/launcher/carinfo/CarStatus;)V
    .locals 16

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Speed;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Number;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_6

    sput-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentDrivingSpeedKmh:Ljava/lang/Integer;

    goto :goto_5

    :cond_3
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$DrivingInfo$Gear;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_4

    check-cast v1, Ljava/lang/Number;

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_6

    sput-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentDrivingGear:Ljava/lang/Integer;

    :cond_6
    :goto_5
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$1;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$1;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    :cond_7
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    if-eqz v1, :cond_8

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$2;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$2;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    :cond_8
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$3;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$3;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_6

    :cond_9
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$4;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheTirePressureState$4;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_a
    :goto_6
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$WindSpeed;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/16 v14, 0x3df

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v14}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_b
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$WindDirection;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v14, 0x3bf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v14}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_c
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$Mode;

    if-eqz v1, :cond_f

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    move-object v3, v0

    check-cast v3, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v3, v3, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_e

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v3, "1"

    packed-switch v1, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    const-string v1, "4"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object v13, v3

    goto :goto_8

    :pswitch_1
    const-string v1, "3"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :pswitch_2
    const-string v1, "2"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :pswitch_3
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_7

    :cond_d
    const-string v2, "0"

    :cond_e
    :goto_7
    move-object v13, v2

    :goto_8
    const/4 v10, 0x0

    const/16 v15, 0x27f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v15}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    :cond_f
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$FrontDefrostOn;

    if-eqz v1, :cond_10

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;

    iget-object v2, v2, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x0

    const/16 v14, 0x1ff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v14}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    :cond_10
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$RearDefrostOn;

    if-eqz v1, :cond_11

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$14;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$14;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_9

    :cond_11
    instance-of v1, v0, Lcom/deepalhome/launcher/carinfo/CarStatus$AC$SeatHeating;

    if-eqz v1, :cond_12

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$15;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$15;-><init>(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_12
    :goto_9
    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarStatusChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v4, 0x5

    invoke-direct {v3, v4, v2, v0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_a

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V
    .locals 22

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "2"

    const/4 v6, 0x0

    const-string v7, "0"

    const-string v8, "1"

    iget-object v9, v0, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->value:Ljava/lang/String;

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "AC/RearDefrost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "AC/AutoMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "AC/HeatingColdMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v8

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :pswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v7

    goto :goto_1

    :cond_2
    :goto_0
    move-object v2, v6

    :goto_1
    sget-object v10, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v11, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$3;

    invoke-direct {v11, v1, v2}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    const/16 v16, 0x0

    const/16 v21, 0x27f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-static/range {v10 .. v21}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "AC/RearViewMirrorHeating/Left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "AC/RearViewMirrorHeating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "AC/SeatHeating/FrontLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$7;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$7;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "AC/SeatVentilation/FrontLeft"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$5;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$5;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "AC/RearViewMirrorHeating/Right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_2

    :cond_5
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$10;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$10;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "VehicleWindow/RearViewMirrorFold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_2

    :cond_6
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$12;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$12;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_9
    const-string v2, "AC/AutoMode/Front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$4;

    invoke-direct {v10, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    const/16 v17, 0x0

    const/16 v21, 0x2ff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v19, v1

    invoke-static/range {v10 .. v21}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :sswitch_a
    const-string v2, "AC/SeatHeating/FrontRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_2

    :cond_8
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$8;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$8;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_b
    const-string v2, "AC/CycleMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$11;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$11;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_c
    const-string v2, "AC/SeatVentilation/FrontRight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_2

    :cond_a
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$6;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$6;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_2

    :sswitch_d
    const-string v2, "AC/WindLevel/Front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_2

    :cond_b
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$1;

    invoke-direct {v10, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    const/16 v18, 0x0

    const/16 v21, 0x3df

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v16, v1

    invoke-static/range {v10 .. v21}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    :sswitch_e
    const-string v2, "AC/WindMode/Front"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_2

    :cond_c
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$2;

    invoke-direct {v10, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    const/16 v18, 0x0

    const/16 v21, 0x3bf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v1

    invoke-static/range {v10 .. v21}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :sswitch_f
    const-string v2, "VehicleDoor/TrunkDoorDegree"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v2, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$13;

    invoke-direct {v2, v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$13;-><init>(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    :sswitch_10
    const-string v2, "AC/FrontDefrost"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    sget-object v1, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v10, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$9;

    invoke-direct {v10, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheAirConditionState$9;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    const/16 v17, 0x0

    const/16 v21, 0x1ff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move-object/from16 v20, v1

    invoke-static/range {v10 .. v21}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    iget-object v1, v0, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->canonicalTopic:Ljava/lang/String;

    const-string v2, "EnergyInfo/EnergyManagementMode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v12, v0, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;->raw:Ljava/lang/String;

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    if-eqz v12, :cond_12

    const-string v2, "receive EnergyInfo/EnergyManagementMode"

    invoke-static {v12, v2, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-ne v2, v11, :cond_12

    if-eqz v9, :cond_12

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_3

    :cond_10
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto :goto_3

    :cond_11
    sget-object v13, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v14, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheEnergyManagementMode$1;

    invoke-direct {v14, v2}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheEnergyManagementMode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_12
    :goto_3
    const-string v2, "VCU_2A1/VcuFEveSetSts"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_4

    :cond_13
    if-eqz v12, :cond_16

    const-string v2, "receive VCU_2A1/VcuFEveSetSts"

    invoke-static {v12, v2, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-ne v2, v11, :cond_16

    if-eqz v9, :cond_14

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_14
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    goto :goto_4

    :cond_15
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/deepalhome/launcher/config/UserConfig;->setPureElectricModeWidgetSelected(Z)V

    :cond_16
    :goto_4
    const-string v2, "DrivingInfo/DrivingMode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_5

    :cond_17
    if-eqz v12, :cond_1a

    const-string v1, "receive DrivingInfo/DrivingMode"

    invoke-static {v12, v1, v10}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-ne v1, v11, :cond_1a

    if-eqz v9, :cond_1a

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_18

    goto :goto_5

    :cond_18
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_5

    :cond_19
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheDrivingMode$1;

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheDrivingMode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_1a
    :goto_5
    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->onVehiclePropertyChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    new-instance v3, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v4, 0x4

    invoke-direct {v3, v4, v2, v0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_1b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d291699 -> :sswitch_10
        -0x68961a67 -> :sswitch_f
        -0x63cf398e -> :sswitch_e
        -0x57d94977 -> :sswitch_d
        -0x4b77d7e9 -> :sswitch_c
        -0x202ef224 -> :sswitch_b
        -0x13c0889e -> :sswitch_a
        -0xabcb0a7 -> :sswitch_9
        -0xaaddd64 -> :sswitch_8
        0x5bd326a -> :sswitch_7
        0x5d00eac -> :sswitch_6
        0x79c2a01 -> :sswitch_5
        0x26450cfd -> :sswitch_4
        0x2976edf9 -> :sswitch_3
        0x3c3a58ac -> :sswitch_2
        0x4f72df5f -> :sswitch_1
        0x70fb4212 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized start()V
    .locals 13

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->isStarted:Z

    sget-object v1, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    sget-object v2, Lcom/deepalhome/launcher/util/CarInfoUtil;->logcatListener:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

    new-instance v3, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    sget-object v6, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    const-class v7, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    const-string v8, "mightParse"

    const-string v9, "mightParse(Ljava/lang/String;)Z"

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v11, 0x0

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    invoke-direct {v3, v4, v12, v0}, Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v1, v2, v3}, Lcom/deepalhome/launcher/util/LogcatUtil;->addOnLogcatPrintListener(Lkotlin/jvm/functions/Function1;Lcom/deepalhome/launcher/util/LogcatUtil$ListenerFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
