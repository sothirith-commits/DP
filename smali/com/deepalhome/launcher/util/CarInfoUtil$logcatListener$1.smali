.class public final Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil$logcatListener$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    const/4 v1, 0x3

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/String;

    const-string v0, "log"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->resolveRoute(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;

    move-result-object v0

    iget-boolean v4, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    if-nez v4, :cond_0

    iget-boolean v0, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    if-eqz v0, :cond_45

    :cond_0
    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->resolveRoute(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;

    move-result-object v4

    iget-boolean v0, v4, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->airConditionMatch:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, v4, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->parserMatch:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_3
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->parse(Ljava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget v8, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_2
    instance-of v8, v0, Lkotlin/Result$Failure;

    if-eqz v8, :cond_4

    const/4 v0, 0x0

    :cond_4
    check-cast v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    if-eqz v0, :cond_5

    goto/16 :goto_c

    :cond_5
    iget-boolean v0, v4, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager$ParseRoute;->isEz6:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6Parser:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    sget-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6ParserDisabled:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    monitor-enter v3

    :try_start_1
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6Parser:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    sget-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6ParserDisabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    :try_start_2
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_3
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_b

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v5}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->disableParser(Ljava/lang/Throwable;Z)V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_b
    :goto_4
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_c

    const/4 v0, 0x0

    :cond_c
    check-cast v0, Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;

    if-eqz v0, :cond_9

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->ez6Parser:Lcom/deepalhome/launcher/util/carlog/Ez6VehicleLogParser;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_5
    monitor-exit v3

    :goto_6
    invoke-static {v0, v5, v2}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->parseWithParser(Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;ZLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    goto :goto_c

    :goto_7
    monitor-exit v3

    throw v0

    :cond_d
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParser:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    sget-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParserDisabled:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_b

    :cond_f
    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParser:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

    if-eqz v0, :cond_10

    goto :goto_a

    :cond_10
    sget-boolean v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParserDisabled:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v0, :cond_12

    :cond_11
    const/4 v0, 0x0

    goto :goto_a

    :cond_12
    :try_start_5
    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_6
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_8
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_13

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->disableParser(Ljava/lang/Throwable;Z)V

    goto :goto_9

    :catchall_4
    move-exception v0

    goto/16 :goto_24

    :cond_13
    :goto_9
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_14

    const/4 v0, 0x0

    :cond_14
    check-cast v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;

    if-eqz v0, :cond_11

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->defaultParser:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogParser;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_a
    monitor-exit v3

    :goto_b
    invoke-static {v0, v6, v2}, Lcom/deepalhome/launcher/util/carlog/VehicleLogParserManager;->parseWithParser(Lcom/deepalhome/launcher/util/carlog/VehicleLogParser;ZLjava/lang/String;)Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_45

    sget-object v2, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->airConditionStateUpdates:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;

    iget-object v8, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->statusRaw:Ljava/lang/String;

    iget-object v9, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontStatusRaw:Ljava/lang/String;

    iget-object v10, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->rearStatusRaw:Ljava/lang/String;

    iget-object v11, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->leftTemperature:Ljava/lang/String;

    iget-object v12, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->rightTemperature:Ljava/lang/String;

    iget-object v13, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontWindLevelRaw:Ljava/lang/String;

    iget-object v14, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontWindModeRaw:Ljava/lang/String;

    iget-object v15, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontAirModeRaw:Ljava/lang/String;

    iget-object v6, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontAutoModeRaw:Ljava/lang/String;

    iget-object v4, v4, Lcom/deepalhome/launcher/util/carlog/AirConditionStateUpdate;->frontDefrostRaw:Ljava/lang/String;

    move-object/from16 v16, v6

    move-object/from16 v17, v4

    invoke-static/range {v8 .. v17}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_d

    :cond_15
    iget-object v3, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->carInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;

    sget-object v6, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;

    iget-object v8, v4, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->id:Ljava/lang/String;

    iget-object v9, v4, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->value:Ljava/lang/String;

    iget-object v4, v4, Lcom/deepalhome/launcher/util/carlog/ParsedCarInfo;->ext:Ljava/lang/String;

    invoke-direct {v15, v8, v9, v4}, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "0x"

    invoke-static {v8, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v14, 0x10

    invoke-static {v14, v10}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_SPEED:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_18

    if-eqz v9, :cond_17

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-static {v10}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v12, v10, v12

    if-gtz v12, :cond_16

    const/4 v10, 0x0

    goto :goto_f

    :cond_16
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    :goto_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_10

    :cond_17
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-object v10, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentDrivingSpeedKmh:Ljava/lang/Integer;

    goto :goto_11

    :cond_18
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_CAR_GEAR:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_19

    sget-object v10, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {v10, v9}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->parseGear(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sput-object v10, Lcom/deepalhome/launcher/util/CarInfoUtil;->currentDrivingGear:Ljava/lang/Integer;

    :cond_19
    :goto_11
    invoke-static {v8, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_29

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_EP_HV_BATT_REMAIN_RANGE:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_1b

    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->normalizeRangeCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1a

    goto/16 :goto_16

    :cond_1a
    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_16

    :cond_1b
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_REMAIN_RANGE:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_1d

    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->normalizeRangeCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_29

    const-string v11, "1023"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v5

    if-eqz v11, :cond_1c

    goto :goto_12

    :cond_1c
    const/4 v10, 0x0

    :goto_12
    if-eqz v10, :cond_29

    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$2;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_16

    :cond_1d
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_HV_PERCENT:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_1f

    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->normalizePercentCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1e

    goto/16 :goto_16

    :cond_1e
    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$3;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto/16 :goto_16

    :cond_1f
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_PERCENT:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_21

    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->normalizePercentCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_20

    goto/16 :goto_16

    :cond_20
    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$4;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_16

    :cond_21
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_LEVEL:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_22

    goto :goto_13

    :cond_22
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_FUEL_L:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_26

    :goto_13
    if-eqz v9, :cond_24

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_24

    invoke-static {v10}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    if-eqz v10, :cond_24

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-static {v10}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v10

    if-gez v10, :cond_23

    const/4 v10, 0x0

    :cond_23
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_14

    :cond_24
    const/4 v10, 0x0

    :goto_14
    if-nez v10, :cond_25

    goto :goto_16

    :cond_25
    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$5;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    goto :goto_16

    :cond_26
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_REAL:J

    cmp-long v12, v10, v12

    if-nez v12, :cond_27

    goto :goto_15

    :cond_27
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_REMAINING_MILEAGE_STANDARD:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_29

    :goto_15
    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarInfoUtil;->normalizeRangeCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_28

    goto :goto_16

    :cond_28
    sget-object v11, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v12, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$6;

    invoke-direct {v12, v10}, Lcom/deepalhome/launcher/util/CarInfoUtil$cacheRangeState$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    :cond_29
    :goto_16
    invoke-static {v8, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_37

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE_FRONTLEFT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2a

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v19, 0x3f7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v8, v6

    move v5, v14

    move-object/from16 v14, v17

    move-object v7, v15

    move-object/from16 v15, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2a
    move v5, v14

    move-object v7, v15

    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE_FRONTRIGHT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2b

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v19, 0x3ef

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2b
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TEMPERATURE:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2c

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeTemperatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x0

    const/16 v19, 0x3e7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2c
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2d

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v19, 0x3fe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2d
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD_FRONT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2e

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v16, 0x0

    const/16 v19, 0x3fd

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2e
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_WHOLE_CABIN_AIR_CD_REAR:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_2f

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v19, 0x3fb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_2f
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_BLW_LEVEL_FRONT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_30

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindLevelValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v19, 0x3df

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_30
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_BLW_DIRECT_FRONT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_31

    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeWindModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v19, 0x3bf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1b

    :cond_31
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AIR_CD_AC_MODE:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_32

    goto :goto_17

    :cond_32
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AIR_CD_AC_MODE_FRONT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_35

    :goto_17
    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeAirModeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_34

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "1"

    packed-switch v8, :pswitch_data_0

    goto :goto_18

    :pswitch_0
    const-string v8, "4"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    move-object/from16 v17, v9

    goto :goto_19

    :pswitch_1
    const-string v8, "3"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_18

    :pswitch_2
    const-string v8, "2"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_18

    :pswitch_3
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_18

    :cond_33
    const-string v8, "0"

    move-object/from16 v17, v8

    goto :goto_19

    :cond_34
    :goto_18
    const/16 v17, 0x0

    :goto_19
    const/4 v14, 0x0

    const/16 v19, 0x27f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    move-object/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v20

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    :cond_35
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AUTO_AIR_CD_MODE:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_36

    goto :goto_1a

    :cond_36
    sget-wide v12, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_AUTO_AIR_CD_MODE_FRONT:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_38

    :goto_1a
    sget-object v8, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/util/carlog/AirConditionLogParser;->normalizeStatusValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x0

    const/16 v19, 0x2ff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->updateAirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1b

    :cond_37
    move v5, v14

    move-object v7, v15

    :cond_38
    :goto_1b
    sget-object v8, Lcom/deepalhome/launcher/util/CarInfoUtil;->onCarInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/jvm/functions/Function1;

    new-instance v10, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v11, 0x6

    invoke-direct {v10, v11, v9, v7}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_39
    iget-object v8, v7, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->value:Ljava/lang/String;

    if-eqz v8, :cond_41

    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_41

    invoke-static {v8}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    if-eqz v8, :cond_41

    iget-object v7, v7, Lcom/deepalhome/launcher/util/CarInfoUtil$CarInfo;->id:Ljava/lang/String;

    invoke-static {v7, v4}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_3a

    goto :goto_1d

    :cond_3a
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-wide v11, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTLEFT:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_3b

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontLeft;

    invoke-direct {v4, v8, v1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_21

    :cond_3b
    :goto_1d
    if-nez v4, :cond_3c

    goto :goto_1e

    :cond_3c
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-wide v11, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_FRONTRIGHT:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_3d

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$FrontRight;

    invoke-direct {v4, v8, v1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_21

    :cond_3d
    :goto_1e
    if-nez v4, :cond_3e

    goto :goto_1f

    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-wide v11, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARLEFT:J

    cmp-long v5, v9, v11

    if-nez v5, :cond_3f

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearLeft;

    invoke-direct {v4, v8, v1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_21

    :cond_3f
    :goto_1f
    if-nez v4, :cond_40

    goto :goto_20

    :cond_40
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-wide v9, Lcom/deepalhome/launcher/util/CarInfoUtil;->ID_TIRE_PRESSURE_REARRIGHT:J

    cmp-long v4, v4, v9

    if-nez v4, :cond_41

    new-instance v4, Lcom/deepalhome/launcher/carinfo/CarStatus$TirePressure$RearRight;

    invoke-direct {v4, v8, v1}, Lcom/deepalhome/launcher/carinfo/CarStatus$AC;-><init>(Ljava/lang/Number;I)V

    goto :goto_21

    :cond_41
    :goto_20
    const/4 v4, 0x0

    :goto_21
    if-eqz v4, :cond_42

    invoke-virtual {v6, v4}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    :cond_42
    const/4 v5, 0x1

    goto/16 :goto_e

    :cond_43
    iget-object v1, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->carStatuses:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/carinfo/CarStatus;

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/carinfo/CarStatus;)V

    goto :goto_22

    :cond_44
    iget-object v0, v0, Lcom/deepalhome/launcher/util/carlog/VehicleLogParseResult;->vehicleProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    goto :goto_23

    :cond_45
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_24
    monitor-exit v3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
