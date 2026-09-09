.class public final Lcom/deepalhome/launcher/util/CarS05InfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ELECTRIC_AMOUNT_SCALE:Ljava/math/BigDecimal;

.field public static final INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

.field public static final VIRTUAL_CAR_ELECTRIC_AMOUNT_OFFSET:Ljava/math/BigDecimal;

.field public static final VIRTUAL_CAR_TIRE_AREAS:[I

.field public static final cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

.field public static volatile cachedFrontAirModeRaw:Ljava/lang/String;

.field public static volatile connectRetryCount:I

.field public static final connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

.field public static final criticalStatusAliases:[Ljava/lang/String;

.field public static volatile currentAirRecycleMode:Ljava/lang/Integer;

.field public static volatile currentDrivingSpeedKmh:Ljava/lang/Integer;

.field public static volatile currentEnergyManagementMode:Ljava/lang/Integer;

.field public static final deathRecipient:Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;

.field public static final eventListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$eventListener$1;

.field public static final fastStatusPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

.field public static final infoDispatchRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

.field public static final initialDoorSnapshotRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

.field public static volatile isStarted:Z

.field public static volatile lastConnectAt:J

.field public static volatile lastEventAt:J

.field public static volatile lastForceReconnectAt:J

.field public static volatile lastRefreshAt:J

.field public static volatile lastSystemHvacAt:J

.field public static final mainHandler:Landroid/os/Handler;

.field public static final onAirRecycleChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onPsAliasChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final onSpeedChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public static final pendingChangedFields:Ljava/util/LinkedHashSet;

.field public static polymericService:Lcom/tinnove/polymericservice/IPolymericService;

.field public static psAvailable:Z

.field public static final psOnlyAliases:[Ljava/lang/String;

.field public static final requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public static serviceBinder:Landroid/os/IBinder;

.field public static systemHvacBridgeInitialized:Z

.field public static systemHvacManager:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

.field public static final systemHvacPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

.field public static virtualCar:Lcom/openos/virtualcar/VirtualCar;

.field public static final virtualCarCabinCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;

.field public static final virtualCarCabinIds:[I

.field public static final virtualCarHvacCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;

.field public static final virtualCarHvacIds:[I

.field public static virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

.field public static final virtualCarProtectedAliases:Ljava/util/Set;

.field public static final virtualCarReadyListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;

.field public static virtualCarRegistered:Z

.field public static final virtualCarSensorCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;

.field public static final virtualCarSensorIds:[I

.field public static final virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final watchdogRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "31.5"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->VIRTUAL_CAR_ELECTRIC_AMOUNT_OFFSET:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0.1"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->ELECTRIC_AMOUNT_SCALE:Ljava/math/BigDecimal;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/16 v3, 0x8

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->VIRTUAL_CAR_TIRE_AREAS:[I

    const-string v6, "vc_alias_door_pos_front_right"

    const-string v7, "vc_alias_door_pos_back_left"

    const-string v4, "vc_alias_tire_pressure"

    const-string v5, "vc_alias_door_pos_front_left"

    const-string v8, "vc_alias_door_pos_back_right"

    const-string v9, "vc_alias_door_trunk_pos"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->criticalStatusAliases:[Ljava/lang/String;

    const-string v9, "vc_alias_door_pos_front_right"

    const-string v10, "vc_alias_door_pos_back_left"

    const-string v4, "vc_alias_ac_internal_temp"

    const-string v5, "vc_alias_tire_pressure"

    const-string v6, "vc_alias_drive_style"

    const-string v7, "vc_alias_vehicle_gear"

    const-string v8, "vc_alias_door_pos_front_left"

    const-string v11, "vc_alias_door_pos_back_right"

    const-string v12, "vc_alias_door_trunk_pos"

    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psOnlyAliases:[Ljava/lang/String;

    const-string v7, "vc_alias_e_dte"

    const-string v8, "vc_alias_left_ev_dte"

    const-string v4, "vc_alias_ac_internal_temp"

    const-string v5, "vc_alias_vehicle_speed"

    const-string v6, "vc_alias_journey_all_distance"

    const-string v9, "vc_alias_disp_dte"

    const-string v10, "vc_alias_tire_pressure"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarProtectedAliases:Ljava/util/Set;

    const/16 v3, 0x15

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorIds:[I

    const v3, 0x3140058a

    const v4, 0x31400501

    const v5, 0x36400311

    const v6, 0x31400314

    filled-new-array {v3, v4, v5, v6}, [I

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinIds:[I

    const v3, 0x35400111

    const v4, 0x38600112

    const v5, 0x35600105

    filled-new-array {v4, v5, v3}, [I

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacIds:[I

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onSpeedChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onAirRecycleChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onPsAliasChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05Info()Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pendingChangedFields:Ljava/util/LinkedHashSet;

    new-instance v3, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->watchdogRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fastStatusPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initialDoorSnapshotRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->infoDispatchRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->deathRecipient:Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarReadyListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$eventListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$eventListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->eventListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$eventListener$1;

    return-void

    nop

    :array_0
    .array-data 4
        0x314005a6
        0x314005cf
        0x314005ce
        0x31400590
        0x31400591
        0x314005ae
        0x314005af
        0x314005a3
        0x31400594
        0x31400592
        0x31400595
        0x31400596
        0x314005b0
        0x314005b1
        0x314005a4
        0x314005a5
        0x31600202
        0x3140028d
        0x31600204
        0x31600205
        0x37600211
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnS05DetailedInfoChangedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addOnS05InfoChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V
    .locals 0

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v4, "vc_alias_reev_this_trip_elec_average_power"

    const-string v5, "vc_alias_this_journey_average_electric_consumption"

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "vc_alias_reev_recharge_energy_fuel_driving_time"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "vc_alias_journey_supplement_fuel_time"

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_1
    const-string v2, "vc_alias_reev_recharge_energy_elec_driving_time"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "vc_alias_journey_supplement_energy_time"

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    const-string v2, "vc_alias_reev_this_trip_fuel_driving_time"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "vc_alias_journey_this_fuel_time"

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sput-wide v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastEventAt:J

    new-instance v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7fde68a4 -> :sswitch_4
        0x1e91ccba -> :sswitch_3
        0x314bbb9b -> :sswitch_2
        0x4f6bc926 -> :sswitch_1
        0x7f028a95 -> :sswitch_0
    .end sparse-switch
.end method

.method public static applyVirtualCarDoorAlias(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "vc_alias_door_pos_back_right"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string p0, "vc_alias_door_pos_back_left"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p0, "vc_alias_door_pos_front_right"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string p0, "vc_alias_door_pos_front_left"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static bindVirtualCarPropertyManager()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCar:Lcom/openos/virtualcar/VirtualCar;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/openos/virtualcar/VirtualCar;->getVirtualCarManager()Lcom/openos/virtualcar/VirtualCarPropertyManager;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/openos/virtualcar/VirtualCarPropertyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move-object v1, v0

    goto :goto_2

    :goto_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    check-cast v0, Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-eqz v0, :cond_4

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    :cond_4
    return-void
.end method

.method public static booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "0"

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static cleanupPolymericConnection(Z)V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->serviceBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->deathRecipient:Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_0
    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->serviceBinder:Landroid/os/IBinder;

    sput-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    sput-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psAvailable:Z

    return-void
.end method

.method public static connectPolymericService(Z)V
    .locals 7

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    sput v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "polymeric_service"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/os/IBinder;

    if-eqz v3, :cond_2

    move-object v4, v2

    check-cast v4, Landroid/os/IBinder;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_2
    :goto_0
    if-eqz v4, :cond_b

    invoke-interface {v4}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_4

    :cond_3
    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->serviceBinder:Landroid/os/IBinder;

    if-ne v2, v4, :cond_4

    if-eqz p0, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cleanupPolymericConnection(Z)V

    sput-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->serviceBinder:Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget p0, Lkotlin/Result;->$r8$clinit:I

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->deathRecipient:Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda11;

    invoke-interface {v4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_2
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_5
    sget p0, Lcom/tinnove/polymericservice/IPolymericService$Stub;->$r8$clinit:I

    const-string p0, "com.tinnove.polymericservice.IPolymericService"

    invoke-interface {v4, p0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    if-eqz p0, :cond_7

    instance-of v2, p0, Lcom/tinnove/polymericservice/IPolymericService;

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    check-cast p0, Lcom/tinnove/polymericservice/IPolymericService;

    goto :goto_3

    :cond_7
    :goto_2
    new-instance p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_3
    sput-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->eventListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$eventListener$1;

    check-cast p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    const/16 v4, 0x1771

    const/16 v5, 0x44d

    invoke-virtual {p0, v2, v5, v4, v3}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    const/16 v2, 0x1774

    if-eqz p0, :cond_8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    check-cast p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {p0, v6, v5, v2, v3}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V

    :cond_8
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    const/16 v5, 0x44e

    if-eqz p0, :cond_9

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    check-cast p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {p0, v6, v5, v4, v3}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V

    :cond_9
    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    if-eqz p0, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    check-cast p0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V

    :cond_a
    sput-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psAvailable:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastConnectAt:J

    sput v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fetchPsOnlyData()V

    goto :goto_6

    :cond_b
    :goto_4
    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cleanupPolymericConnection(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleReconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectPolymericService failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarS05InfoUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cleanupPolymericConnection(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleReconnect()V

    :goto_6
    return-void
.end method

.method public static extractValidDte(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 6

    instance-of v0, p0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidDteValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    goto :goto_3

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidDteValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_1
    instance-of v0, p0, [I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p0, [I

    array-length v0, p0

    :goto_0
    if-ge v2, v0, :cond_6

    aget v3, p0, v2

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidDteValue(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_6

    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_5

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_4

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    move-object v5, v3

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidDteValue(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_6

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method public static fetchPsOnlyData()V
    .locals 8

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psOnlyAliases:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    sget-object v5, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "request_params_vs_alias"

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6}, [Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x44d

    const/16 v7, 0x3eb

    invoke-static {v6, v7, v5}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    move-result-object v5

    new-instance v6, Lcom/deepalhome/launcher/util/CarS05InfoUtil$psGetValue$1;

    invoke-direct {v6, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$psGetValue$1;-><init>(Ljava/lang/String;)V

    check-cast v4, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {v4, v5, v6}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->asynCallMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;Lcom/tinnove/polymericservice/IPolymericListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isBinderAlive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleReconnect()V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static formatDoorStatus(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string v0, "On"

    :cond_0
    return-object v0
.end method

.method public static formatPhevDriveStyle(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "Eco"

    goto :goto_4

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string p0, "Comfort"

    goto :goto_4

    :cond_3
    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-string p0, "Sport"

    goto :goto_4

    :cond_5
    :goto_2
    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    const-string p0, "Custom"

    goto :goto_4

    :cond_7
    :goto_3
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method

.method public static formatS05Temperature(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    instance-of v0, p0, Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    :cond_3
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_5

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%.1f"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static formatSingleTirePressure(I)Ljava/lang/String;
    .locals 4

    if-ltz p0, :cond_1

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-double v0, p0

    const-wide v2, 0x3ff5f7ced916872bL    # 1.373

    mul-double/2addr v0, v2

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 v0, 0x2

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "--"

    return-object p0
.end method

.method public static formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v3, "time"

    const-string v4, "driving_time"

    const-string v5, "mileage"

    const-string v6, "distance"

    const-string v7, "vc_alias_reev_recharge_energy_elec_average_power"

    const-string v8, "vc_alias_reev_this_trip_elec_average_power"

    const-string v9, "vc_alias_this_journey_average_electric_consumption"

    const-string v10, "vc_alias_reev_recharge_energy_fuel_average_fuel"

    const-string v11, "vc_alias_this_journey_average_oil_consumption"

    const-string v12, "vc_alias_ev_recharge_energy_elec_driving_power"

    const-string v13, "vc_alias_ev_recharge_energy_elec_attachment_power"

    const-string v15, "--.-"

    const-string v14, "--"

    if-nez v1, :cond_1

    move-object/from16 v21, v10

    move-object/from16 v18, v12

    :cond_0
    :goto_0
    move-object v1, v14

    goto/16 :goto_11

    :cond_1
    invoke-static {v0, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_11

    instance-of v2, v1, Ljava/lang/Integer;

    const/16 v17, 0x0

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v17, v1

    check-cast v17, Ljava/lang/Integer;

    :cond_4
    :goto_3
    move-object/from16 v18, v12

    goto/16 :goto_7

    :cond_5
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_3

    :cond_6
    instance-of v2, v1, [I

    if-eqz v2, :cond_9

    check-cast v1, [I

    array-length v2, v1

    move-object/from16 v18, v12

    const/4 v12, 0x1

    if-le v2, v12, :cond_7

    aget v2, v1, v12

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v2

    if-eqz v2, :cond_7

    aget v1, v1, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_8

    :cond_7
    array-length v2, v1

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v2, :cond_d

    aget v19, v1, v12

    sget-object v20, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v19 .. v19}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto/16 :goto_7

    :cond_8
    move/from16 v19, v2

    const/4 v2, 0x1

    add-int/2addr v12, v2

    move/from16 v2, v19

    goto :goto_4

    :cond_9
    move-object/from16 v18, v12

    const/4 v2, 0x1

    instance-of v12, v1, [Ljava/lang/Object;

    if-eqz v12, :cond_d

    check-cast v1, [Ljava/lang/Object;

    array-length v12, v1

    if-le v12, v2, :cond_a

    aget-object v12, v1, v2

    instance-of v2, v12, Ljava/lang/Number;

    if-eqz v2, :cond_a

    const-string v2, "null cannot be cast to non-null type kotlin.Number"

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_a
    array-length v2, v1

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v2, :cond_c

    move/from16 v19, v2

    aget-object v2, v1, v12

    move-object/from16 p1, v1

    instance-of v1, v2, Ljava/lang/Number;

    if-eqz v1, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    move-object/from16 v20, v2

    check-cast v20, Ljava/lang/Number;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->intValue()I

    move-result v20

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v20 .. v20}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isValidElectricAmountRaw(I)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x1

    add-int/2addr v12, v1

    move-object/from16 v1, p1

    move/from16 v2, v19

    goto :goto_5

    :cond_c
    move-object/from16 v2, v17

    :goto_6
    if-eqz v2, :cond_d

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :cond_d
    :goto_7
    move-object/from16 v1, v17

    :goto_8
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-wide v19, 0x3fb999999999999aL    # 0.1

    if-eqz v2, :cond_10

    if-gtz v1, :cond_f

    :cond_e
    move-object v1, v14

    goto :goto_9

    :cond_f
    int-to-double v1, v1

    mul-double v1, v1, v19

    const-wide v19, 0x403f800000000000L    # 31.5

    sub-double v1, v1, v19

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const/4 v12, 0x1

    invoke-virtual {v1, v12, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_9

    :cond_10
    const/4 v12, 0x1

    int-to-double v1, v1

    mul-double v1, v1, v19

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1, v12, v2}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_9
    move-object/from16 v21, v10

    goto/16 :goto_11

    :cond_11
    move-object/from16 v18, v12

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    const/4 v2, 0x0

    goto :goto_b

    :cond_13
    :goto_a
    const/4 v2, 0x1

    :goto_b
    const-string v12, "%.1f"

    const v17, 0x3dcccccd    # 0.1f

    const/4 v1, -0x1

    if-eqz v2, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_16

    const/16 v1, 0x7fff

    if-eq v2, v1, :cond_16

    const v1, 0xffff

    if-eq v2, v1, :cond_16

    div-int/lit8 v1, v2, 0xa

    move-object/from16 v21, v10

    if-ltz v1, :cond_15

    const/16 v10, 0xff

    if-lt v1, v10, :cond_14

    goto :goto_c

    :cond_14
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    int-to-float v1, v2

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_15
    :goto_c
    move-object v1, v15

    goto/16 :goto_11

    :cond_16
    move-object/from16 v21, v10

    goto/16 :goto_0

    :cond_17
    move-object/from16 v21, v10

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_10

    :cond_18
    const/4 v2, 0x0

    invoke-static {v0, v6, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-nez v10, :cond_1c

    invoke-static {v0, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-eqz v10, :cond_19

    goto :goto_e

    :cond_19
    invoke-static {v0, v4, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_d

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_23

    goto/16 :goto_0

    :cond_1b
    :goto_d
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/16 v1, 0x7fff

    if-eq v2, v1, :cond_0

    const v1, 0xffff

    if-eq v2, v1, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_11

    :cond_1c
    :goto_e
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    const/16 v1, 0x7fff

    if-eq v2, v1, :cond_0

    const v1, 0xffff

    if-eq v2, v1, :cond_0

    div-int/lit8 v1, v2, 0xa

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_f

    :sswitch_0
    const-string v10, "vc_alias_reev_this_trip_fuel_driving_distance"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_f

    :sswitch_1
    const-string v10, "vc_alias_reev_recharge_energy_fuel_driving_distance"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_f

    :sswitch_2
    const-string v10, "vc_alias_reev_this_trip_elec_driving_distance"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_f

    :cond_1d
    if-ltz v1, :cond_15

    const/16 v10, 0x3e81

    if-lt v1, v10, :cond_1f

    goto/16 :goto_c

    :sswitch_3
    const-string v10, "vc_alias_reev_recharge_energy_elec_driving_distance"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_f

    :cond_1e
    if-ltz v1, :cond_15

    const v10, 0x186a0

    if-lt v1, v10, :cond_1f

    goto/16 :goto_c

    :cond_1f
    :goto_f
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    int-to-float v1, v2

    mul-float v1, v1, v17

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_20
    :goto_10
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v1, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v10, 0xffff

    if-eq v1, v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v10, 0x7fff

    if-ne v1, v10, :cond_21

    goto/16 :goto_0

    :cond_21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    if-ltz v1, :cond_15

    const/16 v10, 0x1ff

    if-lt v1, v10, :cond_22

    goto/16 :goto_c

    :cond_22
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v17

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v12, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_23
    :goto_11
    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_18

    :cond_24
    invoke-static {v1}, Landroidx/constraintlayout/core/SolverVariable$Type$EnumUnboxingSharedUtility;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v18

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_16

    :cond_25
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    move-object/from16 v2, v21

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_15

    :cond_26
    const/4 v2, 0x0

    invoke-static {v0, v4, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_2d

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_14

    :cond_27
    const-string v3, "speed"

    invoke-static {v0, v3, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v0, " km/h"

    goto :goto_17

    :cond_28
    invoke-static {v0, v6, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-nez v3, :cond_2c

    invoke-static {v0, v5, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_13

    :cond_29
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_12

    :cond_2a
    const-string v0, ""

    goto :goto_17

    :cond_2b
    :goto_12
    const-string v0, " kWh/100km"

    goto :goto_17

    :cond_2c
    :goto_13
    const-string v0, " km"

    goto :goto_17

    :cond_2d
    :goto_14
    const-string v0, " min"

    goto :goto_17

    :cond_2e
    :goto_15
    const-string v0, " L/100km"

    goto :goto_17

    :cond_2f
    :goto_16
    const-string v0, " kWh"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_30
    :goto_18
    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x41a22dce -> :sswitch_3
        0x5a3f6bd4 -> :sswitch_2
        0x5c0c9fbd -> :sswitch_1
        0x74a9ddc3 -> :sswitch_0
    .end sparse-switch
.end method

.method public static formatVirtualCarElectricAmountValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    instance-of v0, p1, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    goto/16 :goto_5

    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/math/BigDecimal;

    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    goto/16 :goto_5

    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(J)V

    goto/16 :goto_5

    :cond_2
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/math/BigDecimal;

    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->shortValue()S

    move-result v4

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    goto/16 :goto_5

    :cond_3
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/math/BigDecimal;

    move-object v4, p1

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->byteValue()B

    move-result v4

    invoke-direct {v0, v4}, Ljava/math/BigDecimal;-><init>(I)V

    goto/16 :goto_5

    :cond_4
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_5

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_5

    :cond_6
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_c

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_5

    :cond_9
    instance-of v0, p1, [I

    if-eqz v0, :cond_d

    move-object v0, p1

    check-cast v0, [I

    array-length v4, v0

    if-le v4, v3, :cond_a

    aget v0, v0, v3

    goto :goto_2

    :cond_a
    array-length v4, v0

    if-nez v4, :cond_b

    move v4, v3

    goto :goto_1

    :cond_b
    move v4, v1

    :goto_1
    xor-int/2addr v4, v3

    if-eqz v4, :cond_c

    aget v0, v0, v1

    :goto_2
    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_5

    :cond_c
    move-object v0, v2

    goto :goto_5

    :cond_d
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v4, v0

    const-string v5, "null cannot be cast to non-null type kotlin.Number"

    if-le v4, v3, :cond_e

    aget-object v4, v0, v3

    instance-of v6, v4, Ljava/lang/Number;

    if-eqz v6, :cond_e

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v4, Ljava/lang/Number;

    goto :goto_4

    :cond_e
    array-length v4, v0

    if-nez v4, :cond_f

    move v4, v3

    goto :goto_3

    :cond_f
    move v4, v1

    :goto_3
    xor-int/2addr v4, v3

    if-eqz v4, :cond_c

    aget-object v0, v0, v1

    instance-of v4, v0, Ljava/lang/Number;

    if-eqz v4, :cond_c

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    :goto_5
    if-nez v0, :cond_10

    const-string p0, "--"

    return-object p0

    :cond_10
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_11

    goto/16 :goto_9

    :cond_11
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_12

    goto/16 :goto_9

    :cond_12
    instance-of v4, p1, Ljava/lang/Short;

    if-eqz v4, :cond_13

    goto/16 :goto_9

    :cond_13
    instance-of v4, p1, Ljava/lang/Byte;

    if-eqz v4, :cond_14

    goto/16 :goto_9

    :cond_14
    instance-of v4, p1, [I

    if-eqz v4, :cond_15

    goto/16 :goto_9

    :cond_15
    instance-of v4, p1, Ljava/lang/Float;

    if-eqz v4, :cond_16

    goto :goto_6

    :cond_16
    instance-of v4, p1, Ljava/lang/Double;

    if-eqz v4, :cond_17

    :goto_6
    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-gtz p1, :cond_1e

    goto :goto_9

    :cond_17
    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result p1

    if-gtz p1, :cond_1e

    goto :goto_9

    :cond_18
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_19

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1e

    const-string v2, "."

    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_9

    :cond_19
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_1e

    check-cast p1, [Ljava/lang/Object;

    array-length v4, p1

    if-le v4, v3, :cond_1a

    aget-object v2, p1, v3

    goto :goto_8

    :cond_1a
    array-length v4, p1

    if-nez v4, :cond_1b

    move v4, v3

    goto :goto_7

    :cond_1b
    move v4, v1

    :goto_7
    xor-int/2addr v4, v3

    if-eqz v4, :cond_1c

    aget-object v2, p1, v1

    :cond_1c
    :goto_8
    instance-of p1, v2, Ljava/lang/Integer;

    if-nez p1, :cond_1d

    instance-of p1, v2, Ljava/lang/Long;

    if-nez p1, :cond_1d

    instance-of p1, v2, Ljava/lang/Short;

    if-nez p1, :cond_1d

    instance-of p1, v2, Ljava/lang/Byte;

    if-eqz p1, :cond_1e

    :cond_1d
    :goto_9
    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->ELECTRIC_AMOUNT_SCALE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_1e
    const-string p1, "vc_alias_ev_recharge_energy_elec_driving_power"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->VIRTUAL_CAR_ELECTRIC_AMOUNT_OFFSET:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_a

    :cond_1f
    const-string p1, "vc_alias_ev_recharge_energy_elec_attachment_power"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_a
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result p0

    if-gez p0, :cond_20

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :cond_20
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v3, p0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toPlainString(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static formatVirtualCarTirePressure(F)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v1, 0x7f13046a

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "--"

    return-object p0
.end method

.method public static getRequestCost(Ljava/lang/String;)J
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public static handleAliasValue(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 77

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v4, "vc_alias_reev_this_trip_elec_average_power"

    const-string v5, "vc_alias_journey_supplement_fuel_time"

    const-string v6, "vc_alias_ev_recharge_energy_elec_attachment_power"

    const-string v7, "vc_alias_reev_recharge_energy_fuel_average_fuel"

    const-string v8, "vc_alias_reev_recharge_energy_elec_average_power"

    const-string v9, "vc_alias_reev_this_trip_elec_driving_time"

    const-string v10, "vc_alias_this_journey_average_electric_consumption"

    const-string v11, "vc_alias_reev_this_trip_fuel_driving_time"

    const-string v12, "vc_alias_journey_this_fuel_time"

    const-string v13, "vc_alias_reev_recharge_energy_elec_driving_distance"

    const-string v14, "vc_alias_reev_recharge_energy_elec_driving_time"

    const-string v15, "vc_alias_reev_this_trip_elec_driving_distance"

    const-string v3, "vc_alias_reev_recharge_energy_fuel_driving_distance"

    const-string v2, "vc_alias_ev_recharge_energy_elec_driving_power"

    move-object/from16 v17, v4

    const-string v4, "vc_alias_journey_supplement_energy_time"

    move-object/from16 v18, v5

    const-string v5, "vc_alias_this_journey_average_oil_consumption"

    move-object/from16 v19, v6

    const-string v6, "vc_alias_reev_this_trip_fuel_driving_distance"

    move-object/from16 v20, v7

    const-string v7, "vc_alias_reev_recharge_energy_fuel_driving_time"

    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_2
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_b
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v76, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v76

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v76, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v76

    goto :goto_2

    :sswitch_f
    move-object/from16 v76, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    move-object/from16 v19, v76

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v76, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v76

    goto :goto_2

    :sswitch_10
    move-object/from16 v76, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v76

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object/from16 v76, v17

    move-object/from16 v17, v2

    move-object/from16 v2, v76

    goto :goto_2

    :sswitch_11
    move-object/from16 v76, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v76

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    :goto_1
    move-object/from16 v76, v20

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v76

    :goto_2
    if-nez p2, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarProtectedAliases:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    sub-long v23, v23, v21

    const-wide/16 v21, 0x4e20

    cmp-long v0, v23, v21

    if-gtz v0, :cond_4

    return-void

    :cond_4
    :goto_3
    move-object/from16 v21, v2

    const-string v2, "vc_alias_vehicle_speed"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v26, v2

    if-eqz v0, :cond_b

    move-object/from16 v2, p1

    move-object/from16 v76, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v76

    if-nez v2, :cond_6

    :cond_5
    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v9, v25

    goto :goto_6

    :cond_6
    instance-of v0, v2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    move-object v0, v2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v27

    goto :goto_4

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    :goto_4
    cmpg-double v0, v27, v22

    if-gtz v0, :cond_8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    goto :goto_5

    :cond_8
    move-object/from16 v29, v9

    move-object/from16 v30, v10

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v0, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    move-object v9, v0

    :goto_6
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v10, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentDrivingSpeedKmh:Ljava/lang/Integer;

    if-nez v10, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_a

    goto :goto_9

    :cond_a
    :goto_7
    sput-object v9, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentDrivingSpeedKmh:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onSpeedChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    :try_start_0
    sget v27, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v0, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    sget v27, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    goto :goto_8

    :cond_b
    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v2, p1

    move-object/from16 v76, v20

    move-object/from16 v20, v8

    move-object/from16 v8, v76

    :cond_c
    :goto_9
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object v9, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    iget-object v10, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    move-object/from16 v27, v11

    iget-object v11, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    move-object/from16 v28, v12

    iget-object v12, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->temperatureLeft:Ljava/lang/String;

    move-object/from16 v65, v13

    iget-object v13, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->temperatureRight:Ljava/lang/String;

    iget-object v2, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    move-object/from16 v66, v14

    iget-object v14, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    move-object/from16 v67, v15

    iget-object v15, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    move-object/from16 v68, v3

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    move-object/from16 v69, v8

    iget-object v8, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    move-object/from16 v70, v4

    iget-object v4, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    move-object/from16 v71, v5

    iget-object v5, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    move-object/from16 v72, v6

    iget-object v6, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    move-object/from16 v73, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    move-object/from16 v46, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    move-object/from16 v47, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    move-object/from16 v48, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    move-object/from16 v49, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    move-object/from16 v50, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    move-object/from16 v51, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    move-object/from16 v52, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    move-object/from16 v53, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    move-object/from16 v54, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->speed:Ljava/lang/String;

    move-object/from16 v55, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    move-object/from16 v56, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    move-object/from16 v57, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    move-object/from16 v58, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    move-object/from16 v59, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    move-object/from16 v60, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    move-object/from16 v61, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    move-object/from16 v62, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    move-object/from16 v63, v7

    iget-object v7, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    move-object/from16 v74, v0

    new-instance v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    move-object/from16 v31, v0

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move-object/from16 v35, v12

    move-object/from16 v36, v13

    move-object/from16 v37, v2

    move-object/from16 v38, v14

    move-object/from16 v39, v15

    move-object/from16 v40, v3

    move-object/from16 v41, v8

    move-object/from16 v42, v4

    move-object/from16 v43, v5

    move-object/from16 v44, v6

    move-object/from16 v45, v1

    move-object/from16 v64, v7

    invoke-direct/range {v31 .. v64}, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v74

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcMode:Ljava/lang/Integer;

    iput-object v2, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcMode:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcModeName:Ljava/lang/String;

    iput-object v2, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcModeName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "vc_alias_drive_style"

    const-string v4, "vc_alias_door_trunk_pos"

    const-string v5, "vc_alias_ac_internal_temp"

    const-string v6, "vc_alias_journey_all_distance"

    const-string v7, "vc_alias_door_pos_front_right"

    const-string v8, "vc_alias_tire_pressure"

    const-string v9, "vc_alias_left_ev_dte"

    const-string v10, "vc_alias_door_pos_back_right"

    const-string v11, "vc_alias_door_pos_back_left"

    const-string v12, "vc_alias_e_dte"

    const-string v14, "vc_alias_door_pos_front_left"

    const-string v13, "vc_alias_vehicle_gear"

    const-string v15, "vc_alias_disp_dte"

    move-object/from16 v33, v0

    const-string v0, "--"

    sparse-switch v2, :sswitch_data_1

    move-object/from16 v2, p0

    move-object/from16 v35, v3

    :goto_a
    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    :goto_b
    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    :goto_c
    move-object/from16 v28, v10

    move-object/from16 v20, v17

    move-object/from16 v19, v18

    :cond_d
    :goto_d
    move-object/from16 v10, v21

    goto/16 :goto_4c

    :sswitch_12
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v3, v73

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_e
    move-object/from16 v73, v3

    goto :goto_a

    :cond_e
    move-object/from16 v73, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v14, v17

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v28, v10

    move-object/from16 v10, v18

    goto/16 :goto_40

    :sswitch_13
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_e

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatDoorStatus(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    goto :goto_e

    :sswitch_14
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v72

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    :goto_f
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v72, v14

    goto :goto_b

    :cond_10
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    goto :goto_f

    :sswitch_15
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v71

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v71, v14

    goto/16 :goto_b

    :cond_11
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    goto :goto_10

    :sswitch_16
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v70

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v70, v14

    goto/16 :goto_b

    :cond_12
    move-object/from16 v70, v14

    move-object/from16 v14, v66

    goto/16 :goto_19

    :sswitch_17
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v69

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :goto_11
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v69, v14

    goto/16 :goto_b

    :cond_13
    if-eqz p2, :cond_14

    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarElectricAmountValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_14
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_12
    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    goto :goto_11

    :sswitch_18
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v69

    move-object/from16 v3, v73

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_11

    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->extractValidDte(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v69, v14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    iget-object v14, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    if-eqz v14, :cond_16

    invoke-static {v14}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_16

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_13

    :cond_16
    move/from16 v14, v24

    :goto_13
    sub-int/2addr v0, v14

    if-gez v0, :cond_17

    goto :goto_14

    :cond_17
    move/from16 v24, v0

    :goto_14
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    goto :goto_15

    :cond_18
    move-object/from16 v69, v14

    :goto_15
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    goto/16 :goto_b

    :sswitch_19
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v68

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :goto_16
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v68, v14

    goto/16 :goto_b

    :cond_19
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    goto :goto_16

    :sswitch_1a
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v67

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :goto_17
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v67, v14

    goto/16 :goto_b

    :cond_1a
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    goto :goto_17

    :sswitch_1b
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v66

    move-object/from16 v3, v73

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    :goto_18
    move-object/from16 v73, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v66, v14

    goto/16 :goto_b

    :cond_1b
    :goto_19
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    goto :goto_18

    :sswitch_1c
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v36, v14

    move-object/from16 v14, v66

    move-object/from16 v3, v73

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1c

    goto :goto_18

    :cond_1c
    move-object/from16 v73, v3

    move-object/from16 v66, v14

    move-object/from16 v14, p1

    instance-of v3, v14, Ljava/lang/String;

    if-eqz v3, :cond_1f

    move-object v3, v14

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v22

    if-nez v22, :cond_1e

    invoke-static {v3}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v37, v4

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    goto :goto_1a

    :cond_1d
    move-object/from16 v22, v25

    goto :goto_1a

    :cond_1e
    move-object/from16 v37, v4

    goto :goto_1a

    :cond_1f
    move-object/from16 v37, v4

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v22

    :goto_1a
    if-eqz v22, :cond_24

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_23

    const/4 v4, 0x1

    if-eq v3, v4, :cond_22

    const/4 v4, 0x2

    if-eq v3, v4, :cond_21

    const/4 v4, 0x3

    if-eq v3, v4, :cond_20

    const/4 v4, 0x4

    if-eq v3, v4, :cond_23

    const/16 v4, 0x8

    if-eq v3, v4, :cond_20

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_20
    const-string v3, "D"

    goto :goto_1b

    :cond_21
    const-string v3, "R"

    goto :goto_1b

    :cond_22
    const-string v3, "N"

    goto :goto_1b

    :cond_23
    const-string v3, "P"

    :goto_1b
    if-nez v3, :cond_25

    :cond_24
    move-object v3, v0

    :cond_25
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    iget-object v4, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    if-eqz v4, :cond_27

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_1c

    :cond_26
    iget-object v4, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    move-object/from16 v3, v25

    :cond_27
    :goto_1c
    if-eqz v3, :cond_28

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    :cond_28
    :goto_1d
    move-object/from16 v39, v8

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v75, v37

    goto/16 :goto_c

    :sswitch_1d
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v14, p1

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_1d

    :cond_29
    move-object/from16 v38, v28

    move-object/from16 v3, v65

    move-object/from16 v28, v10

    goto/16 :goto_28

    :sswitch_1e
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    :goto_1e
    move-object/from16 v65, v3

    goto :goto_1d

    :cond_2a
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    goto :goto_1e

    :sswitch_1f
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_1e

    :cond_2b
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatDoorStatus(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    goto :goto_1e

    :sswitch_20
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    :goto_1f
    move-object/from16 v65, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v8

    move-object/from16 v28, v10

    :goto_20
    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    move-object/from16 v3, v29

    :goto_21
    move-object/from16 v75, v37

    move-object/from16 v20, v17

    :goto_22
    move-object/from16 v19, v18

    goto/16 :goto_4c

    :cond_2c
    move-object/from16 v28, v10

    move-object/from16 v10, v27

    goto :goto_24

    :sswitch_21
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_1f

    :cond_2d
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatDoorStatus(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    goto :goto_1f

    :sswitch_22
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    move-object/from16 v10, v27

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    :goto_23
    move-object/from16 v65, v3

    move-object/from16 v38, v4

    move-object/from16 v39, v8

    move-object/from16 v27, v10

    goto :goto_20

    :cond_2e
    :goto_24
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    goto :goto_23

    :sswitch_23
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    move-object/from16 v10, v30

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v38, v4

    move-object/from16 v39, v8

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    move-object/from16 v3, v29

    move-object/from16 v75, v37

    move-object/from16 v20, v17

    move-object/from16 v19, v18

    if-nez v0, :cond_71

    goto/16 :goto_4c

    :sswitch_24
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v4, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    const-string v10, "vc_alias_power_range_calc_mode"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2f

    move-object/from16 v65, v3

    move-object/from16 v38, v4

    :goto_25
    move-object/from16 v39, v8

    goto/16 :goto_20

    :cond_2f
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v38, v4

    if-eqz v10, :cond_32

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput-object v10, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcMode:Ljava/lang/Integer;

    const/4 v10, 0x1

    if-eq v4, v10, :cond_31

    const/4 v10, 0x2

    if-eq v4, v10, :cond_30

    goto :goto_26

    :cond_30
    const-string v0, "WLTC"

    goto :goto_26

    :cond_31
    const-string v0, "CLTC"

    :goto_26
    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcModeName:Ljava/lang/String;

    :cond_32
    :goto_27
    move-object/from16 v65, v3

    goto :goto_25

    :sswitch_25
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v38, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_27

    :cond_33
    :goto_28
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->extractValidDte(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    iget-object v4, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    if-eqz v4, :cond_34

    invoke-static {v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    :cond_34
    if-eqz v25, :cond_32

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v0

    if-gez v4, :cond_35

    goto :goto_29

    :cond_35
    move/from16 v24, v4

    :goto_29
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    goto :goto_27

    :sswitch_26
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v36, v14

    move-object/from16 v38, v28

    move-object/from16 v3, v65

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_27

    :cond_36
    if-eqz p2, :cond_40

    instance-of v0, v14, [F

    if-eqz v0, :cond_37

    move-object/from16 v25, v14

    check-cast v25, [F

    move-object/from16 v65, v3

    move-object/from16 v39, v8

    goto :goto_2d

    :cond_37
    instance-of v0, v14, [D

    if-eqz v0, :cond_39

    move-object v0, v14

    check-cast v0, [D

    array-length v4, v0

    new-array v10, v4, [F

    move-object/from16 v39, v8

    move/from16 v8, v24

    :goto_2a
    move-object/from16 v65, v3

    if-ge v8, v4, :cond_38

    move/from16 v22, v4

    aget-wide v3, v0, v8

    double-to-float v3, v3

    aput v3, v10, v8

    const/4 v3, 0x1

    add-int/2addr v8, v3

    move/from16 v4, v22

    move-object/from16 v3, v65

    goto :goto_2a

    :cond_38
    move-object/from16 v25, v10

    goto :goto_2d

    :cond_39
    move-object/from16 v65, v3

    move-object/from16 v39, v8

    instance-of v0, v14, [Ljava/lang/Object;

    if-eqz v0, :cond_3b

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    new-array v3, v3, [F

    array-length v4, v0

    move/from16 v8, v24

    :goto_2b
    if-ge v8, v4, :cond_3d

    aget-object v10, v0, v8

    move-object/from16 p2, v0

    instance-of v0, v10, Ljava/lang/Number;

    if-eqz v0, :cond_3a

    check-cast v10, Ljava/lang/Number;

    goto :goto_2c

    :cond_3a
    move-object/from16 v10, v25

    :goto_2c
    if-nez v10, :cond_3c

    :cond_3b
    :goto_2d
    move-object/from16 v0, v25

    goto :goto_2e

    :cond_3c
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v0

    aput v0, v3, v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    move-object/from16 v0, p2

    goto :goto_2b

    :cond_3d
    move-object/from16 v25, v3

    goto :goto_2d

    :goto_2e
    if-nez v0, :cond_3e

    goto/16 :goto_20

    :cond_3e
    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3f

    goto/16 :goto_20

    :cond_3f
    aget v3, v0, v24

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarTirePressure(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarTirePressure(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarTirePressure(F)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarTirePressure(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    goto/16 :goto_20

    :cond_40
    move-object/from16 v65, v3

    move-object/from16 v39, v8

    instance-of v0, v14, [I

    if-eqz v0, :cond_41

    move-object/from16 v25, v14

    check-cast v25, [I

    goto :goto_31

    :cond_41
    instance-of v0, v14, [Ljava/lang/Object;

    if-eqz v0, :cond_43

    move-object v0, v14

    check-cast v0, [Ljava/lang/Object;

    array-length v3, v0

    new-array v3, v3, [I

    array-length v4, v0

    move/from16 v8, v24

    :goto_2f
    if-ge v8, v4, :cond_45

    aget-object v10, v0, v8

    move-object/from16 p2, v0

    instance-of v0, v10, Ljava/lang/Number;

    if-eqz v0, :cond_42

    check-cast v10, Ljava/lang/Number;

    goto :goto_30

    :cond_42
    move-object/from16 v10, v25

    :goto_30
    if-nez v10, :cond_44

    :cond_43
    :goto_31
    move-object/from16 v0, v25

    goto :goto_32

    :cond_44
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v3, v8

    const/4 v10, 0x1

    add-int/2addr v8, v10

    move-object/from16 v0, p2

    goto :goto_2f

    :cond_45
    move-object/from16 v25, v3

    goto :goto_31

    :goto_32
    if-nez v0, :cond_46

    goto/16 :goto_20

    :cond_46
    array-length v3, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_47

    goto/16 :goto_20

    :cond_47
    aget v3, v0, v24

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatSingleTirePressure(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatSingleTirePressure(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatSingleTirePressure(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    const/4 v3, 0x3

    aget v0, v0, v3

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatSingleTirePressure(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    goto/16 :goto_20

    :sswitch_27
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    :goto_33
    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v10, v21

    goto/16 :goto_21

    :cond_48
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    goto :goto_33

    :sswitch_28
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    :goto_34
    move-object/from16 v20, v17

    move-object/from16 v8, v19

    move-object/from16 v10, v21

    move-object/from16 v75, v37

    goto/16 :goto_22

    :cond_49
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    goto :goto_34

    :sswitch_29
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_34

    :cond_4a
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatDoorStatus(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    goto :goto_34

    :sswitch_2a
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_4b
    :goto_35
    move-object/from16 v20, v17

    move-object/from16 v19, v18

    :goto_36
    move-object/from16 v10, v21

    move-object/from16 v75, v37

    goto/16 :goto_4c

    :cond_4c
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    goto :goto_35

    :sswitch_2b
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4d

    goto :goto_35

    :cond_4d
    if-eqz p2, :cond_51

    instance-of v10, v14, Ljava/lang/Number;

    if-eqz v10, :cond_4e

    move-object v10, v14

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto :goto_37

    :cond_4e
    if-eqz v14, :cond_4f

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4f

    invoke-static {v10}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toDoubleOrNull(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    :cond_4f
    :goto_37
    if-eqz v25, :cond_52

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v10

    if-nez v10, :cond_52

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-nez v10, :cond_52

    cmpg-double v10, v19, v22

    if-gez v10, :cond_50

    goto :goto_38

    :cond_50
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array/range {v25 .. v25}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v10, 0x1

    invoke-static {v0, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v10, "%.1f km"

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_51
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_52
    :goto_38
    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    goto :goto_35

    :sswitch_2c
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v14, p1

    move-object/from16 v28, v10

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_53

    goto/16 :goto_35

    :cond_53
    if-eqz v14, :cond_54

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_39

    :cond_54
    move-object/from16 v10, v25

    :goto_39
    if-eqz v10, :cond_59

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_59

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_55

    goto :goto_3a

    :cond_55
    move-object/from16 v10, v25

    :goto_3a
    if-nez v10, :cond_56

    goto :goto_3b

    :cond_56
    const-string v14, "\u2103"

    invoke-static {v14, v10}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "\u00b0C"

    invoke-static {v14, v10}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "\u00b0c"

    invoke-static {v14, v10}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_57

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_57
    move-object/from16 v10, v25

    :cond_58
    if-nez v10, :cond_5a

    :cond_59
    :goto_3b
    move-object/from16 v0, v25

    goto :goto_3c

    :cond_5a
    invoke-static {v10}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toBigDecimalOrNull(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    if-nez v0, :cond_5b

    const-string v0, ".0"

    invoke-static {v0, v10}, Lkotlin/text/StringsKt__StringsKt;->removeSuffix(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    goto :goto_3b

    :cond_5b
    sget-object v10, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    const/4 v14, 0x1

    invoke-virtual {v0, v14, v10}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v25

    goto :goto_3b

    :goto_3c
    if-eqz v0, :cond_4b

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    goto/16 :goto_35

    :sswitch_2d
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v28, v10

    move-object/from16 v10, v18

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    :goto_3d
    move-object/from16 v19, v10

    move-object/from16 v20, v17

    goto/16 :goto_36

    :cond_5c
    if-eqz p2, :cond_5d

    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatVirtualCarElectricAmountValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_5d
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    goto :goto_3d

    :sswitch_2e
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v37, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v14, v17

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v28, v10

    move-object/from16 v10, v18

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    :goto_3f
    move-object/from16 v19, v10

    move-object/from16 v20, v14

    goto/16 :goto_36

    :cond_5e
    :goto_40
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    goto :goto_3f

    :sswitch_2f
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object v0, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v14, v17

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v28, v10

    move-object/from16 v10, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5f

    move-object/from16 v75, v0

    move-object/from16 v19, v10

    move-object/from16 v20, v14

    goto/16 :goto_d

    :cond_5f
    const-string v17, ""

    const-string v18, "On"

    const-string v19, "Off"

    if-eqz p2, :cond_63

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v37, v0

    if-eqz v20, :cond_61

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v20, v14

    const/4 v14, 0x1

    if-eq v0, v14, :cond_60

    :goto_41
    move-object/from16 v17, v19

    goto :goto_42

    :cond_60
    move-object/from16 v17, v18

    goto :goto_42

    :cond_61
    move-object/from16 v20, v14

    :cond_62
    :goto_42
    move-object/from16 v0, v17

    goto :goto_43

    :cond_63
    move-object/from16 v37, v0

    move-object/from16 v20, v14

    const/4 v14, 0x1

    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v14, :cond_60

    goto :goto_41

    :goto_43
    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    move-object/from16 v19, v10

    goto/16 :goto_36

    :sswitch_30
    move-object/from16 v2, p0

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object v14, v3

    move-object/from16 v28, v10

    move-object/from16 v20, v17

    move-object/from16 v10, v18

    move-object/from16 v3, v29

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_64

    move-object/from16 v19, v10

    move-object/from16 v35, v14

    goto/16 :goto_d

    :cond_64
    invoke-static/range {p1 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatPhevDriveStyle(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v18

    if-nez v18, :cond_6e

    if-nez v17, :cond_65

    goto :goto_44

    :cond_65
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-nez v18, :cond_66

    const-string v16, "Custom"

    move-object/from16 v19, v10

    move-object/from16 v35, v14

    move-object/from16 v18, v16

    goto :goto_49

    :cond_66
    :goto_44
    if-nez v17, :cond_67

    move-object/from16 v19, v10

    move-object/from16 v35, v14

    goto :goto_46

    :cond_67
    move-object/from16 v35, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v19, v10

    const/4 v10, 0x1

    if-ne v14, v10, :cond_69

    const-string v10, "Comfort"

    :cond_68
    :goto_45
    move-object/from16 v18, v10

    goto :goto_49

    :cond_69
    :goto_46
    if-nez v17, :cond_6a

    goto :goto_47

    :cond_6a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v14, 0x2

    if-ne v10, v14, :cond_6b

    const-string v10, "Sport"

    goto :goto_45

    :cond_6b
    :goto_47
    if-nez v17, :cond_6c

    goto :goto_48

    :cond_6c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v14, 0x3

    if-ne v10, v14, :cond_6d

    const-string v10, "Eco"

    goto :goto_45

    :cond_6d
    :goto_48
    invoke-static/range {v17 .. v17}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatPhevDriveStyle(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_68

    move-object/from16 v18, v0

    :goto_49
    move-object/from16 v10, v18

    goto :goto_4a

    :cond_6e
    move-object/from16 v19, v10

    move-object/from16 v35, v14

    goto :goto_49

    :goto_4a
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_70

    iget-object v14, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    if-eqz v14, :cond_70

    invoke-static {v14}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6f

    goto :goto_4b

    :cond_6f
    iget-object v14, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    move-object/from16 v10, v25

    :cond_70
    :goto_4b
    if-eqz v10, :cond_d

    iput-object v10, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    goto/16 :goto_d

    :sswitch_31
    move-object/from16 v2, p0

    move-object/from16 v35, v3

    move-object/from16 v75, v4

    move-object/from16 v39, v8

    move-object/from16 v36, v14

    move-object/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v38, v28

    move-object/from16 v3, v29

    move-object/from16 v28, v10

    move-object/from16 v20, v17

    move-object/from16 v19, v18

    move-object/from16 v10, v21

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_71
    invoke-static/range {p0 .. p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatValueWithUnit(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    :cond_72
    :goto_4c
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    move-object/from16 v1, v33

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_74

    iget-object v14, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    move-object/from16 v17, v10

    iget-object v10, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    iget-object v10, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcMode:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcMode:Ljava/lang/Integer;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_75

    iget-object v10, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcModeName:Ljava/lang/String;

    iget-object v14, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->rangeCalcModeName:Ljava/lang/String;

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_73

    goto :goto_4d

    :cond_73
    return-void

    :cond_74
    move-object/from16 v17, v10

    :cond_75
    :goto_4d
    sget-object v10, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->criticalStatusAliases:[Ljava/lang/String;

    invoke-static {v2, v10}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_76

    move-object/from16 v10, v26

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_77

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_77

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_78

    goto :goto_4e

    :cond_76
    move-object/from16 v10, v26

    :cond_77
    :goto_4e
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_78
    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-direct {v14}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_2

    goto/16 :goto_4f

    :sswitch_32
    move-object/from16 v3, v73

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto/16 :goto_4f

    :sswitch_33
    move-object/from16 v3, v36

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    goto/16 :goto_4f

    :cond_79
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_FRONT_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_34
    move-object/from16 v3, v72

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    goto/16 :goto_4f

    :cond_7a
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelDistance:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_FUEL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_35
    move-object/from16 v3, v71

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7b

    goto/16 :goto_4f

    :cond_7b
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgFuel:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_AVG_FUEL:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_36
    move-object/from16 v3, v70

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    goto/16 :goto_4f

    :sswitch_37
    move-object/from16 v3, v69

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7c

    goto/16 :goto_4f

    :cond_7c
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_DRIVING_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_38
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_4f

    :sswitch_39
    move-object/from16 v3, v68

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7d

    goto/16 :goto_4f

    :cond_7d
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_FUEL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_3a
    move-object/from16 v3, v67

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7e

    goto/16 :goto_4f

    :cond_7e
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisDistance:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_3b
    move-object/from16 v3, v66

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    goto/16 :goto_4f

    :cond_7f
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_3c
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    goto/16 :goto_4f

    :cond_80
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->GEAR_MODE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_3d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_4f

    :sswitch_3e
    move-object/from16 v3, v65

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    goto/16 :goto_4f

    :cond_81
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_3f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    goto/16 :goto_4f

    :cond_82
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_REAR_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_40
    move-object/from16 v3, v38

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    goto/16 :goto_4f

    :sswitch_41
    move-object/from16 v3, v28

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_83

    goto/16 :goto_4f

    :cond_83
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_REAR_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_42
    move-object/from16 v3, v27

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    goto/16 :goto_4f

    :cond_84
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisFuelTime:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_FUEL_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_43
    move-object/from16 v3, v30

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    goto/16 :goto_4f

    :sswitch_44
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_85

    goto/16 :goto_4f

    :cond_85
    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalRemainRange:Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TOTAL_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->socRemainRange:Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SOC_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->oilRemainRange:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->OIL_REMAIN_RANGE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_45
    move-object/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto/16 :goto_4f

    :cond_86
    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontLeft:Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureFrontRight:Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_FRONT_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    iget-object v3, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearLeft:Ljava/lang/String;

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_LEFT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v2, v3, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->tirePressureRearRight:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TIRE_REAR_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    goto/16 :goto_4f

    :cond_87
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisTime:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_47
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_88

    goto/16 :goto_4f

    :cond_88
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_AVG_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_48
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    goto/16 :goto_4f

    :cond_89
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_FRONT_RIGHT:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_49
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8a

    goto/16 :goto_4f

    :cond_8a
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_AVG_FUEL:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_4a
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    goto/16 :goto_4f

    :cond_8b
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->totalDistance:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->TOTAL_DISTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_4b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8c

    goto/16 :goto_4f

    :cond_8c
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->INSIDE_TEMPERATURE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto/16 :goto_4f

    :sswitch_4c
    move-object/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8d

    goto/16 :goto_4f

    :cond_8d
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_ATTACHMENT_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto :goto_4f

    :sswitch_4d
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8e

    goto :goto_4f

    :cond_8e
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->speed:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->speed:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SPEED:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto :goto_4f

    :sswitch_4e
    move-object/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8f

    goto :goto_4f

    :cond_8f
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->SUP_FUEL_TIME:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto :goto_4f

    :sswitch_4f
    move-object/from16 v3, v75

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    goto :goto_4f

    :cond_90
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DOOR_TRUNK:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto :goto_4f

    :sswitch_50
    move-object/from16 v3, v35

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_91

    goto :goto_4f

    :cond_91
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->DRIVE_STYLE:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    goto :goto_4f

    :sswitch_51
    move-object/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    :cond_92
    iget-object v1, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->thisAvgElec:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->THIS_AVG_ELEC:Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    invoke-static {v14, v1, v0, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->addUiFieldIfChanged(Ljava/util/LinkedHashSet;Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;)V

    :cond_93
    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastRefreshAt:J

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_94

    goto :goto_50

    :cond_94
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pendingChangedFields:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->infoDispatchRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    invoke-static {v14}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->notifyListeners(Ljava/util/Set;)V

    :goto_50
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7fde68a4 -> :sswitch_11
        -0x40dba6d0 -> :sswitch_10
        -0x344fafa9 -> :sswitch_f
        -0x1b7c0318 -> :sswitch_e
        -0x16bb585e -> :sswitch_d
        0x1b4fa2c -> :sswitch_c
        0x1e91ccba -> :sswitch_b
        0x314bbb9b -> :sswitch_a
        0x339894d5 -> :sswitch_9
        0x41a22dce -> :sswitch_8
        0x4f6bc926 -> :sswitch_7
        0x5a3f6bd4 -> :sswitch_6
        0x5c0c9fbd -> :sswitch_5
        0x5d8babdf -> :sswitch_4
        0x6303851e -> :sswitch_3
        0x7424c6cd -> :sswitch_2
        0x74a9ddc3 -> :sswitch_1
        0x7f028a95 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7fde68a4 -> :sswitch_31
        -0x6b4631c5 -> :sswitch_30
        -0x6476a5e7 -> :sswitch_2f
        -0x40dba6d0 -> :sswitch_2e
        -0x344fafa9 -> :sswitch_2d
        -0x29b74d66 -> :sswitch_2c
        -0x260029ad -> :sswitch_2b
        -0x1b7c0318 -> :sswitch_2a
        -0x170b7415 -> :sswitch_29
        -0x16bb585e -> :sswitch_28
        0x1b4fa2c -> :sswitch_27
        0x1123e8fb -> :sswitch_26
        0x148d1bfe -> :sswitch_25
        0x1aaad650 -> :sswitch_24
        0x1e91ccba -> :sswitch_23
        0x314bbb9b -> :sswitch_22
        0x316094bf -> :sswitch_21
        0x339894d5 -> :sswitch_20
        0x3b636d04 -> :sswitch_1f
        0x41a22dce -> :sswitch_1e
        0x451ec9ba -> :sswitch_1d
        0x48780b23 -> :sswitch_1c
        0x4f6bc926 -> :sswitch_1b
        0x5a3f6bd4 -> :sswitch_1a
        0x5c0c9fbd -> :sswitch_19
        0x5c516699 -> :sswitch_18
        0x5d8babdf -> :sswitch_17
        0x6303851e -> :sswitch_16
        0x7424c6cd -> :sswitch_15
        0x74a9ddc3 -> :sswitch_14
        0x7b1de058 -> :sswitch_13
        0x7f028a95 -> :sswitch_12
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x7fde68a4 -> :sswitch_51
        -0x6b4631c5 -> :sswitch_50
        -0x6476a5e7 -> :sswitch_4f
        -0x40dba6d0 -> :sswitch_4e
        -0x38c87ecd -> :sswitch_4d
        -0x344fafa9 -> :sswitch_4c
        -0x29b74d66 -> :sswitch_4b
        -0x260029ad -> :sswitch_4a
        -0x1b7c0318 -> :sswitch_49
        -0x170b7415 -> :sswitch_48
        -0x16bb585e -> :sswitch_47
        0x1b4fa2c -> :sswitch_46
        0x1123e8fb -> :sswitch_45
        0x148d1bfe -> :sswitch_44
        0x1e91ccba -> :sswitch_43
        0x314bbb9b -> :sswitch_42
        0x316094bf -> :sswitch_41
        0x339894d5 -> :sswitch_40
        0x3b636d04 -> :sswitch_3f
        0x41a22dce -> :sswitch_3e
        0x451ec9ba -> :sswitch_3d
        0x48780b23 -> :sswitch_3c
        0x4f6bc926 -> :sswitch_3b
        0x5a3f6bd4 -> :sswitch_3a
        0x5c0c9fbd -> :sswitch_39
        0x5c516699 -> :sswitch_38
        0x5d8babdf -> :sswitch_37
        0x6303851e -> :sswitch_36
        0x7424c6cd -> :sswitch_35
        0x74a9ddc3 -> :sswitch_34
        0x7b1de058 -> :sswitch_33
        0x7f028a95 -> :sswitch_32
    .end sparse-switch
.end method

.method public static handleResultModel(Lcom/tinnove/polymericservice/base/model/WTResultModel;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastEventAt:J

    iget-object p0, p0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/util/Map;

    const-string v0, "result_params_alias"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "vc_alias_discharge_max_power"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "CarAdasEventCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p0, Ljava/util/Map;

    const-string v0, "result_params_value"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->notifyPsAliasChanged(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    sget-object p2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->psOnlyAliases:[Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->getRequestCost(Ljava/lang/String;)J

    new-instance p2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->getRequestCost(Ljava/lang/String;)J

    new-instance p2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    invoke-static {p2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_6
    :goto_3
    return-void
.end method

.method public static handleSystemHvacState(Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;)V
    .locals 27

    move-object/from16 v1, p0

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sput-wide v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastSystemHvacAt:J

    iget v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    iget-boolean v2, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    iget-boolean v3, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    iget-boolean v4, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-gtz v0, :cond_1

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    :cond_1
    iget v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_3

    if-ne v5, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentAirRecycleMode:Ljava/lang/Integer;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_5

    sget-object v6, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getAirRecycleMode()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_1
    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->currentAirRecycleMode:Ljava/lang/Integer;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    new-instance v6, Lcom/deepalhome/launcher/util/CarS05InfoUtil$updateAirRecycleMode$1;

    invoke-direct {v6, v5}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$updateAirRecycleMode$1;-><init>(I)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/ConfigManager;->updateCarInfo(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onAirRecycleChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/jvm/functions/Function1;

    new-instance v7, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;

    const/4 v8, 0x3

    invoke-direct {v7, v5, v8, v6}, Lcom/deepalhome/launcher/app/AppCenterView$$ExternalSyntheticLambda1;-><init>(IILjava/lang/Object;)V

    invoke-static {v7}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    :goto_3
    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    const/4 v5, 0x0

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    if-nez v0, :cond_8

    iget v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    if-gtz v0, :cond_8

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    move v6, v5

    goto :goto_5

    :cond_8
    :goto_4
    move v6, v4

    :goto_5
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v9

    const-string v7, "0"

    if-eqz v6, :cond_9

    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_6

    :cond_9
    move-object v8, v7

    :goto_6
    if-eqz v6, :cond_a

    iget v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    const/16 v10, 0x8

    invoke-static {v0, v5, v10}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_7

    :cond_a
    move-object v12, v7

    :goto_7
    const-string v0, "getColdHeatVentMode"

    sget-object v10, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    if-nez v10, :cond_c

    :cond_b
    :goto_8
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    :try_start_0
    const-string v11, "action"

    new-instance v13, Lkotlin/Pair;

    invoke-direct {v13, v11, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v13}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    sget-object v11, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v11, 0x44e

    const/16 v13, 0xbbb

    invoke-static {v11, v13, v0}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    move-result-object v0

    check-cast v10, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {v10, v0}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v10, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    :goto_9
    const-string v11, "000000"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_8

    :cond_e
    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    goto :goto_8

    :goto_a
    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->normalizeFrontAirModeRaw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b

    :cond_f
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_10
    const/4 v0, 0x0

    :goto_c
    const-string v10, "3"

    const-string v11, "2"

    const-string v13, "1"

    const-string v14, "4"

    if-nez v6, :cond_11

    move-object/from16 v24, v0

    move/from16 v23, v6

    move-object v0, v7

    move-object/from16 v22, v0

    :goto_d
    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v20, v12

    goto/16 :goto_12

    :cond_11
    iget-boolean v15, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    if-eqz v15, :cond_12

    move-object/from16 v24, v0

    move/from16 v23, v6

    move-object/from16 v22, v7

    move-object/from16 v21, v8

    move-object/from16 v19, v9

    move-object v2, v10

    move-object v3, v11

    move-object/from16 v20, v12

    move-object v0, v14

    goto/16 :goto_12

    :cond_12
    filled-new-array {v13, v11, v10, v14}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v15

    invoke-static {v15, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    move-object/from16 v24, v0

    :goto_e
    move/from16 v23, v6

    move-object/from16 v22, v7

    goto :goto_d

    :cond_13
    filled-new-array {v13, v11, v10}, [Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v15

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cachedFrontAirModeRaw:Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cachedFrontAirModeRaw:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v2

    goto :goto_e

    :cond_14
    sget-object v2, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v15

    const-string v3, "getApp(...)"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x2000075

    invoke-static {v15, v2, v5}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeAirMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x2000006

    invoke-static {v15, v4, v5}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeAirMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    const/16 v4, 0xf

    invoke-static {v15, v2, v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeAirMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v20, v12

    const v12, 0x2000006

    invoke-static {v15, v12, v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getIntProperty(Landroid/app/Application;II)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->normalizeAirMode(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v3, :cond_17

    if-nez v5, :cond_16

    if-nez v2, :cond_15

    move-object v12, v4

    goto :goto_f

    :cond_15
    move-object v12, v2

    goto :goto_f

    :cond_16
    move-object v12, v5

    goto :goto_f

    :cond_17
    move-object v12, v3

    :goto_f
    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v9

    const-string v9, "getAirMode result="

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " frontNone="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v8

    const-string v8, " commonNone="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v22, v7

    const-string v7, " frontArea="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v23, v6

    const-string v6, " commonArea="

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v24, v0

    const-string v0, "S05CarControlHelper"

    invoke-static {v0, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v15, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    move-object/from16 v25, v10

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v26, v11

    const-string v11, "[S05-CTRL] getAirMode result="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_11

    :cond_18
    :goto_10
    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_12

    :cond_19
    :goto_11
    iget-boolean v0, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    if-eqz v0, :cond_1a

    move-object v0, v13

    goto :goto_10

    :cond_1a
    move-object/from16 v0, v22

    goto :goto_10

    :goto_12
    filled-new-array {v13, v3, v2, v14}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    move-object/from16 v5, v24

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sput-object v5, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cachedFrontAirModeRaw:Ljava/lang/String;

    goto :goto_13

    :cond_1b
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sput-object v14, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cachedFrontAirModeRaw:Ljava/lang/String;

    :cond_1c
    :goto_13
    sget-object v7, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    iget v4, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatS05Temperature(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget v4, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatS05Temperature(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v23, :cond_1d

    iget v4, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1d
    const/4 v4, 0x0

    :goto_14
    if-nez v23, :cond_1e

    move-object/from16 v15, v22

    goto :goto_15

    :cond_1e
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    move-object v15, v13

    goto :goto_15

    :cond_1f
    move-object/from16 v5, v22

    filled-new-array {v13, v3, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object v15, v5

    goto :goto_15

    :cond_20
    iget-boolean v2, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    :goto_15
    iget-boolean v2, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->booleanToRaw(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    if-eq v1, v6, :cond_22

    const/4 v6, 0x2

    if-ne v1, v6, :cond_21

    goto :goto_16

    :cond_21
    const/4 v5, 0x0

    :cond_22
    :goto_16
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_17

    :cond_23
    const/16 v18, 0x0

    :goto_17
    const/4 v1, 0x4

    move-object/from16 v8, v21

    move-object/from16 v9, v19

    move-object/from16 v12, v20

    move-object v13, v4

    move-object v14, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v19, v1

    invoke-static/range {v7 .. v19}, Lcom/deepalhome/launcher/util/CarInfoUtil;->syncS05AirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static hasMissingPsOnlyData()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->insideTemperature:Ljava/lang/String;

    const-string v2, "--"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->driveStyle:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontLeft:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusFrontRight:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearLeft:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusRearRight:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->doorStatusTrunk:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isBinderAlive()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->serviceBinder:Landroid/os/IBinder;

    if-nez v0, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public static isValidDteValue(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0x7ff

    if-ge p0, v0, :cond_0

    const/16 v0, 0x1ff

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isValidElectricAmountRaw(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static normalizeFrontAirModeRaw(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-gt v2, p0, :cond_2

    const/4 v2, 0x5

    if-ge p0, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static notifyListeners(Ljava/util/Set;)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    new-instance v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$$ExternalSyntheticLambda1;-><init>(ILkotlin/jvm/functions/Function1;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onDetailedInfoChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    new-instance v2, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1, p0}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static notifyPsAliasChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->onPsAliasChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-interface {v1, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static psGetValueSync(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "request_params_vs_alias"

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x44d

    const/16 v4, 0x3eb

    invoke-static {v3, v4, v2}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    move-result-object v2

    check-cast v0, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {v0, v2}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type kotlin.collections.Map<*, *>"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Map;

    const-string v2, "result_params_value"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "psGetValueSync failed: alias="

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "CarS05InfoUtil"

    invoke-static {v2, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static psSetValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8

    const-string v0, " value="

    const-string v1, "CarS05InfoUtil"

    const-string v2, "psSetValue alias="

    const-string v3, "value"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->polymericService:Lcom/tinnove/polymericservice/IPolymericService;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    :try_start_0
    const-string v5, "request_params_vs_alias"

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v5, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "request_params_value"

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v6, v7}, [Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt__MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v5

    sget-object v6, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->INSTANCE:Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v6, 0x44d

    const/16 v7, 0x3ec

    invoke-static {v6, v7, v5}, Lcom/tinnove/polymericservice/base/model/WTRequestModel$Build;->create(IILjava/util/HashMap;)Lcom/tinnove/polymericservice/base/model/WTRequestModel;

    move-result-object v5

    check-cast v3, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;

    invoke-virtual {v3, v5}, Lcom/tinnove/polymericservice/IPolymericService$Stub$Proxy;->callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    const-string v7, "000000"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " code="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    iget-object v2, v3, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v2, v5

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " msg="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    iget-object v2, v3, Lcom/tinnove/polymericservice/base/model/WTResultModel;->msg:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_4

    iget-object v5, v3, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    :cond_4
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "psSetValue failed: alias="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return v4
.end method

.method public static readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->getValue(II)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/openos/virtualcar/exception/VirtualCarException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static registerVirtualCarCallbacks()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarRegistered:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorIds:[I

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;

    invoke-virtual {v0, v3, v4}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->register([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v1

    goto :goto_1

    :catchall_0
    move-exception v2

    move v3, v1

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v3

    move v3, v2

    move-object v2, v5

    :goto_0
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :try_start_2
    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinIds:[I

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;

    invoke-virtual {v0, v2, v4}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->register([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v3, v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move v3, v1

    goto :goto_2

    :catchall_3
    move-exception v2

    :goto_2
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_3
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    :try_start_4
    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacIds:[I

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;

    invoke-virtual {v0, v2, v4}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->register([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move v1, v3

    :goto_4
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    sput-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarRegistered:Z

    return-void
.end method

.method public static restoreSupplementCache()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarS05Info()Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    move-result-object v0

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgElec:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAvgFuel:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supTime:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDistance:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelDistance:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supFuelTime:Ljava/lang/String;

    iget-object v1, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    iput-object v1, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supDrivingElec:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    iput-object v0, v2, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->supAttachmentElec:Ljava/lang/String;

    return-void
.end method

.method public static scheduleFastStatusPoll()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->fastStatusPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static scheduleReconnect()V
    .locals 4

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    sget v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0x7d0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3a98

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtMost(JJ)J

    move-result-wide v0

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static scheduleSystemHvacPoll()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacPollRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static scheduleWatchdog()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->watchdogRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static syncS05SeatHeatingState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontLeft()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v10, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "AC/SeatHeating/FrontLeft"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "AC/SeatHeating/FrontLeft"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v11}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatHeatingFrontRight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "AC/SeatHeating/FrontRight"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v12, "AC/SeatHeating/FrontRight"

    move-object v5, v2

    move-object v7, v1

    invoke-direct/range {v5 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_3
    return-void
.end method

.method public static syncS05SeatVentilationState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p1

    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v0

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontLeft()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v10, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "AC/SeatVentilation/FrontLeft"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v9, "AC/SeatVentilation/FrontLeft"

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v11}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getSeatVentilationFrontRight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v6, "AC/SeatVentilation/FrontRight"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v12, "AC/SeatVentilation/FrontRight"

    move-object v5, v2

    move-object v7, v1

    invoke-direct/range {v5 .. v12}, Lcom/deepalhome/launcher/util/carlog/VehicleProperty;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->notifyListeners(Lcom/deepalhome/launcher/util/carlog/VehicleProperty;)V

    :cond_3
    return-void
.end method

.method public static syncTemperatureSetpointState(ILjava/lang/Object;)V
    .locals 13

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->formatS05Temperature(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xfef

    move-object v4, p1

    invoke-static/range {v0 .. v12}, Lcom/deepalhome/launcher/util/CarInfoUtil;->syncS05AirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0xff7

    move-object v3, p1

    invoke-static/range {v0 .. v12}, Lcom/deepalhome/launcher/util/CarInfoUtil;->syncS05AirConditionState$default(Lcom/deepalhome/launcher/util/CarInfoUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_1
    instance-of v0, p0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    check-cast p0, [I

    array-length v0, p0

    if-le v0, v3, :cond_2

    aget p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_2
    array-length v0, p0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    xor-int/2addr v0, v3

    if-eqz v0, :cond_4

    aget p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    goto :goto_1

    :cond_5
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    check-cast p0, [Ljava/lang/Object;

    invoke-static {v3, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, p0}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :cond_6
    move-object p0, v0

    goto :goto_1

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static unregisterVirtualCarCallbacks()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sput-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarRegistered:Z

    return-void

    :cond_0
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorIds:[I

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarSensorCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarSensorCallback$1;

    invoke-virtual {v0, v2, v3}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->unRegister([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    :try_start_1
    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinIds:[I

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarCabinCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarCabinCallback$1;

    invoke-virtual {v0, v2, v3}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->unRegister([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    :try_start_2
    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacIds:[I

    sget-object v3, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarHvacCallback:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarHvacCallback$1;

    invoke-virtual {v0, v2, v3}, Lcom/openos/virtualcar/VirtualCarPropertyManager;->unRegister([ILcom/openos/virtualcar/VirtualCarPropertyCallBack;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    sput-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarRegistered:Z

    return-void
.end method


# virtual methods
.method public final initSystemHvacBridge()V
    .locals 1

    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacBridgeInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacBridgeInitialized:Z

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/tinnove/comlib/BaseApp;->sApp:Landroid/app/Application;

    sget-object v0, Lcom/tinnove/comlib/virtual/HvacVirtualManager$Holder;->sInstance:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    invoke-virtual {v0}, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->initVritualCarManager()V

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacManager:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pollSystemHvacState()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleSystemHvacPoll()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacBridgeInitialized:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacManager:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void
.end method

.method public final initVirtualCarBridge()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initSystemHvacBridge()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCar:Lcom/openos/virtualcar/VirtualCar;

    if-nez v0, :cond_2

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarReadyListener:Lcom/deepalhome/launcher/util/CarS05InfoUtil$virtualCarReadyListener$1;

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/openos/virtualcar/VirtualCar;->createVirtualCar(Lcom/openos/virtualcar/VirtualServiceReadyListener;Landroid/os/Handler;)Lcom/openos/virtualcar/VirtualCar;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/openos/virtualcar/VirtualCar;

    sput-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCar:Lcom/openos/virtualcar/VirtualCar;

    :cond_2
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->registerVirtualCarCallbacks()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarSnapshot(Z)V

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initialDoorSnapshotRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method

.method public final pollSystemHvacState()V
    .locals 10

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacManager:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initSystemHvacBridge()V

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    new-instance v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    invoke-direct {v5}, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;-><init>()V

    const v6, 0x31400201

    invoke-static {v0, v6, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-lt v6, v1, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isCarPowerOn:Z

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    const v7, 0x35400101

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_4

    move v6, v3

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isHvacPowerOn:Z

    move v6, v3

    :cond_5
    const v7, 0x35400102

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_6

    move v6, v3

    goto :goto_3

    :cond_6
    move v6, v2

    :goto_3
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isACOn:Z

    move v6, v3

    :cond_7
    const v7, 0x35400104

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_8

    move v6, v3

    goto :goto_4

    :cond_8
    move v6, v2

    :goto_4
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->isAutoOn:Z

    move v6, v3

    :cond_9
    const v7, 0x35400108

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->airRecirculationMode:I

    move v6, v3

    :cond_a
    const v7, 0x35400107

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanDirection:I

    move v6, v3

    :cond_b
    const v7, 0x35400109

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->fanSpeed:I

    move v6, v3

    :cond_c
    const v7, 0x33400103

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_d

    move v6, v3

    goto :goto_5

    :cond_d
    move v6, v2

    :goto_5
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->frontWindowDeforestOn:Z

    move v6, v3

    :cond_e
    invoke-static {v0, v7, v8}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ne v6, v3, :cond_f

    move v6, v3

    goto :goto_6

    :cond_f
    move v6, v2

    :goto_6
    iput-boolean v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rearWindowDeforestOn:Z

    move v6, v3

    :cond_10
    const v7, 0x35600105

    invoke-static {v0, v7, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Ljava/lang/Number;

    if-eqz v9, :cond_11

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v6

    iput v6, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->leftTemp:F

    move v6, v3

    :cond_11
    invoke-static {v0, v7, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v0

    instance-of v7, v0, Ljava/lang/Number;

    if-eqz v7, :cond_12

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, v5, Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;->rightTemp:F

    goto :goto_7

    :cond_12
    if-eqz v6, :cond_13

    :goto_7
    move-object v4, v5

    :cond_13
    :goto_8
    const v0, 0x35400111

    if-eqz v4, :cond_15

    sget-object p0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleSystemHvacState(Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v4, :cond_14

    goto :goto_9

    :cond_14
    invoke-static {v4, v0, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    invoke-static {v4, v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    :goto_9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getSeatHeatingLevel(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatHeatingState(ZLjava/lang/Integer;)V

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getSeatHeatingLevel(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatHeatingState(ZLjava/lang/Integer;)V

    return-void

    :cond_15
    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->systemHvacManager:Lcom/tinnove/comlib/virtual/HvacVirtualManager;

    if-nez v4, :cond_16

    return-void

    :cond_16
    iget-object v4, v4, Lcom/tinnove/comlib/virtual/HvacVirtualManager;->mCurrentState:Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;

    invoke-static {v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->handleSystemHvacState(Lcom/tinnove/comlib/virtual/HvacVirtualManager$HvacState;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->bindVirtualCarPropertyManager()V

    sget-object v4, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v4, :cond_17

    goto :goto_a

    :cond_17
    invoke-static {v4, v0, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    invoke-static {v4, v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    :goto_a
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v4, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getSeatHeatingLevel(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatHeatingState(ZLjava/lang/Integer;)V

    sget-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/s05/control/S05CarControlHelper;->getSeatHeatingLevel(Landroid/app/Application;Lcom/deepalhome/launcher/hvac/HvacCommand$Position;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatHeatingState(ZLjava/lang/Integer;)V

    return-void
.end method

.method public final refreshVirtualCarDoorSnapshot(Lcom/openos/virtualcar/VirtualCarPropertyManager;)V
    .locals 2

    const p0, 0x36400311

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarDoorAlias(ILjava/lang/Object;)V

    const/4 v0, 0x4

    invoke-static {p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarDoorAlias(ILjava/lang/Object;)V

    const/16 v0, 0x10

    invoke-static {p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarDoorAlias(ILjava/lang/Object;)V

    const/16 v0, 0x40

    invoke-static {p1, p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarDoorAlias(ILjava/lang/Object;)V

    const/4 p0, 0x0

    const v0, 0x31400314

    invoke-static {p1, v0, p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "vc_alias_door_trunk_pos"

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final refreshVirtualCarSnapshot(Z)V
    .locals 11

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarPropertyManager:Lcom/openos/virtualcar/VirtualCarPropertyManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x314005a6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_this_journey_average_electric_consumption"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005cf

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_this_trip_elec_average_power"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005ce

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_this_journey_average_oil_consumption"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400590

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_this_trip_elec_driving_distance"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400591

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_this_trip_elec_driving_time"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005ae

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_this_trip_fuel_driving_distance"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005af

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_this_trip_fuel_driving_time"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005a3

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const v1, 0x31400594

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const v1, 0x3140058a

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    const-string v3, "vc_alias_reev_recharge_energy_elec_average_power"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400592

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_recharge_energy_fuel_average_fuel"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400595

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_recharge_energy_elec_driving_distance"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400596

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_recharge_energy_elec_driving_time"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005b0

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_recharge_energy_fuel_driving_distance"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005b1

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_reev_recharge_energy_fuel_driving_time"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005a4

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_ev_recharge_energy_elec_driving_power"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x314005a5

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_ev_recharge_energy_elec_attachment_power"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31600202

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_vehicle_speed"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31400501

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    const v4, 0x3140028d

    if-nez v3, :cond_2

    invoke-static {v0, v4, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    const-string v5, "vc_alias_e_dte"

    invoke-static {v5, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v4, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    :cond_3
    const-string v1, "vc_alias_left_ev_dte"

    invoke-static {v1, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31600205

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_disp_dte"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const v1, 0x31600204

    invoke-static {v0, v1, v2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "vc_alias_journey_all_distance"

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_a

    const p1, 0x38600112

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "vc_alias_ac_internal_temp"

    invoke-static {v3, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    const p1, 0x35600105

    invoke-static {v0, p1, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncTemperatureSetpointState(ILjava/lang/Object;)V

    const/4 v3, 0x4

    invoke-static {v0, p1, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncTemperatureSetpointState(ILjava/lang/Object;)V

    const p1, 0x35400111

    invoke-static {v0, p1, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    invoke-static {v0, p1, v3}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncSeatVentilationState(ILjava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->VIRTUAL_CAR_TIRE_AREAS:[I

    array-length v3, p1

    new-array v4, v3, [F

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_4

    const/high16 v6, 0x7fc00000    # Float.NaN

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    array-length v3, p1

    move v5, v2

    move v6, v5

    :goto_1
    const/4 v7, 0x0

    if-ge v2, v3, :cond_8

    aget v8, p1, v2

    add-int/lit8 v9, v6, 0x1

    sget-object v10, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarS05InfoUtil;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v10, 0x37600211

    invoke-static {v0, v10, v8}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->readVirtualCarValue(Lcom/openos/virtualcar/VirtualCarPropertyManager;II)Ljava/lang/Object;

    move-result-object v8

    instance-of v10, v8, Ljava/lang/Number;

    if-eqz v10, :cond_5

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_2

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v8}, Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    :cond_6
    :goto_2
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v5

    aput v5, v4, v6

    move v5, v1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    move v6, v9

    goto :goto_1

    :cond_8
    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v7

    :goto_3
    const-string p1, "vc_alias_tire_pressure"

    invoke-static {p1, v4}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->applyVirtualCarAlias(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->refreshVirtualCarDoorSnapshot(Lcom/openos/virtualcar/VirtualCarPropertyManager;)V

    :cond_a
    return-void
.end method

.method public final declared-synchronized startMonitor()V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->isStarted:Z

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->restoreSupplementCache()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->requestStartTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->virtualCarUpdateTimeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x0

    sput v0, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryCount:I

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectRetryRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->pendingChangedFields:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    sget-object v2, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->infoDispatchRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastEventAt:J

    sput-wide v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastRefreshAt:J

    sput-wide v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastConnectAt:J

    sput-wide v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastForceReconnectAt:J

    sput-wide v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->lastSystemHvacAt:J

    sget-object v1, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->cacheCarS05Info:Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    iget-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    if-nez v2, :cond_1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getCarInfo()Lcom/deepalhome/launcher/carinfo/CacheCarInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/carinfo/CacheCarInfo;->getType()Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->type:Ljava/lang/Integer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->connectPolymericService(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;->values()[Lcom/deepalhome/launcher/util/CarS05InfoUtil$S05UiField;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt___ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->notifyListeners(Ljava/util/Set;)V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleWatchdog()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleFastStatusPoll()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->scheduleSystemHvacPoll()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->initVirtualCarBridge()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final syncSeatHeatingState(ZLjava/lang/Integer;)V
    .locals 3

    invoke-static {p2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p0, v0, p2, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncS05SeatHeatingState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncS05SeatHeatingState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public final syncSeatVentilationState(ILjava/lang/Object;)V
    .locals 3

    invoke-static {p2}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p2, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, v0, p2, v1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncS05SeatVentilationState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    invoke-static {p0, p2, v0, p1}, Lcom/deepalhome/launcher/util/CarS05InfoUtil;->syncS05SeatVentilationState$default(Lcom/deepalhome/launcher/util/CarS05InfoUtil;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
