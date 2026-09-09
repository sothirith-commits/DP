.class public final Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FIELDS$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;

.field public static final SIGNALS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;

    sget-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->FIELDS$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    const-string v1, "\u884c\u8f66\u4fe1\u606f / \u6863\u4f4d"

    const-string v2, "DRIVINGINFO_GEAR"

    const-string v3, "DrivingInfo/Gear"

    invoke-direct {v0, v2, v3, v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u8f66\u901f"

    const-string v3, "DRIVINGINFO_SPEED"

    const-string v4, "DrivingInfo/Speed"

    invoke-direct {v1, v3, v4, v2}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    const-string v3, "\u6574\u8f66\u63a7\u5236\u72b6\u6001 / \u591a\u8f66\u95e8\u5f00\u542f\u72b6\u6001"

    const-string v4, "VEHCTRLSTS_MULTIDOOROPENSTS"

    const-string v5, "vehctrlSts/MultiDoorOpenSts"

    invoke-direct {v2, v4, v5, v3}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    const-string v4, "\u6574\u8f66 / \u95e8\u9501\u72b6\u6001"

    const-string v5, "VEHICLE_DOORLOCKSTATUS"

    const-string v6, "Vehicle/DoorLockStatus"

    invoke-direct {v3, v5, v6, v4}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleSignalDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->SIGNALS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$fields_AC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 140

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x2000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ACMode"

    const-string v2, "\u7a7a\u8c03 / AC \u6a21\u5f0f"

    const-string v5, "AC/ACMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x2000075

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "AC/ACMode/Front"

    const-string v10, "\u7a7a\u8c03 / AC \u6a21\u5f0f / \u524d\u6392"

    const-string v13, "AC/ACMode/Front"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x2000076

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ACMode/Rear"

    const-string v2, "\u7a7a\u8c03 / AC \u6a21\u5f0f / \u540e\u6392"

    const-string v5, "AC/ACMode/Rear"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x200001d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "AC/AirClean"

    const-string v12, "\u7a7a\u8c03 / \u7a7a\u6c14\u51c0\u5316"

    const-string v15, "AC/AirClean"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x2000009

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoDefOnOffSts"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u9664\u96fe\u5f00\u5173\u72b6\u6001"

    const-string v5, "AC/AutoDefOnOffSts"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x2000050

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "AC/AutoDefrostDefog"

    const-string v14, "\u7a7a\u8c03 / \u81ea\u52a8\u9664\u971c\u9664\u96fe"

    const-string v17, "AC/AutoDefrostDefog"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x2000069

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoDefrostDefogTip"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u9664\u971c\u9664\u96fe\u63d0\u793a"

    const-string v5, "AC/AutoDefrostDefogTip"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x2000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "AC/AutoMode"

    const-string v16, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f"

    const-string v19, "AC/AutoMode"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x200006c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoMode/Front"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u524d\u6392"

    const-string v5, "AC/AutoMode/Front"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x200006e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "AC/AutoMode/FrontLeft"

    const-string v18, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u524d\u5de6"

    const-string v21, "AC/AutoMode/FrontLeft"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x200006f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoMode/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u524d\u53f3"

    const-string v5, "AC/AutoMode/FrontRight"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x200006d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "AC/AutoMode/Rear"

    const-string v20, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u540e\u6392"

    const-string v23, "AC/AutoMode/Rear"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x2000070

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoMode/RearLeft"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u540e\u5de6"

    const-string v5, "AC/AutoMode/RearLeft"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x2000071

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "AC/AutoMode/RearRight"

    const-string v22, "\u7a7a\u8c03 / \u81ea\u52a8\u6a21\u5f0f / \u540e\u53f3"

    const-string v25, "AC/AutoMode/RearRight"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x2000057

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/AutoNegAniOnOffSts"

    const-string v2, "\u7a7a\u8c03 / \u81ea\u52a8\u8d1f\u79bb\u5b50\u52a8\u753b\u5f00\u5173\u72b6\u6001"

    const-string v5, "AC/AutoNegAniOnOffSts"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x200004e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "AC/AutoWindDrying"

    const-string v24, "\u7a7a\u8c03 / \u81ea\u52a8\u98ce\u5e72"

    const-string v27, "AC/AutoWindDrying"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x2000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ComfortConfig"

    const-string v2, "\u7a7a\u8c03 / \u8212\u9002\u914d\u7f6e"

    const-string v5, "AC/ComfortConfig"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x200005a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "AC/CoolantFillingSts"

    const-string v26, "\u7a7a\u8c03 / \u51b7\u5374\u6db2\u8865\u6db2\u72b6\u6001"

    const-string v29, "AC/CoolantFillingSts"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x2000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/CycleMode"

    const-string v2, "\u7a7a\u8c03 / \u5faa\u73af\u6a21\u5f0f"

    const-string v5, "AC/CycleMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x2000068

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "AC/Display"

    const-string v28, "\u7a7a\u8c03 / \u663e\u793a"

    const-string v31, "AC/Display"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x2000052

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletDirection"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411"

    const-string v5, "AC/ElectricAirOutletDirection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x20000ab

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "AC/ElectricAirOutletDirection/FrontLeft"

    const-string v30, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u524d\u5de6"

    const-string v33, "AC/ElectricAirOutletDirection/FrontLeft"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x20000ac

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletDirection/FrontLeftMiddle"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u524d\u5de6\u4e2d"

    const-string v5, "AC/ElectricAirOutletDirection/FrontLeftMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x20000ad

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "AC/ElectricAirOutletDirection/FrontRight"

    const-string v32, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u524d\u53f3"

    const-string v35, "AC/ElectricAirOutletDirection/FrontRight"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x20000ae

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletDirection/FrontRightMiddle"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u524d\u53f3\u4e2d"

    const-string v5, "AC/ElectricAirOutletDirection/FrontRightMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x20000af

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "AC/ElectricAirOutletDirection/RearLeft"

    const-string v34, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u540e\u5de6"

    const-string v37, "AC/ElectricAirOutletDirection/RearLeft"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x20000b0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletDirection/RearRight"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u65b9\u5411 / \u540e\u53f3"

    const-string v5, "AC/ElectricAirOutletDirection/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x2000045

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "AC/ElectricAirOutletHorizontal"

    const-string v36, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u6c34\u5e73\u89d2\u5ea6"

    const-string v39, "AC/ElectricAirOutletHorizontal"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x20000a3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletHorizontal/FrontLeft"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u6c34\u5e73\u89d2\u5ea6 / \u524d\u5de6"

    const-string v5, "AC/ElectricAirOutletHorizontal/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x20000a4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "AC/ElectricAirOutletHorizontal/FrontLeftMiddle"

    const-string v38, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u6c34\u5e73\u89d2\u5ea6 / \u524d\u5de6\u4e2d"

    const-string v41, "AC/ElectricAirOutletHorizontal/FrontLeftMiddle"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x20000a5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletHorizontal/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u6c34\u5e73\u89d2\u5ea6 / \u524d\u53f3"

    const-string v5, "AC/ElectricAirOutletHorizontal/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x20000a6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "AC/ElectricAirOutletHorizontal/FrontRightMiddle"

    const-string v40, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u6c34\u5e73\u89d2\u5ea6 / \u524d\u53f3\u4e2d"

    const-string v43, "AC/ElectricAirOutletHorizontal/FrontRightMiddle"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x2000044

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletSwitch"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5f00\u5173"

    const-string v5, "AC/ElectricAirOutletSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x200009f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "AC/ElectricAirOutletSwitch/FrontLeft"

    const-string v42, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5f00\u5173 / \u524d\u5de6"

    const-string v45, "AC/ElectricAirOutletSwitch/FrontLeft"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0x20000a0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletSwitch/FrontLeftMiddle"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5f00\u5173 / \u524d\u5de6\u4e2d"

    const-string v5, "AC/ElectricAirOutletSwitch/FrontLeftMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0x20000a1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "AC/ElectricAirOutletSwitch/FrontRight"

    const-string v44, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5f00\u5173 / \u524d\u53f3"

    const-string v47, "AC/ElectricAirOutletSwitch/FrontRight"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x20000a2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletSwitch/FrontRightMiddle"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5f00\u5173 / \u524d\u53f3\u4e2d"

    const-string v5, "AC/ElectricAirOutletSwitch/FrontRightMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x2000046

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "AC/ElectricAirOutletVertical"

    const-string v46, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5782\u76f4\u89d2\u5ea6"

    const-string v49, "AC/ElectricAirOutletVertical"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0x20000a7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletVertical/FrontLeft"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5782\u76f4\u89d2\u5ea6 / \u524d\u5de6"

    const-string v5, "AC/ElectricAirOutletVertical/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x20000a8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "AC/ElectricAirOutletVertical/FrontLeftMiddle"

    const-string v48, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5782\u76f4\u89d2\u5ea6 / \u524d\u5de6\u4e2d"

    const-string v51, "AC/ElectricAirOutletVertical/FrontLeftMiddle"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0x20000a9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricAirOutletVertical/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5782\u76f4\u89d2\u5ea6 / \u524d\u53f3"

    const-string v5, "AC/ElectricAirOutletVertical/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0x20000aa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "AC/ElectricAirOutletVertical/FrontRightMiddle"

    const-string v50, "\u7a7a\u8c03 / \u7535\u52a8\u98ce\u53e3\u5782\u76f4\u89d2\u5ea6 / \u524d\u53f3\u4e2d"

    const-string v53, "AC/ElectricAirOutletVertical/FrontRightMiddle"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0x2000067

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/ElectricTemperature"

    const-string v2, "\u7a7a\u8c03 / Electric Temperature"

    const-string v5, "AC/ElectricTemperature"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0x2000059

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "AC/FastHeat"

    const-string v52, "\u7a7a\u8c03 / Fast Heat"

    const-string v55, "AC/FastHeat"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0x3000043

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/CeconsistenceLevel"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Ceconsistence Level"

    const-string v5, "AC/Fragrance/CeconsistenceLevel"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0x3000041

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "AC/Fragrance/Displaysts"

    const-string v54, "\u7a7a\u8c03 / \u9999\u6c1b / Displaysts"

    const-string v57, "AC/Fragrance/Displaysts"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0x3000045

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/FragrancePosition"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Fragrance Position"

    const-string v5, "AC/Fragrance/FragrancePosition"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0x3000046

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "AC/Fragrance/FragranceSW"

    const-string v56, "\u7a7a\u8c03 / \u9999\u6c1b / Fragrance SW"

    const-string v59, "AC/Fragrance/FragranceSW"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0x300003d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/Pos1TypesSts"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Pos 1 Types Sts"

    const-string v5, "AC/Fragrance/Pos1TypesSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0x300003e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "AC/Fragrance/Pos2TypesSts"

    const-string v58, "\u7a7a\u8c03 / \u9999\u6c1b / Pos 2 Types Sts"

    const-string v61, "AC/Fragrance/Pos2TypesSts"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0x300003f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/Pos3TypesSts"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Pos 3 Types Sts"

    const-string v5, "AC/Fragrance/Pos3TypesSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0x300003c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "AC/Fragrance/ShortageWarning"

    const-string v60, "\u7a7a\u8c03 / \u9999\u6c1b / Shortage Warning"

    const-string v63, "AC/Fragrance/ShortageWarning"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0x3000058

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/WorkStatus1"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Work Status 1"

    const-string v5, "AC/Fragrance/WorkStatus1"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0x3000059

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "AC/Fragrance/WorkStatus2"

    const-string v62, "\u7a7a\u8c03 / \u9999\u6c1b / Work Status 2"

    const-string v65, "AC/Fragrance/WorkStatus2"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0x300005a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Fragrance/WorkStatus3"

    const-string v2, "\u7a7a\u8c03 / \u9999\u6c1b / Work Status 3"

    const-string v5, "AC/Fragrance/WorkStatus3"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0x2000036

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "AC/FrontDefrost"

    const-string v64, "\u7a7a\u8c03 / Front Defrost"

    const-string v67, "AC/FrontDefrost"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0x200003e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/HeatingColdMode"

    const-string v2, "\u7a7a\u8c03 / Heating Cold Mode"

    const-string v5, "AC/HeatingColdMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0x2000007

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "AC/MaxAC"

    const-string v66, "\u7a7a\u8c03 / Max AC"

    const-string v69, "AC/MaxAC"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0x2000038

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Plasma"

    const-string v2, "\u7a7a\u8c03 / Plasma"

    const-string v5, "AC/Plasma"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0x200001b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "AC/RearDefrost"

    const-string v68, "\u7a7a\u8c03 / Rear Defrost"

    const-string v71, "AC/RearDefrost"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0x2000051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/RearLock"

    const-string v2, "\u7a7a\u8c03 / Rear Lock"

    const-string v5, "AC/RearLock"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0x200001c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "AC/RearViewMirrorHeating"

    const-string v70, "\u7a7a\u8c03 / \u540e\u9664\u96fe"

    const-string v73, "AC/RearViewMirrorHeating"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0x2000092

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/RearViewMirrorHeating/Left"

    const-string v2, "\u7a7a\u8c03 / \u540e\u9664\u96fe / \u5de6\u4fa7"

    const-string v5, "AC/RearViewMirrorHeating/Left"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0x2000093

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "AC/RearViewMirrorHeating/Right"

    const-string v72, "\u7a7a\u8c03 / \u540e\u9664\u96fe / \u53f3\u4fa7"

    const-string v75, "AC/RearViewMirrorHeating/Right"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0x2000055

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/RemoteAcControl"

    const-string v2, "\u7a7a\u8c03 / Remote Ac Control"

    const-string v5, "AC/RemoteAcControl"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v72, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v72

    const-wide/32 v0, 0x2000056

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    const-string v73, "AC/RemoteFrontDefrost"

    const-string v74, "\u7a7a\u8c03 / Remote Front Defrost"

    const-string v77, "AC/RemoteFrontDefrost"

    invoke-direct/range {v72 .. v77}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v0

    const-wide/32 v1, 0x2000015

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatHeating"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed"

    const-string v5, "AC/SeatHeating"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v74, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v74

    const-wide/32 v0, 0x2000088

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    const-string v75, "AC/SeatHeating/FrontLeft"

    const-string v76, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed / \u524d\u5de6"

    const-string v79, "AC/SeatHeating/FrontLeft"

    invoke-direct/range {v74 .. v79}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v0

    const-wide/32 v1, 0x2000089

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatHeating/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed / \u524d\u53f3"

    const-string v5, "AC/SeatHeating/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v76, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v75, v76

    const-wide/32 v0, 0x200008a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    const-string v77, "AC/SeatHeating/RearLeft"

    const-string v78, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed / \u540e\u5de6"

    const-string v81, "AC/SeatHeating/RearLeft"

    invoke-direct/range {v76 .. v81}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v76, v0

    const-wide/32 v1, 0x200008b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatHeating/RearMiddle"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed / \u540e\u4e2d"

    const-string v5, "AC/SeatHeating/RearMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v78, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v77, v78

    const-wide/32 v0, 0x200008c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    const-string v79, "AC/SeatHeating/RearRight"

    const-string v80, "\u7a7a\u8c03 / \u5ea7\u6905\u52a0\u70ed / \u540e\u53f3"

    const-string v83, "AC/SeatHeating/RearRight"

    invoke-direct/range {v78 .. v83}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v78, v0

    const-wide/32 v1, 0x2000016

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatVentilation"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce"

    const-string v5, "AC/SeatVentilation"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v80, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v79, v80

    const-wide/32 v0, 0x200008d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v83

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v84

    const-string v81, "AC/SeatVentilation/FrontLeft"

    const-string v82, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce / \u524d\u5de6"

    const-string v85, "AC/SeatVentilation/FrontLeft"

    invoke-direct/range {v80 .. v85}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v80, v0

    const-wide/32 v1, 0x200008e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatVentilation/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce / \u524d\u53f3"

    const-string v5, "AC/SeatVentilation/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v82, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v81, v82

    const-wide/32 v0, 0x200008f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v86

    const-string v83, "AC/SeatVentilation/RearLeft"

    const-string v84, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce / \u540e\u5de6"

    const-string v87, "AC/SeatVentilation/RearLeft"

    invoke-direct/range {v82 .. v87}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v82, v0

    const-wide/32 v1, 0x2000090

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SeatVentilation/RearMiddle"

    const-string v2, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce / \u540e\u4e2d"

    const-string v5, "AC/SeatVentilation/RearMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v84, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v83, v84

    const-wide/32 v0, 0x2000091

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v87

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v88

    const-string v85, "AC/SeatVentilation/RearRight"

    const-string v86, "\u7a7a\u8c03 / \u5ea7\u6905\u901a\u98ce / \u540e\u53f3"

    const-string v89, "AC/SeatVentilation/RearRight"

    invoke-direct/range {v84 .. v89}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v84, v0

    const-wide/32 v1, 0x2000062

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Setting/ACModeCustom"

    const-string v2, "\u7a7a\u8c03 / \u8bbe\u7f6e / ACMode Custom"

    const-string v5, "AC/Setting/ACModeCustom"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v86, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v85, v86

    const-wide/32 v0, 0x2000063

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v89

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v90

    const-string v87, "AC/Setting/AirCleanAutoRun"

    const-string v88, "\u7a7a\u8c03 / \u8bbe\u7f6e / Air Clean Auto Run"

    const-string v91, "AC/Setting/AirCleanAutoRun"

    invoke-direct/range {v86 .. v91}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v86, v0

    const-wide/32 v1, 0x2000061

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Setting/CabinAutoClean"

    const-string v2, "\u7a7a\u8c03 / \u8bbe\u7f6e / Cabin Auto Clean"

    const-string v5, "AC/Setting/CabinAutoClean"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v88, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v87, v88

    const-wide/32 v0, 0x2000060

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v91

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    const-string v89, "AC/Setting/CabinAutomaticVentilation"

    const-string v90, "\u7a7a\u8c03 / \u8bbe\u7f6e / Cabin Automatic Ventilation"

    const-string v93, "AC/Setting/CabinAutomaticVentilation"

    invoke-direct/range {v88 .. v93}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v88, v0

    const-wide/32 v1, 0x2000065

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Setting/FragranceRefreshFunction"

    const-string v2, "\u7a7a\u8c03 / \u8bbe\u7f6e / Fragrance Refresh Function"

    const-string v5, "AC/Setting/FragranceRefreshFunction"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v90, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v89, v90

    const-wide/32 v0, 0x2000064

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    const-string v91, "AC/Setting/FragranceWelcomeFunction"

    const-string v92, "\u7a7a\u8c03 / \u8bbe\u7f6e / Fragrance Welcome Function"

    const-string v95, "AC/Setting/FragranceWelcomeFunction"

    invoke-direct/range {v90 .. v95}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v90, v0

    const-wide/32 v1, 0x2000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Status"

    const-string v2, "\u7a7a\u8c03 / \u72b6\u6001"

    const-string v5, "AC/Status"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v92, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v91, v92

    const-wide/32 v0, 0x200006a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    const-string v93, "AC/Status/Front"

    const-string v94, "\u7a7a\u8c03 / \u72b6\u6001 / \u524d\u6392"

    const-string v97, "AC/Status/Front"

    invoke-direct/range {v92 .. v97}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v92, v0

    const-wide/32 v1, 0x200006b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Status/Rear"

    const-string v2, "\u7a7a\u8c03 / \u72b6\u6001 / \u540e\u6392"

    const-string v5, "AC/Status/Rear"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v94, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v93, v94

    const-wide/32 v0, 0x3000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v98

    const-string v95, "AC/SteeringWheelHeating"

    const-string v96, "\u7a7a\u8c03 / Steering Wheel Heating"

    const-string v99, "AC/SteeringWheelHeating"

    invoke-direct/range {v94 .. v99}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v94, v0

    const-wide/32 v1, 0x2000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SyncMode"

    const-string v2, "\u7a7a\u8c03 / \u540c\u6b65\u6a21\u5f0f"

    const-string v5, "AC/SyncMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v96, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v95, v96

    const-wide/32 v0, 0x2000074

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    const-string v97, "AC/SyncMode/All"

    const-string v98, "\u7a7a\u8c03 / \u540c\u6b65\u6a21\u5f0f / \u5168\u90e8"

    const-string v101, "AC/SyncMode/All"

    invoke-direct/range {v96 .. v101}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v96, v0

    const-wide/32 v1, 0x2000072

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SyncMode/Front"

    const-string v2, "\u7a7a\u8c03 / \u540c\u6b65\u6a21\u5f0f / \u524d\u6392"

    const-string v5, "AC/SyncMode/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v98, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v97, v98

    const-wide/32 v0, 0x2000073

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    const-string v99, "AC/SyncMode/Rear"

    const-string v100, "\u7a7a\u8c03 / \u540c\u6b65\u6a21\u5f0f / \u540e\u6392"

    const-string v103, "AC/SyncMode/Rear"

    invoke-direct/range {v98 .. v103}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v98, v0

    const-wide/32 v1, 0x2000058

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/SystemError"

    const-string v2, "\u7a7a\u8c03 / System Error"

    const-string v5, "AC/SystemError"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v100, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v99, v100

    const-wide/32 v0, 0x200000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v103

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v104

    const-string v101, "AC/Temperature"

    const-string v102, "\u7a7a\u8c03 / \u6e29\u5ea6"

    const-string v105, "AC/Temperature"

    invoke-direct/range {v100 .. v105}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v100, v0

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u524d\u6392"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "AC/Temperature/Front"

    const-string v5, "AC/Temperature/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v102, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v101, v102

    const-wide/32 v0, 0x2000077

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v105

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v106

    const-string v103, "AC/Temperature/FrontLeft"

    const-string v104, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u524d\u5de6"

    const-string v107, "AC/Temperature/FrontLeft"

    invoke-direct/range {v102 .. v107}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v102, v0

    const-wide/32 v1, 0x2000078

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Temperature/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u524d\u53f3"

    const-string v5, "AC/Temperature/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v104, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v103, v104

    const-wide/32 v0, 0x200007b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    const-string v105, "AC/Temperature/Rear"

    const-string v106, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u540e\u6392"

    const-string v109, "AC/Temperature/Rear"

    invoke-direct/range {v104 .. v109}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v104, v0

    const-wide/32 v1, 0x2000079

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/Temperature/RearLeft"

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u540e\u5de6"

    const-string v5, "AC/Temperature/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v106, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v105, v106

    const-wide/32 v0, 0x200007a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v110

    const-string v107, "AC/Temperature/RearRight"

    const-string v108, "\u7a7a\u8c03 / \u6e29\u5ea6 / \u540e\u53f3"

    const-string v111, "AC/Temperature/RearRight"

    invoke-direct/range {v106 .. v111}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v106, v0

    const-wide/32 v1, 0x200003f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/TemperatureUnit"

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d"

    const-string v5, "AC/TemperatureUnit"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v108, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v107, v108

    const-wide/32 v0, 0x200009a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v111

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v112

    const-string v109, "AC/TemperatureUnit/FrontLeft"

    const-string v110, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d / \u524d\u5de6"

    const-string v113, "AC/TemperatureUnit/FrontLeft"

    invoke-direct/range {v108 .. v113}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v108, v0

    const-wide/32 v1, 0x200009b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/TemperatureUnit/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d / \u524d\u53f3"

    const-string v5, "AC/TemperatureUnit/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v110, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v109, v110

    const-wide/32 v0, 0x200009e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v113

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v114

    const-string v111, "AC/TemperatureUnit/Rear"

    const-string v112, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d / \u540e\u6392"

    const-string v115, "AC/TemperatureUnit/Rear"

    invoke-direct/range {v110 .. v115}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v110, v0

    const-wide/32 v1, 0x200009c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/TemperatureUnit/RearLeft"

    const-string v2, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d / \u540e\u5de6"

    const-string v5, "AC/TemperatureUnit/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v112, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v111, v112

    const-wide/32 v0, 0x200009d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v115

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v116

    const-string v113, "AC/TemperatureUnit/RearRight"

    const-string v114, "\u7a7a\u8c03 / \u6e29\u5ea6\u5355\u4f4d / \u540e\u53f3"

    const-string v117, "AC/TemperatureUnit/RearRight"

    invoke-direct/range {v112 .. v117}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v112, v0

    const-wide/32 v1, 0x200004f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/VentilationTimer"

    const-string v2, "\u7a7a\u8c03 / Ventilation Timer"

    const-string v5, "AC/VentilationTimer"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v114, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v113, v114

    const-wide/32 v0, 0x2000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v117

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v118

    const-string v115, "AC/WindLevel"

    const-string v116, "\u7a7a\u8c03 / \u98ce\u91cf"

    const-string v119, "AC/WindLevel"

    invoke-direct/range {v114 .. v119}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v114, v0

    const-wide/32 v1, 0x200007e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindLevel/Front"

    const-string v2, "\u7a7a\u8c03 / \u98ce\u91cf / \u524d\u6392"

    const-string v5, "AC/WindLevel/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v116, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v115, v116

    const-wide/32 v0, 0x200007c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v119

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v120

    const-string v117, "AC/WindLevel/FrontLeft"

    const-string v118, "\u7a7a\u8c03 / \u98ce\u91cf / \u524d\u5de6"

    const-string v121, "AC/WindLevel/FrontLeft"

    invoke-direct/range {v116 .. v121}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v116, v0

    const-wide/32 v1, 0x200007d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindLevel/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u98ce\u91cf / \u524d\u53f3"

    const-string v5, "AC/WindLevel/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v118, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v117, v118

    const-wide/32 v0, 0x200007f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v121

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v122

    const-string v119, "AC/WindLevel/Rear"

    const-string v120, "\u7a7a\u8c03 / \u98ce\u91cf / \u540e\u6392"

    const-string v123, "AC/WindLevel/Rear"

    invoke-direct/range {v118 .. v123}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v118, v0

    const-wide/32 v1, 0x2000080

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindLevel/RearLeft"

    const-string v2, "\u7a7a\u8c03 / \u98ce\u91cf / \u540e\u5de6"

    const-string v5, "AC/WindLevel/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v120, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v119, v120

    const-wide/32 v0, 0x2000081

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v123

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v124

    const-string v121, "AC/WindLevel/RearRight"

    const-string v122, "\u7a7a\u8c03 / \u98ce\u91cf / \u540e\u53f3"

    const-string v125, "AC/WindLevel/RearRight"

    invoke-direct/range {v120 .. v125}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v120, v0

    const-wide/32 v1, 0x2000011

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindMode"

    const-string v2, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f"

    const-string v5, "AC/WindMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v122, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v121, v122

    const-wide/32 v0, 0x2000084

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v125

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v126

    const-string v123, "AC/WindMode/Front"

    const-string v124, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u524d\u6392"

    const-string v127, "AC/WindMode/Front"

    invoke-direct/range {v122 .. v127}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v122, v0

    const-wide/32 v1, 0x2000082

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindMode/FrontLeft"

    const-string v2, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u524d\u5de6"

    const-string v5, "AC/WindMode/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v124, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v123, v124

    const-wide/32 v0, 0x2000083

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v127

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v128

    const-string v125, "AC/WindMode/FrontRight"

    const-string v126, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u524d\u53f3"

    const-string v129, "AC/WindMode/FrontRight"

    invoke-direct/range {v124 .. v129}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v124, v0

    const-wide/32 v1, 0x2000085

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindMode/Rear"

    const-string v2, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u540e\u6392"

    const-string v5, "AC/WindMode/Rear"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v126, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v125, v126

    const-wide/32 v0, 0x2000086

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v129

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v130

    const-string v127, "AC/WindMode/RearLeft"

    const-string v128, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u540e\u5de6"

    const-string v131, "AC/WindMode/RearLeft"

    invoke-direct/range {v126 .. v131}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v126, v0

    const-wide/32 v1, 0x2000087

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindMode/RearRight"

    const-string v2, "\u7a7a\u8c03 / \u9001\u98ce\u6a21\u5f0f / \u540e\u53f3"

    const-string v5, "AC/WindMode/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v128, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v127, v128

    const-wide/32 v0, 0x200001f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v131

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v132

    const-string v129, "AC/WindSweepMode"

    const-string v130, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f"

    const-string v133, "AC/WindSweepMode"

    invoke-direct/range {v128 .. v133}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v128, v0

    const-wide/32 v1, 0x2000096

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindSweepMode/Front"

    const-string v2, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u524d\u6392"

    const-string v5, "AC/WindSweepMode/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v130, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v129, v130

    const-wide/32 v0, 0x2000094

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v133

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v134

    const-string v131, "AC/WindSweepMode/FrontLeft"

    const-string v132, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u524d\u5de6"

    const-string v135, "AC/WindSweepMode/FrontLeft"

    invoke-direct/range {v130 .. v135}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v130, v0

    const-wide/32 v1, 0x2000095

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindSweepMode/FrontRight"

    const-string v2, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u524d\u53f3"

    const-string v5, "AC/WindSweepMode/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v132, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v131, v132

    const-wide/32 v0, 0x2000097

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v135

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v136

    const-string v133, "AC/WindSweepMode/Rear"

    const-string v134, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u540e\u6392"

    const-string v137, "AC/WindSweepMode/Rear"

    invoke-direct/range {v132 .. v137}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v132, v0

    const-wide/32 v1, 0x2000098

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AC/WindSweepMode/RearLeft"

    const-string v2, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u540e\u5de6"

    const-string v5, "AC/WindSweepMode/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v134, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v133, v134

    const-wide/32 v0, 0x2000099

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v137

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v138

    const-string v135, "AC/WindSweepMode/RearRight"

    const-string v136, "\u7a7a\u8c03 / \u626b\u98ce\u6a21\u5f0f / \u540e\u53f3"

    const-string v139, "AC/WindSweepMode/RearRight"

    invoke-direct/range {v134 .. v139}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v133}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_ADC_307(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC LLane Distance Fus"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "ADC_307/ACC_LLaneDistanceFus"

    const-string v5, "ADC_307/ACC_LLaneDistanceFus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-string v10, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC LLLane Dis"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "ADC_307/ACC_LLLaneDis"

    const-string v13, "ADC_307/ACC_LLLaneDis"

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC RRLane Dis"

    const-string v1, "ADC_307/ACC_RRLaneDis"

    const-string v5, "ADC_307/ACC_RRLaneDis"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-string v12, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 Detection"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "ADC_307/ACC_Target6Detection"

    const-string v15, "ADC_307/ACC_Target6Detection"

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 Direction"

    const-string v1, "ADC_307/ACC_Target6Direction"

    const-string v5, "ADC_307/ACC_Target6Direction"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-string v14, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 Heading Angle"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "ADC_307/ACC_Target6HeadingAngle"

    const-string v17, "ADC_307/ACC_Target6HeadingAngle"

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 \u7f16\u53f7"

    const-string v1, "ADC_307/ACC_Target6ID"

    const-string v5, "ADC_307/ACC_Target6ID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 \u6a2a\u5411 Range"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v15, "ADC_307/ACC_Target6LatRange"

    const-string v19, "ADC_307/ACC_Target6LatRange"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 \u7eb5\u5411 Range"

    const-string v1, "ADC_307/ACC_Target6LngRange"

    const-string v5, "ADC_307/ACC_Target6LngRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-string v18, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 Type"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "ADC_307/ACC_Target6Type"

    const-string v21, "ADC_307/ACC_Target6Type"

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 6 Zone \u7f16\u53f7"

    const-string v1, "ADC_307/ACC_Target6ZoneID"

    const-string v5, "ADC_307/ACC_Target6ZoneID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-string v20, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 Detection"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v19, "ADC_307/ACC_Target7Detection"

    const-string v23, "ADC_307/ACC_Target7Detection"

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 Direction"

    const-string v1, "ADC_307/ACC_Target7Direction"

    const-string v5, "ADC_307/ACC_Target7Direction"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-string v22, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 Heading Angle"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v21, "ADC_307/ACC_Target7HeadingAngle"

    const-string v25, "ADC_307/ACC_Target7HeadingAngle"

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 \u7f16\u53f7"

    const-string v1, "ADC_307/ACC_Target7ID"

    const-string v5, "ADC_307/ACC_Target7ID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-string v24, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 \u6a2a\u5411 Range"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v23, "ADC_307/ACC_Target7LatRange"

    const-string v27, "ADC_307/ACC_Target7LatRange"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 \u7eb5\u5411 Range"

    const-string v1, "ADC_307/ACC_Target7LngRange"

    const-string v5, "ADC_307/ACC_Target7LngRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-string v26, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ACC Target 7 Zone \u7f16\u53f7"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v25, "ADC_307/ACC_Target7ZoneID"

    const-string v29, "ADC_307/ACC_Target7ZoneID"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_307 / ADS Smart Driving Style"

    const-string v1, "ADC_307/ADS_SmartDrivingStyle"

    const-string v5, "ADC_307/ADS_SmartDrivingStyle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v24}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_ADC_382(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 52

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Lane Equation C 1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "ADC_382/ACC_LaneEquationC1"

    const-string v5, "ADC_382/ACC_LaneEquationC1"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-string v10, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Lane Equation C 2"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v9, "ADC_382/ACC_LaneEquationC2"

    const-string v13, "ADC_382/ACC_LaneEquationC2"

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 Detection"

    const-string v1, "ADC_382/ACC_Target1Detection"

    const-string v5, "ADC_382/ACC_Target1Detection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-string v12, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 Direction"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "ADC_382/ACC_Target1Direction"

    const-string v15, "ADC_382/ACC_Target1Direction"

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 Heading Angle"

    const-string v1, "ADC_382/ACC_Target1HeadingAngle"

    const-string v5, "ADC_382/ACC_Target1HeadingAngle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-string v14, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 \u7f16\u53f7"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "ADC_382/ACC_Target1ID"

    const-string v17, "ADC_382/ACC_Target1ID"

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 \u6a2a\u5411 Range"

    const-string v1, "ADC_382/ACC_Target1LatRange"

    const-string v5, "ADC_382/ACC_Target1LatRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 \u7eb5\u5411 Range"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v15, "ADC_382/ACC_Target1LngRange"

    const-string v19, "ADC_382/ACC_Target1LngRange"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 Type"

    const-string v1, "ADC_382/ACC_Target1Type"

    const-string v5, "ADC_382/ACC_Target1Type"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-string v18, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 1 Zone \u7f16\u53f7"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "ADC_382/ACC_Target1ZoneID"

    const-string v21, "ADC_382/ACC_Target1ZoneID"

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 Detection"

    const-string v1, "ADC_382/ACC_Target2Detection"

    const-string v5, "ADC_382/ACC_Target2Detection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-string v20, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 Direction"

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-string v19, "ADC_382/ACC_Target2Direction"

    const-string v23, "ADC_382/ACC_Target2Direction"

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 Heading Angle"

    const-string v1, "ADC_382/ACC_Target2HeadingAngle"

    const-string v5, "ADC_382/ACC_Target2HeadingAngle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-string v22, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 \u7f16\u53f7"

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v21, "ADC_382/ACC_Target2ID"

    const-string v25, "ADC_382/ACC_Target2ID"

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 \u6a2a\u5411 Range"

    const-string v1, "ADC_382/ACC_Target2LatRange"

    const-string v5, "ADC_382/ACC_Target2LatRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-string v24, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 \u7eb5\u5411 Range"

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v23, "ADC_382/ACC_Target2LngRange"

    const-string v27, "ADC_382/ACC_Target2LngRange"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 Type"

    const-string v1, "ADC_382/ACC_Target2Type"

    const-string v5, "ADC_382/ACC_Target2Type"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-string v26, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 2 Zone \u7f16\u53f7"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v25, "ADC_382/ACC_Target2ZoneID"

    const-string v29, "ADC_382/ACC_Target2ZoneID"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 Detection"

    const-string v1, "ADC_382/ACC_Target3Detection"

    const-string v5, "ADC_382/ACC_Target3Detection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-string v28, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 Direction"

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-string v27, "ADC_382/ACC_Target3Direction"

    const-string v31, "ADC_382/ACC_Target3Direction"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 Heading Angle"

    const-string v1, "ADC_382/ACC_Target3HeadingAngle"

    const-string v5, "ADC_382/ACC_Target3HeadingAngle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-string v30, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 \u7f16\u53f7"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v29, "ADC_382/ACC_Target3ID"

    const-string v33, "ADC_382/ACC_Target3ID"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 \u6a2a\u5411 Range"

    const-string v1, "ADC_382/ACC_Target3LatRange"

    const-string v5, "ADC_382/ACC_Target3LatRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-string v32, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 \u7eb5\u5411 Range"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-string v31, "ADC_382/ACC_Target3LngRange"

    const-string v35, "ADC_382/ACC_Target3LngRange"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 Type"

    const-string v1, "ADC_382/ACC_Target3Type"

    const-string v5, "ADC_382/ACC_Target3Type"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-string v34, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 3 Zone \u7f16\u53f7"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v33, "ADC_382/ACC_Target3ZoneID"

    const-string v37, "ADC_382/ACC_Target3ZoneID"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 Detection"

    const-string v1, "ADC_382/ACC_Target4Detection"

    const-string v5, "ADC_382/ACC_Target4Detection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-string v36, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 Direction"

    const/16 v37, 0x0

    const/16 v38, 0x0

    const-string v35, "ADC_382/ACC_Target4Direction"

    const-string v39, "ADC_382/ACC_Target4Direction"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 Heading Angle"

    const-string v1, "ADC_382/ACC_Target4HeadingAngle"

    const-string v5, "ADC_382/ACC_Target4HeadingAngle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-string v38, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 \u7f16\u53f7"

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-string v37, "ADC_382/ACC_Target4ID"

    const-string v41, "ADC_382/ACC_Target4ID"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 \u6a2a\u5411 Range"

    const-string v1, "ADC_382/ACC_Target4LatRange"

    const-string v5, "ADC_382/ACC_Target4LatRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-string v40, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 \u7eb5\u5411 Range"

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-string v39, "ADC_382/ACC_Target4LngRange"

    const-string v43, "ADC_382/ACC_Target4LngRange"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 4 Zone \u7f16\u53f7"

    const-string v1, "ADC_382/ACC_Target4ZoneID"

    const-string v5, "ADC_382/ACC_Target4ZoneID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-string v42, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 Detection"

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-string v41, "ADC_382/ACC_Target5Detection"

    const-string v45, "ADC_382/ACC_Target5Detection"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 Direction"

    const-string v1, "ADC_382/ACC_Target5Direction"

    const-string v5, "ADC_382/ACC_Target5Direction"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-string v44, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 Heading Angle"

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-string v43, "ADC_382/ACC_Target5HeadingAngle"

    const-string v47, "ADC_382/ACC_Target5HeadingAngle"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 \u7f16\u53f7"

    const-string v1, "ADC_382/ACC_Target5ID"

    const-string v5, "ADC_382/ACC_Target5ID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-string v46, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 \u6a2a\u5411 Range"

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-string v45, "ADC_382/ACC_Target5LatRange"

    const-string v49, "ADC_382/ACC_Target5LatRange"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 \u7eb5\u5411 Range"

    const-string v1, "ADC_382/ACC_Target5LngRange"

    const-string v5, "ADC_382/ACC_Target5LngRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-string v48, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 Type"

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-string v47, "ADC_382/ACC_Target5Type"

    const-string v51, "ADC_382/ACC_Target5Type"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-string v2, "\u667a\u9a7e\u62a5\u6587 ADC_382 / ACC Target 5 Zone \u7f16\u53f7"

    const-string v1, "ADC_382/ACC_Target5ZoneID"

    const-string v5, "ADC_382/ACC_Target5ZoneID"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v46}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_AMP_53B(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 0 source Set Status"

    const/4 v3, 0x0

    const-string v1, "AMP_53B/AMP_Channel0sourceSetStatus"

    const/4 v4, 0x0

    const-string v5, "AMP_53B/AMP_Channel0sourceSetStatus"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 1 source Set Status"

    const/4 v10, 0x0

    const-string v8, "AMP_53B/AMP_Channel1sourceSetStatus"

    const/4 v11, 0x0

    const-string v12, "AMP_53B/AMP_Channel1sourceSetStatus"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 2 source Set Status"

    const/16 v16, 0x0

    const-string v14, "AMP_53B/AMP_Channel2sourceSetStatus"

    const/16 v17, 0x0

    const-string v18, "AMP_53B/AMP_Channel2sourceSetStatus"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 3 source Set Status"

    const-string v8, "AMP_53B/AMP_Channel3sourceSetStatus"

    const-string v12, "AMP_53B/AMP_Channel3sourceSetStatus"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 4 source Set Status"

    const-string v14, "AMP_53B/AMP_Channel4sourceSetStatus"

    const-string v18, "AMP_53B/AMP_Channel4sourceSetStatus"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Channel 5 source Set Status"

    const-string v8, "AMP_53B/AMP_Channel5sourceSetStatus"

    const-string v12, "AMP_53B/AMP_Channel5sourceSetStatus"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u529f\u653e\u62a5\u6587 AMP_53B / AMP Media Sound Source Setsataus"

    const-string v14, "AMP_53B/AMP_MediaSoundSourceSetsataus"

    const-string v18, "AMP_53B/AMP_MediaSoundSourceSetsataus"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_APA(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 72

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0xe0000d1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/AndroidParkingState"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Android Parking State"

    const-string v5, "APA/AndroidParkingState"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0xe00002f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "APA/APAAvmCarColor"

    const-string v10, "\u81ea\u52a8\u6cca\u8f66 / APAAvm Car Color"

    const-string v13, "APA/APAAvmCarColor"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0xe000035

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAAvmLicense"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAAvm License"

    const-string v5, "APA/APAAvmLicense"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0xe000034

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "APA/APAAvmTransparentSw"

    const-string v12, "\u81ea\u52a8\u6cca\u8f66 / APAAvm Transparent Sw"

    const-string v15, "APA/APAAvmTransparentSw"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0xe000030

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAAvmTrigbyTurnningSts"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAAvm Trigby Turnning Sts"

    const-string v5, "APA/APAAvmTrigbyTurnningSts"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0xe000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "APA/APAButtonPress"

    const-string v14, "\u81ea\u52a8\u6cca\u8f66 / APAButton Press"

    const-string v17, "APA/APAButtonPress"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0xe0000c7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APACardPlayRequest"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APACard Play Request"

    const-string v5, "APA/APACardPlayRequest"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0xe0000c8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "APA/APAConditionNotice"

    const-string v16, "\u81ea\u52a8\u6cca\u8f66 / APACondition Notice"

    const-string v19, "APA/APAConditionNotice"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0xe00005d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAEnable"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAEnable"

    const-string v5, "APA/APAEnable"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0xe00005e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "APA/APAEnableStatus"

    const-string v18, "\u81ea\u52a8\u6cca\u8f66 / APAEnable Status"

    const-string v21, "APA/APAEnableStatus"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0xe000036

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAEnableVoice"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAEnable Voice"

    const-string v5, "APA/APAEnableVoice"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0xe000060

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "APA/APAFailure"

    const-string v20, "\u81ea\u52a8\u6cca\u8f66 / APAFailure"

    const-string v23, "APA/APAFailure"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0xe0000b3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAHppSopSts"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAHpp Sop Sts"

    const-string v5, "APA/APAHppSopSts"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0xe000048

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "APA/ApaMebHandOverReq"

    const-string v22, "\u81ea\u52a8\u6cca\u8f66 / APA Meb Hand Over Req"

    const-string v25, "APA/ApaMebHandOverReq"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0xe000046

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaMebSts"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Meb Sts"

    const-string v5, "APA/ApaMebSts"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0xe000047

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "APA/ApaMebSwSts"

    const-string v24, "\u81ea\u52a8\u6cca\u8f66 / APA Meb Sw Sts"

    const-string v27, "APA/ApaMebSwSts"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0xe0000cc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaPasFunMode"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Pas Fun Mode"

    const-string v5, "APA/ApaPasFunMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0xe000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "APA/ApaPasWarnTone"

    const-string v26, "\u81ea\u52a8\u6cca\u8f66 / APA Pas Warn Tone"

    const-string v29, "APA/ApaPasWarnTone"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0xe00004c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaPdcFailureWarning"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Failure Warning"

    const-string v5, "APA/ApaPdcFailureWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0xe000050

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "APA/ApaPdcObjDisplayReq"

    const-string v28, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Obj Display Req"

    const-string v31, "APA/ApaPdcObjDisplayReq"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0xe000056

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaPdcObjFMindist"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Obj FMindist"

    const-string v5, "APA/ApaPdcObjFMindist"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0xe000057

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "APA/ApaPdcObjRMindist"

    const-string v30, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Obj RMindist"

    const-string v33, "APA/ApaPdcObjRMindist"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0xe00004e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaPdcSdwAudiBLEFrontBeepRate"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Sdw Audi BLEFront Beep Rate"

    const-string v5, "APA/ApaPdcSdwAudiBLEFrontBeepRate"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0xe00004f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "APA/ApaPdcSdwAudiBLERearBeepRate"

    const-string v32, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Sdw Audi BLERear Beep Rate"

    const-string v35, "APA/ApaPdcSdwAudiBLERearBeepRate"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0xe00004b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaPdcSysSts"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Pdc Sys Sts"

    const-string v5, "APA/ApaPdcSysSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0xe0000c5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "APA/APARecommend"

    const-string v34, "\u81ea\u52a8\u6cca\u8f66 / APARecommend"

    const-string v37, "APA/APARecommend"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0xe000051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaSdwFLDistance"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Sdw FLDistance"

    const-string v5, "APA/ApaSdwFLDistance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0xe000052

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "APA/ApaSdwFRDistance"

    const-string v36, "\u81ea\u52a8\u6cca\u8f66 / APA Sdw FRDistance"

    const-string v39, "APA/ApaSdwFRDistance"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0xe000053

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaSdwRLDistance"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Sdw RLDistance"

    const-string v5, "APA/ApaSdwRLDistance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0xe000054

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "APA/ApaSdwRRDistance"

    const-string v38, "\u81ea\u52a8\u6cca\u8f66 / APA Sdw RRDistance"

    const-string v41, "APA/ApaSdwRRDistance"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0xe00004a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ApaSdwSysSts"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APA Sdw Sys Sts"

    const-string v5, "APA/ApaSdwSysSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0xe0000c9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "APA/APATouchInfo"

    const-string v40, "\u81ea\u52a8\u6cca\u8f66 / APATouch Info"

    const-string v43, "APA/APATouchInfo"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0xe00002e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/APAViewSelect"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / APAView Select"

    const-string v5, "APA/APAViewSelect"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0xe000044

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "APA/ApaVoiceProcessReq"

    const-string v42, "\u81ea\u52a8\u6cca\u8f66 / APA Voice Process Req"

    const-string v45, "APA/ApaVoiceProcessReq"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0xe000040

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/Avm3d2dViewMode"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / AVM 3 d 2 d View Mode"

    const-string v5, "APA/Avm3d2dViewMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0xe000033

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "APA/AvmAutoSwitchingSw"

    const-string v44, "\u81ea\u52a8\u6cca\u8f66 / AVM Auto Switching Sw"

    const-string v47, "APA/AvmAutoSwitchingSw"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0xe000041

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/AvmHmiIndex"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / AVM Hmi Index"

    const-string v5, "APA/AvmHmiIndex"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0xe000042

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "APA/AvmPdcReqWarn"

    const-string v46, "\u81ea\u52a8\u6cca\u8f66 / AVM Pdc Req Warn"

    const-string v49, "APA/AvmPdcReqWarn"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0xe000032

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/AvmTrajectorySw"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / AVM Trajectory Sw"

    const-string v5, "APA/AvmTrajectorySw"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0xe000066

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "APA/AVPMapDownloadRecomend"

    const-string v48, "\u81ea\u52a8\u6cca\u8f66 / AVPMap Download Recomend"

    const-string v51, "APA/AVPMapDownloadRecomend"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0xe000065

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/AVPRecomend"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / AVPRecomend"

    const-string v5, "APA/AVPRecomend"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0xe0000cf

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "APA/CrossModeSelect"

    const-string v50, "\u81ea\u52a8\u6cca\u8f66 / Cross Mode Select"

    const-string v53, "APA/CrossModeSelect"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0xe0000d0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/CrossParkingMode"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Cross Parking Mode"

    const-string v5, "APA/CrossParkingMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0xe0000c6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "APA/CurrentLocation"

    const-string v52, "\u81ea\u52a8\u6cca\u8f66 / Current Location"

    const-string v55, "APA/CurrentLocation"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0xe000043

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/DynamicSlotWarning"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Dynamic Slot Warning"

    const-string v5, "APA/DynamicSlotWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0xe000064

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "APA/HZPRecomend"

    const-string v54, "\u81ea\u52a8\u6cca\u8f66 / HZPRecomend"

    const-string v57, "APA/HZPRecomend"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0xe000067

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ParkingMode"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Parking Mode"

    const-string v5, "APA/ParkingMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0xe000061

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "APA/ParkingNotice"

    const-string v56, "\u81ea\u52a8\u6cca\u8f66 / Parking Notice"

    const-string v59, "APA/ParkingNotice"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0xe000062

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/ParkingSlotNumber"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Parking Slot Number"

    const-string v5, "APA/ParkingSlotNumber"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0xe0000d2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "APA/QNXParkingState"

    const-string v58, "\u81ea\u52a8\u6cca\u8f66 / QNXParking State"

    const-string v61, "APA/QNXParkingState"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0xe000063

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/RearAssistDrvNotice"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Rear Assist Drv Notice"

    const-string v5, "APA/RearAssistDrvNotice"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0xe00005a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "APA/RemoteParkRunDistance"

    const-string v60, "\u81ea\u52a8\u6cca\u8f66 / Remote Park Run Distance"

    const-string v63, "APA/RemoteParkRunDistance"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0xe00005b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/RemoteParkSafeDistance"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Remote Park Safe Distance"

    const-string v5, "APA/RemoteParkSafeDistance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0xe000058

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "APA/ScreenTouchControl"

    const-string v62, "\u81ea\u52a8\u6cca\u8f66 / Screen Touch Control"

    const-string v65, "APA/ScreenTouchControl"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0xe000059

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/SideAudioWarning"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Side Audio Warning"

    const-string v5, "APA/SideAudioWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0xe000069

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "APA/SideViewAssist"

    const-string v64, "\u81ea\u52a8\u6cca\u8f66 / Side View Assist"

    const-string v67, "APA/SideViewAssist"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0xe00005f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/SlotNotice"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Slot Notice"

    const-string v5, "APA/SlotNotice"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0xe000068

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "APA/SlotSelectVoice"

    const-string v66, "\u81ea\u52a8\u6cca\u8f66 / Slot Select Voice"

    const-string v69, "APA/SlotSelectVoice"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0xe0000ca

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/TouchEvent2"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Touch Event 2"

    const-string v5, "APA/TouchEvent2"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0xe00005c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "APA/VoiceParkEnable"

    const-string v68, "\u81ea\u52a8\u6cca\u8f66 / Voice Park Enable"

    const-string v71, "APA/VoiceParkEnable"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0xe000045

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "APA/VoiceWarnReq"

    const-string v2, "\u81ea\u52a8\u6cca\u8f66 / Voice Warn Req"

    const-string v5, "APA/VoiceWarnReq"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v66}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_AVM(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 80

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0xe0000d8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaActiveButtonDisp"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Active Button Disp"

    const-string v5, "AVM/ApaActiveButtonDisp"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0xe0000d7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "AVM/ApaIviDisplayInfo"

    const-string v10, "\u5168\u666f\u5f71\u50cf / APA Ivi Display Info"

    const-string v13, "AVM/ApaIviDisplayInfo"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0xe00009a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaObeSlotPointAng"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Obe Slot Point Ang"

    const-string v5, "AVM/ApaObeSlotPointAng"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0xe00009b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "AVM/ApaObeSlotPointTypeSts"

    const-string v12, "\u5168\u666f\u5f71\u50cf / APA Obe Slot Point Type Sts"

    const-string v15, "AVM/ApaObeSlotPointTypeSts"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0xe0000dc

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaOptionalParkingInfo"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Optional Parking Info"

    const-string v5, "AVM/ApaOptionalParkingInfo"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0xe0000da

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "AVM/ApaProcessBar"

    const-string v14, "\u5168\u666f\u5f71\u50cf / APA Process Bar"

    const-string v17, "AVM/ApaProcessBar"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0xe000094

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaReqbleIndicate"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Reqble Indicate"

    const-string v5, "AVM/ApaReqbleIndicate"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0xe00008d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "AVM/ApaRpaAbortReason"

    const-string v16, "\u5168\u666f\u5f71\u50cf / APA Rpa Abort Reason"

    const-string v19, "AVM/ApaRpaAbortReason"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0xe0000db

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaRpaButtonDisplay"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Rpa Button Display"

    const-string v5, "AVM/ApaRpaButtonDisplay"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0xe00008f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "AVM/ApaRpaRequest"

    const-string v18, "\u5168\u666f\u5f71\u50cf / APA Rpa Request"

    const-string v21, "AVM/ApaRpaRequest"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0xe00008e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaRpaSuspendReason"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Rpa Suspend Reason"

    const-string v5, "AVM/ApaRpaSuspendReason"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0xe000095

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "AVM/ApaSlotAngle"

    const-string v20, "\u5168\u666f\u5f71\u50cf / APA Slot Angle"

    const-string v23, "AVM/ApaSlotAngle"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0xe000096

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaSlotLength"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Slot Length"

    const-string v5, "AVM/ApaSlotLength"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0xe000097

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "AVM/ApaSlotWidth"

    const-string v22, "\u5168\u666f\u5f71\u50cf / APA Slot Width"

    const-string v25, "AVM/ApaSlotWidth"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0xe000098

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaSlotX"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Slot X"

    const-string v5, "AVM/ApaSlotX"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0xe000099

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "AVM/ApaSlotY"

    const-string v24, "\u5168\u666f\u5f71\u50cf / APA Slot Y"

    const-string v27, "AVM/ApaSlotY"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0xe00008a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaSts"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Sts"

    const-string v5, "AVM/ApaSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0xe0000d9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "AVM/ApaSuspendButtonDisp"

    const-string v26, "\u5168\u666f\u5f71\u50cf / APA Suspend Button Disp"

    const-string v29, "AVM/ApaSuspendButtonDisp"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0xe00009d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/ApaSwtSts"

    const-string v2, "\u5168\u666f\u5f71\u50cf / APA Swt Sts"

    const-string v5, "AVM/ApaSwtSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0xe000076

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "AVM/AVMDetectReq"

    const-string v28, "\u5168\u666f\u5f71\u50cf / AVMDetect Req"

    const-string v31, "AVM/AVMDetectReq"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0xe0000d5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMDisplayReady"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMDisplay Ready"

    const-string v5, "AVM/AVMDisplayReady"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0xe00003c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "AVM/AVMDisplayReq"

    const-string v30, "\u5168\u666f\u5f71\u50cf / AVMDisplay Req"

    const-string v33, "AVM/AVMDisplayReq"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0xe000085

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMMonSts"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMMon Sts"

    const-string v5, "AVM/AVMMonSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0xe000083

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "AVM/AVMMonVideoOutsts"

    const-string v32, "\u5168\u666f\u5f71\u50cf / AVMMon Video Outsts"

    const-string v35, "AVM/AVMMonVideoOutsts"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0xe00006c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMOverspeedWarning"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMOverspeed Warning"

    const-string v5, "AVM/AVMOverspeedWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0xe000084

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "AVM/AVMsts"

    const-string v34, "\u5168\u666f\u5f71\u50cf / AVMsts"

    const-string v37, "AVM/AVMsts"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0xe00006a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMSwitch"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMSwitch"

    const-string v5, "AVM/AVMSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0xe000086

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "AVM/AVMSwtSts"

    const-string v36, "\u5168\u666f\u5f71\u50cf / AVMSwt Sts"

    const-string v39, "AVM/AVMSwtSts"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0xe00007f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMTriGbyPdcSw"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMTri Gby Pdc Sw"

    const-string v5, "AVM/AVMTriGbyPdcSw"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0xe00006b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "AVM/AVMTrigger"

    const-string v38, "\u5168\u666f\u5f71\u50cf / AVMTrigger"

    const-string v41, "AVM/AVMTrigger"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0xe000082

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/AVMVideoOutputFailed"

    const-string v2, "\u5168\u666f\u5f71\u50cf / AVMVideo Output Failed"

    const-string v5, "AVM/AVMVideoOutputFailed"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0xe000080

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "AVM/AVMVoiceFeedback"

    const-string v40, "\u5168\u666f\u5f71\u50cf / AVMVoice Feedback"

    const-string v43, "AVM/AVMVoiceFeedback"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0xe000074

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/CameraStatus"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u76f8\u673a\u72b6\u6001"

    const-string v5, "AVM/CameraStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0xe0000ee

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "AVM/CameraStatus/Front"

    const-string v42, "\u5168\u666f\u5f71\u50cf / \u76f8\u673a\u72b6\u6001 / \u524d\u6392"

    const-string v45, "AVM/CameraStatus/Front"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0xe0000f0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/CameraStatus/Left"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u76f8\u673a\u72b6\u6001 / \u5de6\u4fa7"

    const-string v5, "AVM/CameraStatus/Left"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0xe0000ef

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "AVM/CameraStatus/Rear"

    const-string v44, "\u5168\u666f\u5f71\u50cf / \u76f8\u673a\u72b6\u6001 / \u540e\u6392"

    const-string v47, "AVM/CameraStatus/Rear"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0xe0000f1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/CameraStatus/Right"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u76f8\u673a\u72b6\u6001 / \u53f3\u4fa7"

    const-string v5, "AVM/CameraStatus/Right"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0xe000073

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "AVM/DVRDisplayVision"

    const-string v46, "\u5168\u666f\u5f71\u50cf / DVRDisplay Vision"

    const-string v49, "AVM/DVRDisplayVision"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0xe00006f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/DVREmergencyRecord"

    const-string v2, "\u5168\u666f\u5f71\u50cf / DVREmergency Record"

    const-string v5, "AVM/DVREmergencyRecord"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0xe00006e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "AVM/DVREnableStatus"

    const-string v48, "\u5168\u666f\u5f71\u50cf / DVREnable Status"

    const-string v51, "AVM/DVREnableStatus"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0xe00006d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/DVRMode"

    const-string v2, "\u5168\u666f\u5f71\u50cf / DVRMode"

    const-string v5, "AVM/DVRMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0xe000072

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "AVM/DVRPhotoResult"

    const-string v50, "\u5168\u666f\u5f71\u50cf / DVRPhoto Result"

    const-string v53, "AVM/DVRPhotoResult"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0xe000071

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/DVRSdcardErrorStatus"

    const-string v2, "\u5168\u666f\u5f71\u50cf / DVRSdcard Error Status"

    const-string v5, "AVM/DVRSdcardErrorStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0xe000070

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "AVM/DVRSdcardFullStatus"

    const-string v52, "\u5168\u666f\u5f71\u50cf / DVRSdcard Full Status"

    const-string v55, "AVM/DVRSdcardFullStatus"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0xe000011

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/FrontLeft"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u524d\u5de6"

    const-string v5, "AVM/RadarDistance/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0xe000013

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "AVM/RadarDistance/FrontLeftMiddle"

    const-string v54, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u524d\u5de6\u4e2d"

    const-string v57, "AVM/RadarDistance/FrontLeftMiddle"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0xe000015

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/FrontLeftSide"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / Front Left Side"

    const-string v5, "AVM/RadarDistance/FrontLeftSide"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0xe000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "AVM/RadarDistance/FrontRight"

    const-string v56, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u524d\u53f3"

    const-string v59, "AVM/RadarDistance/FrontRight"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0xe000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/FrontRightMiddle"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u524d\u53f3\u4e2d"

    const-string v5, "AVM/RadarDistance/FrontRightMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0xe000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "AVM/RadarDistance/FrontRightSide"

    const-string v58, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / Front Right Side"

    const-string v61, "AVM/RadarDistance/FrontRightSide"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0xe00000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/RearLeft"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u540e\u5de6"

    const-string v5, "AVM/RadarDistance/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0xe00000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "AVM/RadarDistance/RearLeftMiddle"

    const-string v60, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u540e\u5de6\u4e2d"

    const-string v63, "AVM/RadarDistance/RearLeftMiddle"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0xe00000f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/RearLeftSide"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / Rear Left Side"

    const-string v5, "AVM/RadarDistance/RearLeftSide"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0xe00000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "AVM/RadarDistance/RearRight"

    const-string v62, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u540e\u53f3"

    const-string v65, "AVM/RadarDistance/RearRight"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0xe00000c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RadarDistance/RearRightMiddle"

    const-string v2, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / \u540e\u53f3\u4e2d"

    const-string v5, "AVM/RadarDistance/RearRightMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0xe00000e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "AVM/RadarDistance/RearRightSide"

    const-string v64, "\u5168\u666f\u5f71\u50cf / \u96f7\u8fbe\u8ddd\u79bb / Rear Right Side"

    const-string v67, "AVM/RadarDistance/RearRightSide"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0xe000079

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RdaNmloptMsgVoice"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rda Nmlopt Msg Voice"

    const-string v5, "AVM/RdaNmloptMsgVoice"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0xe00007a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "AVM/Rdasts"

    const-string v66, "\u5168\u666f\u5f71\u50cf / Rdasts"

    const-string v69, "AVM/Rdasts"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0xe00007b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RdaSwtsts"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rda Swtsts"

    const-string v5, "AVM/RdaSwtsts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0xe000075

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "AVM/RemoteDisplay"

    const-string v68, "\u5168\u666f\u5f71\u50cf / Remote Display"

    const-string v71, "AVM/RemoteDisplay"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0xe00008c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RpaApaMode"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rpa APA Mode"

    const-string v5, "AVM/RpaApaMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0xe000093

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "AVM/RpaCompletedDis"

    const-string v70, "\u5168\u666f\u5f71\u50cf / Rpa Completed Dis"

    const-string v73, "AVM/RpaCompletedDis"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0xe00009c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RpaParkingTypeIndication"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rpa Parking Type Indication"

    const-string v5, "AVM/RpaParkingTypeIndication"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0xe000090

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "AVM/RpaParkOutInhibit"

    const-string v72, "\u5168\u666f\u5f71\u50cf / Rpa Park Out Inhibit"

    const-string v75, "AVM/RpaParkOutInhibit"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0xe000091

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RpaParkOutInOut"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rpa Park Out In Out"

    const-string v5, "AVM/RpaParkOutInOut"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v72, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v72

    const-wide/32 v0, 0xe000092

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    const-string v73, "AVM/Rpaprocessbar"

    const-string v74, "\u5168\u666f\u5f71\u50cf / Rpaprocessbar"

    const-string v77, "AVM/Rpaprocessbar"

    invoke-direct/range {v72 .. v77}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v0

    const-wide/32 v1, 0xe00008b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/RpaSts"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Rpa Sts"

    const-string v5, "AVM/RpaSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v74, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v74

    const-wide/32 v0, 0xe0000d4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    const-string v75, "AVM/RunningStatus/Set"

    const-string v76, "\u5168\u666f\u5f71\u50cf / Running Status / Set"

    const-string v79, "AVM/RunningStatus/Set"

    invoke-direct/range {v74 .. v79}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v0

    const-wide/32 v1, 0xe0000d3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVM/TurnLightAVMSwitch"

    const-string v2, "\u5168\u666f\u5f71\u50cf / Turn Light AVMSwitch"

    const-string v5, "AVM/TurnLightAVMSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v74}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_AVMCalibration(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x23000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AVMCalibration/Request4SCalib"

    const-string v2, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request 4 SCalib"

    const-string v5, "AVMCalibration/Request4SCalib"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x2300000b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AVMCalibration/RequestAVMResult"

    const-string v9, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request AVMResult"

    const-string v12, "AVMCalibration/RequestAVMResult"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x2300000f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AVMCalibration/RequestCalibSiteResult"

    const-string v15, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Calib Site Result"

    const-string v18, "AVMCalibration/RequestCalibSiteResult"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x23000003

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AVMCalibration/RequestCheckDoor"

    const-string v9, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Check Door"

    const-string v12, "AVMCalibration/RequestCheckDoor"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x23000009

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AVMCalibration/RequestCheckDoorResult"

    const-string v15, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Check Door Result"

    const-string v18, "AVMCalibration/RequestCheckDoorResult"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x2300000c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AVMCalibration/RequestClibResult"

    const-string v9, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Clib Result"

    const-string v12, "AVMCalibration/RequestClibResult"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x23000004

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AVMCalibration/RequestClibStart"

    const-string v15, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Clib Start"

    const-string v18, "AVMCalibration/RequestClibStart"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x23000010

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "AVMCalibration/RequestFeedBackCalibSiteResult"

    const-string v10, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Feed Back Calib Site Result"

    const-string v13, "AVMCalibration/RequestFeedBackCalibSiteResult"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x2300000a

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "AVMCalibration/RequestOpenAVM"

    const-string v17, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Request Open AVM"

    const-string v20, "AVMCalibration/RequestOpenAVM"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x23000005

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "AVMCalibration/ResponseResult"

    const-string v23, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Response Result"

    const-string v26, "AVMCalibration/ResponseResult"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x2300000e

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "AVMCalibration/SendCalibSite"

    const-string v17, "\u5168\u666f\u5f71\u50cf\u6807\u5b9a / Send Calib Site"

    const-string v20, "AVMCalibration/SendCalibSite"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v10}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_AmbLightAPP(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x8000026

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "AmbLightAPP/AmbLightFeature"

    const-string v2, "\u6c1b\u56f4\u706f / Amb Light Feature"

    const-string v5, "AmbLightAPP/AmbLightFeature"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x8000023

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AmbLightAPP/ColorSelectType"

    const-string v9, "\u6c1b\u56f4\u706f / Color Select Type"

    const-string v12, "AmbLightAPP/ColorSelectType"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x8000024

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AmbLightAPP/DriveModeSelectType"

    const-string v15, "\u6c1b\u56f4\u706f / Drive Mode Select Type"

    const-string v18, "AmbLightAPP/DriveModeSelectType"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x8000037

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AmbLightAPP/FortifyNotice"

    const-string v9, "\u6c1b\u56f4\u706f / Fortify Notice"

    const-string v12, "AmbLightAPP/FortifyNotice"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x8000035

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AmbLightAPP/GameMode"

    const-string v15, "\u6c1b\u56f4\u706f / Game Mode"

    const-string v18, "AmbLightAPP/GameMode"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x8000011

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "AmbLightAPP/LightsStatus"

    const-string v9, "\u6c1b\u56f4\u706f / Lights Status"

    const-string v12, "AmbLightAPP/LightsStatus"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x8000025

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "AmbLightAPP/MusicSelectType"

    const-string v15, "\u6c1b\u56f4\u706f / Music Select Type"

    const-string v18, "AmbLightAPP/MusicSelectType"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x8000016

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "AmbLightAPP/VoiceAssistantFeedbackStatus"

    const-string v10, "\u6c1b\u56f4\u706f / Voice Assistant Feedback Status"

    const-string v13, "AmbLightAPP/VoiceAssistantFeedbackStatus"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x8000036

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "AmbLightAPP/VoiceSpeakStatus"

    const-string v17, "\u6c1b\u56f4\u706f / Voice Speak Status"

    const-string v20, "AmbLightAPP/VoiceSpeakStatus"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Battery(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2d000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Battery/HotWarning"

    const-string v2, "\u7535\u6c60 / Hot Warning"

    const-string v5, "Battery/HotWarning"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_BodyInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 84

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x4000003

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/AccelerationMode"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Acceleration Mode"

    const-string v5, "BodyInfo/AccelerationMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x900006b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "BodyInfo/ArmingSts"

    const-string v10, "\u8f66\u8eab\u4fe1\u606f / Arming Sts"

    const-string v13, "BodyInfo/ArmingSts"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Auto Hold"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "BodyInfo/AutoHold"

    const-string v5, "BodyInfo/AutoHold"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-string v12, "\u8f66\u8eab\u4fe1\u606f / AVM Update Status Feedback"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v11, "BodyInfo/AVM_UpdateStatusFeedback"

    const-string v15, "BodyInfo/AVM_UpdateStatusFeedback"

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / AVM Update Status Feedback D"

    const-string v1, "BodyInfo/AVM_UpdateStatusFeedback_D"

    const-string v5, "BodyInfo/AVM_UpdateStatusFeedback_D"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-string v14, "\u8f66\u8eab\u4fe1\u606f / AVM Update Status Feedback F"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "BodyInfo/AVM_UpdateStatusFeedback_F"

    const-string v17, "BodyInfo/AVM_UpdateStatusFeedback_F"

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / AVM Update Status Feedback p"

    const-string v1, "BodyInfo/AVM_UpdateStatusFeedback_p"

    const-string v5, "BodyInfo/AVM_UpdateStatusFeedback_p"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u8f66\u8eab\u4fe1\u606f / AVM Update Status Feedback R"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v15, "BodyInfo/AVM_UpdateStatusFeedback_R"

    const-string v19, "BodyInfo/AVM_UpdateStatusFeedback_R"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x5000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/BatteryAutoHeating"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Battery Auto Heating"

    const-string v5, "BodyInfo/BatteryAutoHeating"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x5000041

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "BodyInfo/BatteryHeatingRemainTime"

    const-string v18, "\u8f66\u8eab\u4fe1\u606f / \u7535\u6c60\u52a0\u70ed\u5269\u4f59\u65f6\u95f4"

    const-string v21, "BodyInfo/BatteryHeatingRemainTime"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x5000040

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/BatteryHeatingStatus"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Battery Heating Status"

    const-string v5, "BodyInfo/BatteryHeatingStatus"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x5000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "BodyInfo/BatteryHeatingSwitch"

    const-string v20, "\u8f66\u8eab\u4fe1\u606f / Battery Heating Switch"

    const-string v23, "BodyInfo/BatteryHeatingSwitch"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x4000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/BrakeBoosterMode"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Brake Booster Mode"

    const-string v5, "BodyInfo/BrakeBoosterMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x4000007

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "BodyInfo/BrakePedal"

    const-string v22, "\u8f66\u8eab\u4fe1\u606f / Brake Pedal"

    const-string v25, "BodyInfo/BrakePedal"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x6000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/BTKeyPermission"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / BTKey Permission"

    const-string v5, "BodyInfo/BTKeyPermission"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x5000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "BodyInfo/ChargeAutoUnlock"

    const-string v24, "\u8f66\u8eab\u4fe1\u606f / Charge Auto Unlock"

    const-string v27, "BodyInfo/ChargeAutoUnlock"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x3000052

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/ControlDimmerLevel"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Control Dimmer Level"

    const-string v5, "BodyInfo/ControlDimmerLevel"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x4000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "BodyInfo/CrawlControl"

    const-string v26, "\u8f66\u8eab\u4fe1\u606f / Crawl Control"

    const-string v29, "BodyInfo/CrawlControl"

    move-object/from16 v27, v28

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0xa000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/CtrlHillDescent"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Ctrl Hill Descent"

    const-string v5, "BodyInfo/CtrlHillDescent"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x7000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "BodyInfo/CueTone"

    const-string v28, "\u8f66\u8eab\u4fe1\u606f / Cue Tone"

    const-string v31, "BodyInfo/CueTone"

    move-object/from16 v29, v30

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x3000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/DimmerLevel"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Dimmer Level"

    const-string v5, "BodyInfo/DimmerLevel"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x9000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "BodyInfo/DMS"

    const-string v30, "\u8f66\u8eab\u4fe1\u606f / \u9a7e\u9a76\u5458\u76d1\u6d4b"

    const-string v33, "BodyInfo/DMS"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Drvr Door Handle Req"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "BodyInfo/DrvrDoorHandleReq"

    const-string v5, "BodyInfo/DrvrDoorHandleReq"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x9000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "BodyInfo/DVR"

    const-string v32, "\u8f66\u8eab\u4fe1\u606f / DVR"

    const-string v35, "BodyInfo/DVR"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0xa000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/EPB"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / EPB"

    const-string v5, "BodyInfo/EPB"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0xa000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "BodyInfo/EPBState"

    const-string v34, "\u8f66\u8eab\u4fe1\u606f / EPBState"

    const-string v37, "BodyInfo/EPBState"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x4000005

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/EPSMode"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / EPSMode"

    const-string v5, "BodyInfo/EPSMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0xa000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "BodyInfo/ESC"

    const-string v36, "\u8f66\u8eab\u4fe1\u606f / \u8f66\u8eab\u7a33\u5b9a\u7cfb\u7edf"

    const-string v39, "BodyInfo/ESC"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x600000c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/FeulPort"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Feul Port"

    const-string v5, "BodyInfo/FeulPort"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0xe0000cd

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "BodyInfo/FrontRadar"

    const-string v38, "\u8f66\u8eab\u4fe1\u606f / Front Radar"

    const-string v41, "BodyInfo/FrontRadar"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x9000052

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/GasDetection"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Gas Detection"

    const-string v5, "BodyInfo/GasDetection"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x200004d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "BodyInfo/KeyLongPressAutoWind"

    const-string v40, "\u8f66\u8eab\u4fe1\u606f / Key Long Press Auto Wind"

    const-string v43, "BodyInfo/KeyLongPressAutoWind"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x200004c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/KeyUnlockAutoWind"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Key Unlock Auto Wind"

    const-string v5, "BodyInfo/KeyUnlockAutoWind"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-string v42, "\u8f66\u8eab\u4fe1\u606f / Le Re Door Handle Req"

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-string v41, "BodyInfo/LeReDoorHandleReq"

    const-string v45, "BodyInfo/LeReDoorHandleReq"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0xa000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/LowSpeedPedestrianAlarm"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Low Speed Pedestrian Alarm"

    const-string v5, "BodyInfo/LowSpeedPedestrianAlarm"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0xa000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "BodyInfo/LowSpeedPedestrianAlarmType"

    const-string v44, "\u8f66\u8eab\u4fe1\u606f / Low Speed Pedestrian Alarm Type"

    const-string v47, "BodyInfo/LowSpeedPedestrianAlarmType"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0xe000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe"

    const-string v5, "BodyInfo/Radar"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0xe0000e3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "BodyInfo/Radar/Back"

    const-string v46, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u540e\u90e8"

    const-string v49, "BodyInfo/Radar/Back"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0xe0000e6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/FrontLeft"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u524d\u5de6"

    const-string v5, "BodyInfo/Radar/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0xe0000ec

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "BodyInfo/Radar/FrontLeftMiddle"

    const-string v48, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u524d\u5de6\u4e2d"

    const-string v51, "BodyInfo/Radar/FrontLeftMiddle"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0xe0000e7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/FrontRight"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u524d\u53f3"

    const-string v5, "BodyInfo/Radar/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0xe0000ed

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "BodyInfo/Radar/FrontRightMiddle"

    const-string v50, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u524d\u53f3\u4e2d"

    const-string v53, "BodyInfo/Radar/FrontRightMiddle"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0xe0000e2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/Hood"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u673a\u8231\u76d6"

    const-string v5, "BodyInfo/Radar/Hood"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0xe0000e4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "BodyInfo/Radar/Left"

    const-string v52, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u5de6\u4fa7"

    const-string v55, "BodyInfo/Radar/Left"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0xe0000e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/RearLeft"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u540e\u5de6"

    const-string v5, "BodyInfo/Radar/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0xe0000ea

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "BodyInfo/Radar/RearLeftMiddle"

    const-string v54, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u540e\u5de6\u4e2d"

    const-string v57, "BodyInfo/Radar/RearLeftMiddle"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0xe0000e9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/RearRight"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u540e\u53f3"

    const-string v5, "BodyInfo/Radar/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0xe0000eb

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "BodyInfo/Radar/RearRightMiddle"

    const-string v56, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u540e\u53f3\u4e2d"

    const-string v59, "BodyInfo/Radar/RearRightMiddle"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0xe0000e5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/Radar/Right"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u96f7\u8fbe / \u53f3\u4fa7"

    const-string v5, "BodyInfo/Radar/Right"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-string v58, "\u8f66\u8eab\u4fe1\u606f / Ri Re Door Handle Req"

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-string v57, "BodyInfo/RiReDoorHandleReq"

    const-string v61, "BodyInfo/RiReDoorHandleReq"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0x700001f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SayHiSound"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Say Hi Sound"

    const-string v5, "BodyInfo/SayHiSound"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-string v60, "\u8f66\u8eab\u4fe1\u606f / Sentry Alarm"

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-string v59, "BodyInfo/SentryAlarm"

    const-string v63, "BodyInfo/SentryAlarm"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0xe0000d6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe"

    const-string v5, "BodyInfo/SideRadar"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0xe0000f3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "BodyInfo/SideRadar/Back"

    const-string v62, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u540e\u90e8"

    const-string v65, "BodyInfo/SideRadar/Back"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0xe0000f6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/FrontLeft"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u524d\u5de6"

    const-string v5, "BodyInfo/SideRadar/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0xe0000fc

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "BodyInfo/SideRadar/FrontLeftMiddle"

    const-string v64, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u524d\u5de6\u4e2d"

    const-string v67, "BodyInfo/SideRadar/FrontLeftMiddle"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0xe0000f7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/FrontRight"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u524d\u53f3"

    const-string v5, "BodyInfo/SideRadar/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0xe0000fd

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "BodyInfo/SideRadar/FrontRightMiddle"

    const-string v66, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u524d\u53f3\u4e2d"

    const-string v69, "BodyInfo/SideRadar/FrontRightMiddle"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0xe0000f2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/Hood"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u673a\u8231\u76d6"

    const-string v5, "BodyInfo/SideRadar/Hood"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0xe0000f4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "BodyInfo/SideRadar/Left"

    const-string v68, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u5de6\u4fa7"

    const-string v71, "BodyInfo/SideRadar/Left"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0xe0000f8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/RearLeft"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u540e\u5de6"

    const-string v5, "BodyInfo/SideRadar/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0xe0000fa

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "BodyInfo/SideRadar/RearLeftMiddle"

    const-string v70, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u540e\u5de6\u4e2d"

    const-string v73, "BodyInfo/SideRadar/RearLeftMiddle"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0xe0000f9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/RearRight"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u540e\u53f3"

    const-string v5, "BodyInfo/SideRadar/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0xe0000fb

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "BodyInfo/SideRadar/RearRightMiddle"

    const-string v72, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u540e\u53f3\u4e2d"

    const-string v75, "BodyInfo/SideRadar/RearRightMiddle"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0xe0000f5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/SideRadar/Right"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u4fa7\u5411\u96f7\u8fbe / \u53f3\u4fa7"

    const-string v5, "BodyInfo/SideRadar/Right"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v72, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v72

    const-wide/32 v0, 0x400006f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    const-string v73, "BodyInfo/SteeringModeSwitch"

    const-string v74, "\u8f66\u8eab\u4fe1\u606f / Steering Mode Switch"

    const-string v77, "BodyInfo/SteeringModeSwitch"

    invoke-direct/range {v72 .. v77}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v0

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Tbox Silent Upg Req"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "BodyInfo/TboxSilentUpgReq"

    const-string v5, "BodyInfo/TboxSilentUpgReq"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v74, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v74

    const-wide/32 v0, 0xa000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    const-string v75, "BodyInfo/TrailerMode"

    const-string v76, "\u8f66\u8eab\u4fe1\u606f / Trailer Mode"

    const-string v79, "BodyInfo/TrailerMode"

    invoke-direct/range {v74 .. v79}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v0

    const-wide/32 v1, 0x6000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/TrunkAutoMode"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Trunk Auto Mode"

    const-string v5, "BodyInfo/TrunkAutoMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v76, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v75, v76

    const-wide/32 v0, 0x700000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    const-string v77, "BodyInfo/VolumeWithSpeed"

    const-string v78, "\u8f66\u8eab\u4fe1\u606f / Volume With Speed"

    const-string v81, "BodyInfo/VolumeWithSpeed"

    invoke-direct/range {v76 .. v81}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v76, v0

    const-wide/32 v1, 0xc00000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/WiperServiceMode"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / Wiper Service Mode"

    const-string v5, "BodyInfo/WiperServiceMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v78, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v77, v78

    const-wide/32 v0, 0x3000018

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    const-string v79, "BodyInfo/WirelessCharge"

    const-string v80, "\u8f66\u8eab\u4fe1\u606f / \u65e0\u7ebf\u5145\u7535"

    const-string v83, "BodyInfo/WirelessCharge"

    invoke-direct/range {v78 .. v83}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v78, v0

    const-wide/32 v1, 0x3000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "BodyInfo/WirelessCharge/Status"

    const-string v2, "\u8f66\u8eab\u4fe1\u606f / \u65e0\u7ebf\u5145\u7535 / \u72b6\u6001"

    const-string v5, "BodyInfo/WirelessCharge/Status"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v78}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_C385(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 44

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-string v2, "C385 \u62a5\u6587 / ACCMode Spd"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "C385/ACCModeSpd"

    const-string v5, "C385/ACCModeSpd"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x2000042

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "C385/ACFrontRunningReq"

    const-string v10, "C385 \u62a5\u6587 / ACFront Running Req"

    const-string v13, "C385/ACFrontRunningReq"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0xd000053

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/AEBDecActive"

    const-string v2, "C385 \u62a5\u6587 / AEBDec Active"

    const-string v5, "C385/AEBDecActive"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x7000026

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "C385/ASE"

    const-string v12, "C385 \u62a5\u6587 / ASE"

    const-string v15, "C385/ASE"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "C385 \u62a5\u6587 / BSDStatus"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "C385/BSDStatus"

    const-string v5, "C385/BSDStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x7000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "C385/CallingSound"

    const-string v14, "C385 \u62a5\u6587 / Calling Sound"

    const-string v17, "C385/CallingSound"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x7000023

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/CallingType"

    const-string v2, "C385 \u62a5\u6587 / Calling Type"

    const-string v5, "C385/CallingType"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x7000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "C385/CampingMode"

    const-string v16, "C385 \u62a5\u6587 / Camping Mode"

    const-string v19, "C385/CampingMode"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x9000005

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/DriverSeatInfoSave"

    const-string v2, "C385 \u62a5\u6587 / Driver Seat Info Save"

    const-string v5, "C385/DriverSeatInfoSave"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x9000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "C385/DsmDriverSeatInfoCall"

    const-string v18, "C385 \u62a5\u6587 / DSM Driver Seat Info Call"

    const-string v21, "C385/DsmDriverSeatInfoCall"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x1000015

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/FireMode"

    const-string v2, "C385 \u62a5\u6587 / Fire Mode"

    const-string v5, "C385/FireMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x1000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "C385/IceMode"

    const-string v20, "C385 \u62a5\u6587 / Ice Mode"

    const-string v23, "C385/IceMode"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-string v2, "C385 \u62a5\u6587 / Low Key Power"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "C385/LowKeyPower"

    const-string v5, "C385/LowKeyPower"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x9000007

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "C385/ParkSpaceStorg"

    const-string v22, "C385 \u62a5\u6587 / Park Space Storg"

    const-string v25, "C385/ParkSpaceStorg"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x100000f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/RearViewMirrorSelect"

    const-string v2, "C385 \u62a5\u6587 / \u540e\u89c6\u955c\u9009\u62e9"

    const-string v5, "C385/RearViewMirrorSelect"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x7000024

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "C385/RespiteMode"

    const-string v24, "C385 \u62a5\u6587 / Respite Mode"

    const-string v27, "C385/RespiteMode"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x7000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/RespiteModeSeatSave"

    const-string v2, "C385 \u62a5\u6587 / Respite Mode Seat Save"

    const-string v5, "C385/RespiteModeSeatSave"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x3400000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "C385/Send2Car"

    const-string v26, "C385 \u62a5\u6587 / Send 2 Car"

    const-string v29, "C385/Send2Car"

    move-object/from16 v27, v28

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x1000011

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/ThermostaticCockpit"

    const-string v2, "C385 \u62a5\u6587 / Thermostatic Cockpit"

    const-string v5, "C385/ThermostaticCockpit"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x1000012

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "C385/ThermostaticCockpitNotice"

    const-string v28, "C385 \u62a5\u6587 / Thermostatic Cockpit Notice"

    const-string v31, "C385/ThermostaticCockpitNotice"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x1000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/ThermostaticCockpitText"

    const-string v2, "C385 \u62a5\u6587 / Thermostatic Cockpit Text"

    const-string v5, "C385/ThermostaticCockpitText"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-string v30, "C385 \u62a5\u6587 / \u6574\u8f66\u52a8\u529b\u6a21\u5f0f\u72b6\u6001"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v29, "C385/VcuPlantModSts"

    const-string v33, "C385/VcuPlantModSts"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x500004c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/VehAvrgEgyCnseIn10km"

    const-string v2, "C385 \u62a5\u6587 / \u8f66\u8f86 Avrg Egy Cnse In 10 km"

    const-string v5, "C385/VehAvrgEgyCnseIn10km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x500004d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "C385/VehAvrgEgyCnseIn25km"

    const-string v32, "C385 \u62a5\u6587 / \u8f66\u8f86 Avrg Egy Cnse In 25 km"

    const-string v35, "C385/VehAvrgEgyCnseIn25km"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x500004e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/VehAvrgEgyCnseIn50km"

    const-string v2, "C385 \u62a5\u6587 / \u8f66\u8f86 Avrg Egy Cnse In 50 km"

    const-string v5, "C385/VehAvrgEgyCnseIn50km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x500004f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "C385/VehEgyCnseIn10km"

    const-string v34, "C385 \u62a5\u6587 / \u8f66\u8f86 Egy Cnse In 10 km"

    const-string v37, "C385/VehEgyCnseIn10km"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x5000050

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/VehEgyCnseIn25km"

    const-string v2, "C385 \u62a5\u6587 / \u8f66\u8f86 Egy Cnse In 25 km"

    const-string v5, "C385/VehEgyCnseIn25km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x5000051

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "C385/VehEgyCnseIn50km"

    const-string v36, "C385 \u62a5\u6587 / \u8f66\u8f86 Egy Cnse In 50 km"

    const-string v39, "C385/VehEgyCnseIn50km"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x500005c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/VehResiMilgIn10km"

    const-string v2, "C385 \u62a5\u6587 / \u8f66\u8f86 Resi Milg In 10 km"

    const-string v5, "C385/VehResiMilgIn10km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x500005d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "C385/VehResiMilgIn25km"

    const-string v38, "C385 \u62a5\u6587 / \u8f66\u8f86 Resi Milg In 25 km"

    const-string v41, "C385/VehResiMilgIn25km"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x500005e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "C385/VehResiMilgIn50km"

    const-string v2, "C385 \u62a5\u6587 / \u8f66\u8f86 Resi Milg In 50 km"

    const-string v5, "C385/VehResiMilgIn50km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x1000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "C385/WinterMode"

    const-string v40, "C385 \u62a5\u6587 / \u51ac\u5b63\u6a21\u5f0f"

    const-string v43, "C385/WinterMode"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-string v2, "C385 \u62a5\u6587 / With Car Time Distance"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "C385/WithCarTimeDistance"

    const-string v5, "C385/WithCarTimeDistance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v38}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_CDC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x400001c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "CDC/AccountId"

    const-string v2, "CDC / Account \u7f16\u53f7"

    const-string v5, "CDC/AccountId"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_245(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 245 / CDC Comfort Mode Func Set"

    const/4 v3, 0x0

    const-string v1, "CDC_245/CdcComfortModeFuncSet"

    const/4 v4, 0x0

    const-string v5, "CDC_245/CdcComfortModeFuncSet"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "CDC \u62a5\u6587 245 / CDC Pass Seat Info Call Sig"

    const/4 v9, 0x0

    const-string v7, "CDC_245/CdcPassSeatInfoCallSig"

    const/4 v10, 0x0

    const-string v11, "CDC_245/CdcPassSeatInfoCallSig"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "CDC \u62a5\u6587 245 / CDC Pass Seat Info Save Set"

    const-string v2, "CDC_245/CdcPassSeatInfoSaveSet"

    const/4 v5, 0x0

    const-string v6, "CDC_245/CdcPassSeatInfoSaveSet"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_2D2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 2D2 / CDC Main Drvr Seat Info Call Sig"

    const/4 v3, 0x0

    const-string v1, "CDC_2D2/CdcMainDrvrSeatInfoCallSig"

    const/4 v4, 0x0

    const-string v5, "CDC_2D2/CdcMainDrvrSeatInfoCallSig"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "CDC \u62a5\u6587 2D2 / CDC Main Drvr Seat Info Save Set"

    const/4 v9, 0x0

    const-string v7, "CDC_2D2/CdcMainDrvrSeatInfoSaveSet"

    const/4 v10, 0x0

    const-string v11, "CDC_2D2/CdcMainDrvrSeatInfoSaveSet"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "CDC \u62a5\u6587 2D2 / CDC Mirr Seat Mem St Req"

    const-string v2, "CDC_2D2/CdcMirrSeatMemStReq"

    const/4 v5, 0x0

    const-string v6, "CDC_2D2/CdcMirrSeatMemStReq"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_319(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 319 / CDC PSM Spin Set"

    const/4 v3, 0x0

    const-string v1, "CDC_319/CdcPsmSpinSet"

    const/4 v4, 0x0

    const-string v5, "CDC_319/CdcPsmSpinSet"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_324(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 324 / CDC Super Saves Mode Sts"

    const/4 v3, 0x0

    const-string v1, "CDC_324/CdcSuperSavesModeSts"

    const/4 v4, 0x0

    const-string v5, "CDC_324/CdcSuperSavesModeSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_3BD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 3BD / HU BSDLCAMode"

    const/4 v3, 0x0

    const-string v1, "CDC_3BD/HU_BSDLCAMode"

    const/4 v4, 0x0

    const-string v5, "CDC_3BD/HU_BSDLCAMode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_CDC_507(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "CDC \u62a5\u6587 507 / HU CSLmode"

    const/4 v3, 0x0

    const-string v1, "CDC_507/HU_CSLmode"

    const/4 v4, 0x0

    const-string v5, "CDC_507/HU_CSLmode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "CDC \u62a5\u6587 507 / HU CSLWarn Offset Tp"

    const/4 v9, 0x0

    const-string v7, "CDC_507/HU_CSLWarnOffsetTp"

    const/4 v10, 0x0

    const-string v11, "CDC_507/HU_CSLWarnOffsetTp"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Chime(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x7000032

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Chime/AVASPreview"

    const-string v2, "\u63d0\u793a\u97f3 / AVASPreview"

    const-string v5, "Chime/AVASPreview"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x7000030

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "Chime/PetMode"

    const-string v8, "\u63d0\u793a\u97f3 / Pet Mode"

    const-string v11, "Chime/PetMode"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x700002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "Chime/Preview"

    const-string v3, "\u63d0\u793a\u97f3 / Preview"

    const-string v6, "Chime/Preview"

    move-object v1, v7

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_ControlScreen(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x900001d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "ControlScreen/ControlScreenAngle"

    const-string v2, "\u4e2d\u63a7\u5c4f / Control Screen Angle"

    const-string v5, "ControlScreen/ControlScreenAngle"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x900001e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "ControlScreen/ControlScreenAngleAuto"

    const-string v9, "\u4e2d\u63a7\u5c4f / Control Screen Angle Auto"

    const-string v12, "ControlScreen/ControlScreenAngleAuto"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x9000022

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "ControlScreen/ControlScreenAnglePrecision"

    const-string v15, "\u4e2d\u63a7\u5c4f / Control Screen Angle Precision"

    const-string v18, "ControlScreen/ControlScreenAnglePrecision"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x9000023

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "ControlScreen/ControlScreenAngleRangeNegative"

    const-string v9, "\u4e2d\u63a7\u5c4f / Control Screen Angle Range Negative"

    const-string v12, "ControlScreen/ControlScreenAngleRangeNegative"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x9000021

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "ControlScreen/ControlScreenAngleRangePositive"

    const-string v15, "\u4e2d\u63a7\u5c4f / Control Screen Angle Range Positive"

    const-string v18, "ControlScreen/ControlScreenAngleRangePositive"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x9000069

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "ControlScreen/ControlScreenCalibration"

    const-string v9, "\u4e2d\u63a7\u5c4f / Control Screen Calibration"

    const-string v12, "ControlScreen/ControlScreenCalibration"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x9000043

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "ControlScreen/ControlScreenLight"

    const-string v15, "\u4e2d\u63a7\u5c4f / Control Screen Light"

    const-string v18, "ControlScreen/ControlScreenLight"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x9000044

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "ControlScreen/ControlScreenMotorError"

    const-string v10, "\u4e2d\u63a7\u5c4f / Control Screen Motor Error"

    const-string v13, "ControlScreen/ControlScreenMotorError"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x9000020

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "ControlScreen/ControlScreenMotorSync"

    const-string v17, "\u4e2d\u63a7\u5c4f / Control Screen Motor Sync"

    const-string v20, "ControlScreen/ControlScreenMotorSync"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x900001f

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "ControlScreen/ControlScreenMotorWakeup"

    const-string v23, "\u4e2d\u63a7\u5c4f / Control Screen Motor Wakeup"

    const-string v26, "ControlScreen/ControlScreenMotorWakeup"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x900004d

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "ControlScreen/ICScreenLight"

    const-string v17, "\u4e2d\u63a7\u5c4f / ICScreen Light"

    const-string v20, "ControlScreen/ICScreenLight"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v12, 0x2d000005

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "ControlScreen/ScreenLight/Set"

    const-string v23, "\u4e2d\u63a7\u5c4f / Screen Light / Set"

    const-string v26, "ControlScreen/ScreenLight/Set"

    move-object/from16 v21, v11

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_DMS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 56

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0xf00002b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/BioassayAcReq"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Bioassay Ac Req"

    const-string v5, "DMS/BioassayAcReq"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0xf00002d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "DMS/BioassayStatus"

    const-string v10, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Bioassay Status"

    const-string v13, "DMS/BioassayStatus"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0xf00002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/BioassayWindowReq"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Bioassay Window Req"

    const-string v5, "DMS/BioassayWindowReq"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0xf00001e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "DMS/CallingDetectSwitch"

    const-string v12, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Calling Detect Switch"

    const-string v15, "DMS/CallingDetectSwitch"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0xf000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/CheckLicense"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Check License"

    const-string v5, "DMS/CheckLicense"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0xf000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "DMS/DeleteAllFace"

    const-string v14, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Delete All Face"

    const-string v17, "DMS/DeleteAllFace"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0xf000005

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/DeleteFaceid"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Delete Faceid"

    const-string v5, "DMS/DeleteFaceid"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0xf000030

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "DMS/DetectedStatus"

    const-string v16, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Detected Status"

    const-string v19, "DMS/DetectedStatus"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0xf00000d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/DistractionDetectSwitch"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Distraction Detect Switch"

    const-string v5, "DMS/DistractionDetectSwitch"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-string v18, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Distraction Sts"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "DMS/DistractionSts"

    const-string v21, "DMS/DistractionSts"

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0xf00001d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/DrinkingDetectSwitch"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Drinking Detect Switch"

    const-string v5, "DMS/DrinkingDetectSwitch"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0xf000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "DMS/FaceDetectSwitch"

    const-string v20, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Detect Switch"

    const-string v23, "DMS/FaceDetectSwitch"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0xf000025

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/FaceRecognizeKeyEvent"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Recognize Key Event"

    const-string v5, "DMS/FaceRecognizeKeyEvent"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0xf000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "DMS/FaceRegister"

    const-string v22, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Register"

    const-string v25, "DMS/FaceRegister"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0xf000031

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/FaceRegisterChime"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Register Chime"

    const-string v5, "DMS/FaceRegisterChime"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0xf000024

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "DMS/FaceRegisterKeyEvent"

    const-string v24, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Register Key Event"

    const-string v27, "DMS/FaceRegisterKeyEvent"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0xf000023

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/FaceRegisterNotice"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Register Notice"

    const-string v5, "DMS/FaceRegisterNotice"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0xf000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "DMS/FaceRegisterStatus"

    const-string v26, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Face Register Status"

    const-string v29, "DMS/FaceRegisterStatus"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0xf000034

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/FatigueDetectDuration"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Fatigue Detect Duration"

    const-string v5, "DMS/FatigueDetectDuration"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0xf000035

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "DMS/FatigueDetectDurationOut"

    const-string v28, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Fatigue Detect Duration Out"

    const-string v31, "DMS/FatigueDetectDurationOut"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0xf00000c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/FatigueDetectSwitch"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Fatigue Detect Switch"

    const-string v5, "DMS/FatigueDetectSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-string v30, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Fatigue Sts"

    const/16 v31, 0x0

    const/16 v32, 0x0

    const-string v29, "DMS/FatigueSts"

    const-string v33, "DMS/FatigueSts"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0xf000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/GestureDetected"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Gesture Detected"

    const-string v5, "DMS/GestureDetected"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0xf000012

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "DMS/GestureDetectSwitch"

    const-string v32, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Gesture Detect Switch"

    const-string v35, "DMS/GestureDetectSwitch"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0xf00001c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/GestureStudy"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Gesture Study"

    const-string v5, "DMS/GestureStudy"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0xf000007

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "DMS/GetFaceidNum"

    const-string v34, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Get Faceid Num"

    const-string v37, "DMS/GetFaceidNum"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0xf000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/KeyEvent"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Key Event"

    const-string v5, "DMS/KeyEvent"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0xf00002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "DMS/LiveDetectActive"

    const-string v36, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Live Detect Active"

    const-string v39, "DMS/LiveDetectActive"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0xf00002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/LiveDetectedStatus"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Live Detected Status"

    const-string v5, "DMS/LiveDetectedStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0xf00000e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "DMS/LiveDetectSwitch"

    const-string v38, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Live Detect Switch"

    const-string v41, "DMS/LiveDetectSwitch"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0xf000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/MatchFaceid"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Match Faceid"

    const-string v5, "DMS/MatchFaceid"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0xf00000b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "DMS/QnxReply"

    const-string v40, "\u9a7e\u9a76\u5458\u76d1\u6d4b / QNX Reply"

    const-string v43, "DMS/QnxReply"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0xf000003

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/RegisterFaceid"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Register Faceid"

    const-string v5, "DMS/RegisterFaceid"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0xf000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "DMS/ReplyLicense"

    const-string v42, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Reply License"

    const-string v45, "DMS/ReplyLicense"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0xf000026

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/SmokeMode"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoke Mode"

    const-string v5, "DMS/SmokeMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0xf000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "DMS/SmokeModeAcoustWarn"

    const-string v44, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoke Mode Acoust Warn"

    const-string v47, "DMS/SmokeModeAcoustWarn"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0xf000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/SmokeModeAirClean"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoke Mode Air Clean"

    const-string v5, "DMS/SmokeModeAirClean"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0xf000027

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "DMS/SmokeModeWindowDown"

    const-string v46, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoke Mode Window Down"

    const-string v49, "DMS/SmokeModeWindowDown"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoke Sts"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "DMS/SmokeSts"

    const-string v5, "DMS/SmokeSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0xf00001f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "DMS/SmokingDetectSwitch"

    const-string v48, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Smoking Detect Switch"

    const-string v51, "DMS/SmokingDetectSwitch"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0xf000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/Stop"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Stop"

    const-string v5, "DMS/Stop"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0xf000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "DMS/Test"

    const-string v50, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Test"

    const-string v53, "DMS/Test"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0xf00000a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DMS/UiSetting"

    const-string v2, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Ui Setting"

    const-string v5, "DMS/UiSetting"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-string v52, "\u9a7e\u9a76\u5458\u76d1\u6d4b / Vision Sdk Switch"

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-string v51, "DMS/VisionSdkSwitch"

    const-string v55, "DMS/VisionSdkSwitch"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v49}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Diagnosis(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x900004f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Diagnosis/VehicleDiagnosisNotification"

    const-string v2, "\u8bca\u65ad / Vehicle Diagnosis Notification"

    const-string v5, "Diagnosis/VehicleDiagnosisNotification"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x900004e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "Diagnosis/VehicleDiagnosisRequest"

    const-string v8, "\u8bca\u65ad / Vehicle Diagnosis Request"

    const-string v11, "Diagnosis/VehicleDiagnosisRequest"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_DidControlRgbShow(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DidControlRgbShow"

    const-string v2, "Did Control Rgb Show"

    const-string v5, "DidControlRgbShow"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Display(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u663e\u793a / \u77ac\u65f6\u529f\u7387"

    const/4 v3, 0x0

    const-string v1, "Display/InstantPower"

    const/4 v4, 0x0

    const-string v5, "Display/InstantPower"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u663e\u793a / \u77ac\u65f6\u529f\u7387\u767e\u5206\u6bd4"

    const/4 v9, 0x0

    const-string v7, "Display/InstantPowerPercent"

    const/4 v10, 0x0

    const-string v11, "Display/InstantPowerPercent"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Driving(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x4000039

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Driving/ChassisModeset"

    const-string v2, "\u9a7e\u9a76 / Chassis Modeset"

    const-string v5, "Driving/ChassisModeset"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x400002b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Driving/DrvAutoConvenient"

    const-string v9, "\u9a7e\u9a76 / Drv Auto Convenient"

    const-string v12, "Driving/DrvAutoConvenient"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x400002a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Driving/DrvComfortParking"

    const-string v15, "\u9a7e\u9a76 / Drv Comfort Parking"

    const-string v18, "Driving/DrvComfortParking"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x400002f

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Driving/DrvCoolLiquid"

    const-string v9, "\u9a7e\u9a76 / Drv Cool Liquid"

    const-string v12, "Driving/DrvCoolLiquid"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x4000037

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Driving/DrvEpsModeset"

    const-string v15, "\u9a7e\u9a76 / Drv Eps Modeset"

    const-string v18, "Driving/DrvEpsModeset"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x4000029

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Driving/DrvHighWay"

    const-string v9, "\u9a7e\u9a76 / Drv High Way"

    const-string v12, "Driving/DrvHighWay"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x400002c

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Driving/DrvManualConvenient"

    const-string v15, "\u9a7e\u9a76 / Drv Manual Convenient"

    const-string v18, "Driving/DrvManualConvenient"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x4000038

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Driving/PROPMODESET"

    const-string v10, "\u9a7e\u9a76 / PROPMODESET"

    const-string v13, "Driving/PROPMODESET"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x400002d

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Driving/SuspensionAdjustStatus"

    const-string v17, "\u9a7e\u9a76 / Suspension Adjust Status"

    const-string v20, "Driving/SuspensionAdjustStatus"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x4000030

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "Driving/SuspensionCurrentLevel"

    const-string v23, "\u9a7e\u9a76 / Suspension Current Level"

    const-string v26, "Driving/SuspensionCurrentLevel"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x400002e

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Driving/SuspensionMaintain"

    const-string v17, "\u9a7e\u9a76 / Suspension Maintain"

    const-string v20, "Driving/SuspensionMaintain"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v10}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_DrivingInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 98

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x400005a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/AccPedal"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / ACC Pedal"

    const-string v5, "DrivingInfo/AccPedal"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x4000024

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "DrivingInfo/AccumulativeAverageSpeed"

    const-string v10, "\u884c\u8f66\u4fe1\u606f / Accumulative Average Speed"

    const-string v13, "DrivingInfo/AccumulativeAverageSpeed"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x400000d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/AccumulativeDriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Accumulative Drive Range"

    const-string v5, "DrivingInfo/AccumulativeDriveRange"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x400001a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "DrivingInfo/AccumulativeDriveTime"

    const-string v12, "\u884c\u8f66\u4fe1\u606f / Accumulative Drive Time"

    const-string v15, "DrivingInfo/AccumulativeDriveTime"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x4000060

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/BreakPositon"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Break Positon"

    const-string v5, "DrivingInfo/BreakPositon"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x400006e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "DrivingInfo/ControlLock"

    const-string v14, "\u884c\u8f66\u4fe1\u606f / Control Lock"

    const-string v17, "DrivingInfo/ControlLock"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x4000064

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/DepartureReminder"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Departure Reminder"

    const-string v5, "DrivingInfo/DepartureReminder"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x400000c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "DrivingInfo/DrivingInfoType"

    const-string v16, "\u884c\u8f66\u4fe1\u606f / Driving Info Type"

    const-string v19, "DrivingInfo/DrivingInfoType"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x4000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/DrivingMode"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u9a7e\u9a76\u6a21\u5f0f"

    const-string v5, "DrivingInfo/DrivingMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x4000073

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "DrivingInfo/DrivingModeExchange"

    const-string v18, "\u884c\u8f66\u4fe1\u606f / Driving Mode Exchange"

    const-string v21, "DrivingInfo/DrivingModeExchange"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x4000072

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/DrivingModeOut"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Driving Mode Out"

    const-string v5, "DrivingInfo/DrivingModeOut"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x5000031

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "DrivingInfo/EnergyMode"

    const-string v20, "\u884c\u8f66\u4fe1\u606f / Energy Mode"

    const-string v23, "DrivingInfo/EnergyMode"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x5000030

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EnginePower"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u53d1\u52a8\u673a\u529f\u7387"

    const-string v5, "DrivingInfo/EnginePower"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x4000057

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "DrivingInfo/EVDriveCycleAverageConsumption"

    const-string v22, "\u884c\u8f66\u4fe1\u606f / \u7535\u9a71\u5faa\u73af\u5e73\u5747\u80fd\u8017"

    const-string v25, "DrivingInfo/EVDriveCycleAverageConsumption"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x4000058

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVLastChargeAverageConsumption"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u4e0a\u6b21\u5145\u7535\u5e73\u5747\u80fd\u8017"

    const-string v5, "DrivingInfo/EVLastChargeAverageConsumption"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x400004e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "DrivingInfo/EVLastChargeDriveRange"

    const-string v24, "\u884c\u8f66\u4fe1\u606f / \u4e0a\u6b21\u5145\u7535\u884c\u9a76\u91cc\u7a0b"

    const-string v27, "DrivingInfo/EVLastChargeDriveRange"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x4000053

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVLastChargeDriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u4e0a\u6b21\u5145\u7535\u884c\u9a76\u65f6\u957f"

    const-string v5, "DrivingInfo/EVLastChargeDriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-string v26, "\u884c\u8f66\u4fe1\u606f / \u957f\u671f\u5e73\u5747\u7535\u8017"

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-string v25, "DrivingInfo/EVLongAverageConsumption"

    const-string v29, "DrivingInfo/EVLongAverageConsumption"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u957f\u671f\u7eaf\u7535\u7eed\u822a"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "DrivingInfo/EVLongDriveRange"

    const-string v5, "DrivingInfo/EVLongDriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x4000054

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "DrivingInfo/EVTotalAverageConsumption"

    const-string v28, "\u884c\u8f66\u4fe1\u606f / EVTotal Average Consumption"

    const-string v31, "DrivingInfo/EVTotalAverageConsumption"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x400004a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVTotalDriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u603b\u7eaf\u7535\u7eed\u822a"

    const-string v5, "DrivingInfo/EVTotalDriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x400004f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "DrivingInfo/EVTotalDriveTime"

    const-string v30, "\u884c\u8f66\u4fe1\u606f / EVTotal Drive Time"

    const-string v33, "DrivingInfo/EVTotalDriveTime"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x4000055

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVTripAAverageConsumption"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Trip A \u5e73\u5747\u7535\u8017"

    const-string v5, "DrivingInfo/EVTripAAverageConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x400004b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "DrivingInfo/EVTripADriveRange"

    const-string v32, "\u884c\u8f66\u4fe1\u606f / EVTrip ADrive Range"

    const-string v35, "DrivingInfo/EVTripADriveRange"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x4000051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVTripADriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / EVTrip ADrive Time"

    const-string v5, "DrivingInfo/EVTripADriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x4000056

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "DrivingInfo/EVTripBAverageConsumption"

    const-string v34, "\u884c\u8f66\u4fe1\u606f / EVTrip BAverage Consumption"

    const-string v37, "DrivingInfo/EVTripBAverageConsumption"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x400004c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVTripBDriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / EVTrip BDrive Range"

    const-string v5, "DrivingInfo/EVTripBDriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x4000052

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "DrivingInfo/EVTripBDriveTime"

    const-string v36, "\u884c\u8f66\u4fe1\u606f / EVTrip BDrive Time"

    const-string v39, "DrivingInfo/EVTripBDriveTime"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x400004d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/EVTripDriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u5355\u6b21\u7eaf\u7535\u7eed\u822a"

    const-string v5, "DrivingInfo/EVTripDriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x4000050

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "DrivingInfo/EVTripDriveTime"

    const-string v38, "\u884c\u8f66\u4fe1\u606f / \u5355\u6b21\u7eaf\u7535\u65f6\u957f"

    const-string v41, "DrivingInfo/EVTripDriveTime"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x4000048

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelDriveCycleAverageConsumption"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Drive Cycle Average Consumption"

    const-string v5, "DrivingInfo/FuelDriveCycleAverageConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x4000049

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "DrivingInfo/FuelLastRefuelAverageConsumption"

    const-string v40, "\u884c\u8f66\u4fe1\u606f / Fuel Last Refuel Average Consumption"

    const-string v43, "DrivingInfo/FuelLastRefuelAverageConsumption"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x400003f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelLastRefuelDriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Last Refuel Drive Range"

    const-string v5, "DrivingInfo/FuelLastRefuelDriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x4000044

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "DrivingInfo/FuelLastRefuelDriveTime"

    const-string v42, "\u884c\u8f66\u4fe1\u606f / Fuel Last Refuel Drive Time"

    const-string v45, "DrivingInfo/FuelLastRefuelDriveTime"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u957f\u671f\u5e73\u5747\u6cb9\u8017"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "DrivingInfo/FuelLongAverageConsumption"

    const-string v5, "DrivingInfo/FuelLongAverageConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-string v44, "\u884c\u8f66\u4fe1\u606f / \u957f\u671f\u71c3\u6cb9\u7eed\u822a"

    const/16 v45, 0x0

    const/16 v46, 0x0

    const-string v43, "DrivingInfo/FuelLongDriveRange"

    const-string v47, "DrivingInfo/FuelLongDriveRange"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x4000045

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTotalAverageConsumption"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Total Average Consumption"

    const-string v5, "DrivingInfo/FuelTotalAverageConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x400003b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "DrivingInfo/FuelTotalDriveRange"

    const-string v46, "\u884c\u8f66\u4fe1\u606f / \u71c3\u6cb9\u603b\u7eed\u822a"

    const-string v49, "DrivingInfo/FuelTotalDriveRange"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0x4000040

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTotalDriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Total Drive Time"

    const-string v5, "DrivingInfo/FuelTotalDriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x4000046

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "DrivingInfo/FuelTripAAverageConsumption"

    const-string v48, "\u884c\u8f66\u4fe1\u606f / Fuel Trip AAverage Consumption"

    const-string v51, "DrivingInfo/FuelTripAAverageConsumption"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0x400003c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTripADriveRange"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Trip ADrive Range"

    const-string v5, "DrivingInfo/FuelTripADriveRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0x4000041

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "DrivingInfo/FuelTripADriveTime"

    const-string v50, "\u884c\u8f66\u4fe1\u606f / Fuel Trip ADrive Time"

    const-string v53, "DrivingInfo/FuelTripADriveTime"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0x4000047

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTripBAverageConsumption"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Trip BAverage Consumption"

    const-string v5, "DrivingInfo/FuelTripBAverageConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0x400003d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "DrivingInfo/FuelTripBDriveRange"

    const-string v52, "\u884c\u8f66\u4fe1\u606f / Fuel Trip BDrive Range"

    const-string v55, "DrivingInfo/FuelTripBDriveRange"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0x4000042

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTripBDriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Trip BDrive Time"

    const-string v5, "DrivingInfo/FuelTripBDriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0x400003e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "DrivingInfo/FuelTripDriveRange"

    const-string v54, "\u884c\u8f66\u4fe1\u606f / Fuel Trip Drive Range"

    const-string v57, "DrivingInfo/FuelTripDriveRange"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0x4000043

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/FuelTripDriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Fuel Trip Drive Time"

    const-string v5, "DrivingInfo/FuelTripDriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0x400000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    const-wide/32 v0, 0x897ff8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "DrivingInfo/Gear"

    const-string v56, "\u884c\u8f66\u4fe1\u606f / \u6863\u4f4d"

    const-string v59, "DrivingInfo/Gear"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0x4000068

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/IntelligentAvoidance"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Intelligent Avoidance"

    const-string v5, "DrivingInfo/IntelligentAvoidance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0x4000065

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "DrivingInfo/IntelligentSpeedControl"

    const-string v58, "\u884c\u8f66\u4fe1\u606f / Intelligent Speed Control"

    const-string v61, "DrivingInfo/IntelligentSpeedControl"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0x4000061

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/LaneAssistIntervention"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Lane Assist Intervention"

    const-string v5, "DrivingInfo/LaneAssistIntervention"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0x4000069

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "DrivingInfo/LaneAssistWarning"

    const-string v60, "\u884c\u8f66\u4fe1\u606f / Lane Assist Warning"

    const-string v63, "DrivingInfo/LaneAssistWarning"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0x400005c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/Language"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u8bed\u8a00"

    const-string v5, "DrivingInfo/Language"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0x900005c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "DrivingInfo/MaintenanceMileage"

    const-string v62, "\u884c\u8f66\u4fe1\u606f / Maintenance Mileage"

    const-string v65, "DrivingInfo/MaintenanceMileage"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0x900005b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/MaintenanceNotice"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Maintenance Notice"

    const-string v5, "DrivingInfo/MaintenanceNotice"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0x900005d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "DrivingInfo/MaintenanceTime"

    const-string v64, "\u884c\u8f66\u4fe1\u606f / Maintenance Time"

    const-string v67, "DrivingInfo/MaintenanceTime"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0x500003c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/MotorSpeed"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Motor Speed"

    const-string v5, "DrivingInfo/MotorSpeed"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-string v66, "\u884c\u8f66\u4fe1\u606f / \u91cc\u7a0b / \u603b\u8ba1"

    const/16 v67, 0x0

    const/16 v68, 0x0

    const-string v65, "DrivingInfo/Odometer/Total"

    const-string v69, "DrivingInfo/Odometer/Total"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u91cc\u7a0b / Trip A"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "DrivingInfo/Odometer/TripA"

    const-string v5, "DrivingInfo/Odometer/TripA"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-string v68, "\u884c\u8f66\u4fe1\u606f / \u91cc\u7a0b / Trip B"

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-string v67, "DrivingInfo/Odometer/TripB"

    const-string v71, "DrivingInfo/Odometer/TripB"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0x400001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/PowerStatus"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Power Status"

    const-string v5, "DrivingInfo/PowerStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-string v70, "\u884c\u8f66\u4fe1\u606f / \u5b9e\u9645\u52a8\u529b\u72b6\u6001"

    const/16 v71, 0x0

    const/16 v72, 0x0

    const-string v69, "DrivingInfo/RealPowerStatus"

    const-string v73, "DrivingInfo/RealPowerStatus"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0x4000062

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/RearApproachWarning"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Rear Approach Warning"

    const-string v5, "DrivingInfo/RearApproachWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0x4000063

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "DrivingInfo/RearCrossCollisionWarning"

    const-string v72, "\u884c\u8f66\u4fe1\u606f / Rear Cross Collision Warning"

    const-string v75, "DrivingInfo/RearCrossCollisionWarning"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0x4000059

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/RemainingMileageMode"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Remaining Mileage Mode"

    const-string v5, "DrivingInfo/RemainingMileageMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v72, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v72

    const-wide/32 v0, 0x400005d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    const-string v73, "DrivingInfo/ResetTotalDrivingInfo"

    const-string v74, "\u884c\u8f66\u4fe1\u606f / Reset Total Driving Info"

    const-string v77, "DrivingInfo/ResetTotalDrivingInfo"

    invoke-direct/range {v72 .. v77}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v0

    const-wide/32 v1, 0x400005e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/ResetTripA"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Reset Trip A"

    const-string v5, "DrivingInfo/ResetTripA"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v74, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v74

    const-wide/32 v0, 0x400005f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    const-string v75, "DrivingInfo/ResetTripB"

    const-string v76, "\u884c\u8f66\u4fe1\u606f / Reset Trip B"

    const-string v79, "DrivingInfo/ResetTripB"

    invoke-direct/range {v74 .. v79}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v0

    const-wide/32 v1, 0x400000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v1, 0x897ff7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/Speed"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u8f66\u901f"

    const-string v5, "DrivingInfo/Speed"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v76, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v75, v76

    const-wide/32 v0, 0x4000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    const-string v77, "DrivingInfo/SpeedUnit"

    const-string v78, "\u884c\u8f66\u4fe1\u606f / Speed Unit"

    const-string v81, "DrivingInfo/SpeedUnit"

    invoke-direct/range {v76 .. v81}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v76, v0

    const-wide/32 v1, 0x4000017

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/SteeringWheelAngle"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u65b9\u5411\u76d8\u89d2\u5ea6"

    const-string v5, "DrivingInfo/SteeringWheelAngle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v78, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v77, v78

    const-wide/32 v0, 0x3000037

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    const-string v79, "DrivingInfo/Theme"

    const-string v80, "\u884c\u8f66\u4fe1\u606f / \u4e3b\u9898"

    const-string v83, "DrivingInfo/Theme"

    invoke-direct/range {v78 .. v83}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v78, v0

    const-wide/32 v1, 0x4000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TotalDriveDistance"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / \u603b\u884c\u9a76\u8ddd\u79bb"

    const-string v5, "DrivingInfo/TotalDriveDistance"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v80, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v79, v80

    const-wide/32 v0, 0x4000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v83

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v84

    const-string v81, "DrivingInfo/TotalDriveTime"

    const-string v82, "\u884c\u8f66\u4fe1\u606f / Total Drive Time"

    const-string v85, "DrivingInfo/TotalDriveTime"

    invoke-direct/range {v80 .. v85}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v80, v0

    const-wide/32 v1, 0x4000067

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TrafficSignalRecognition"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Traffic Signal Recognition"

    const-string v5, "DrivingInfo/TrafficSignalRecognition"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v82, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v81, v82

    const-wide/32 v0, 0x4000066

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v86

    const-string v83, "DrivingInfo/TrafficSignRecognition"

    const-string v84, "\u884c\u8f66\u4fe1\u606f / Traffic Sign Recognition"

    const-string v87, "DrivingInfo/TrafficSignRecognition"

    invoke-direct/range {v82 .. v87}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v82, v0

    const-wide/32 v1, 0x4000074

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TripAAverageSpeed"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Trip AAverage Speed"

    const-string v5, "DrivingInfo/TripAAverageSpeed"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v84, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v83, v84

    const-wide/32 v0, 0x4000019

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v87

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v88

    const-string v85, "DrivingInfo/TripAverageSpeed"

    const-string v86, "\u884c\u8f66\u4fe1\u606f / Trip Average Speed"

    const-string v89, "DrivingInfo/TripAverageSpeed"

    invoke-direct/range {v84 .. v89}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v84, v0

    const-wide/32 v1, 0x4000075

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TripBAverageSpeed"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Trip BAverage Speed"

    const-string v5, "DrivingInfo/TripBAverageSpeed"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v86, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v85, v86

    const-wide/32 v0, 0x400003a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v89

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v90

    const-string v87, "DrivingInfo/TripConsumptionUnit"

    const-string v88, "\u884c\u8f66\u4fe1\u606f / Trip Consumption Unit"

    const-string v91, "DrivingInfo/TripConsumptionUnit"

    invoke-direct/range {v86 .. v91}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v86, v0

    const-wide/32 v1, 0x4000009

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TripDistantUnit"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Trip Distant Unit"

    const-string v5, "DrivingInfo/TripDistantUnit"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v88, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v87, v88

    const-wide/32 v0, 0x4000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v91

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    const-string v89, "DrivingInfo/TripDriveRange"

    const-string v90, "\u884c\u8f66\u4fe1\u606f / Trip Drive Range"

    const-string v93, "DrivingInfo/TripDriveRange"

    invoke-direct/range {v88 .. v93}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v88, v0

    const-wide/32 v1, 0x4000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/TripDriveTime"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / Trip Drive Time"

    const-string v5, "DrivingInfo/TripDriveTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v90, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v89, v90

    const-wide/32 v0, 0x4000076

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    const-string v91, "DrivingInfo/TripElectricUnit"

    const-string v92, "\u884c\u8f66\u4fe1\u606f / Trip Electric Unit"

    const-string v95, "DrivingInfo/TripElectricUnit"

    invoke-direct/range {v90 .. v95}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v90, v0

    const-wide/32 v1, 0xd000049

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "DrivingInfo/V2xEnable"

    const-string v2, "\u884c\u8f66\u4fe1\u606f / V 2 x Enable"

    const-string v5, "DrivingInfo/V2xEnable"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v92, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v91, v92

    const-wide/32 v0, 0x400006d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    const-string v93, "DrivingInfo/WindowLock"

    const-string v94, "\u884c\u8f66\u4fe1\u606f / \u8f66\u7a97\u9501"

    const-string v97, "DrivingInfo/WindowLock"

    invoke-direct/range {v92 .. v97}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v91}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_EnergyInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 76

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x5000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ACChargeCurrentLimit"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / ACCharge Current Limit"

    const-string v5, "EnergyInfo/ACChargeCurrentLimit"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x500004b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "EnergyInfo/AverageEnergyConsumption"

    const-string v10, "\u80fd\u6e90\u4fe1\u606f / Average Energy Consumption"

    const-string v13, "EnergyInfo/AverageEnergyConsumption"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x5000058

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/BatteryHeatingActiveStatus"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u7535\u6c60\u52a0\u70ed\u6fc0\u6d3b\u72b6\u6001"

    const-string v5, "EnergyInfo/BatteryHeatingActiveStatus"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x5000041

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "EnergyInfo/BatteryHeatingRemainTime"

    const-string v12, "\u80fd\u6e90\u4fe1\u606f / \u7535\u6c60\u52a0\u70ed\u5269\u4f59\u65f6\u95f4\uff08\u517c\u5bb9\u6620\u5c04\u5230\uff1a\u8f66\u8eab\u4fe1\u606f / \u7535\u6c60\u52a0\u70ed\u5269\u4f59\u65f6\u95f4\uff09"

    const-string v15, "BodyInfo/BatteryHeatingRemainTime"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x5000044

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/BatterySOC"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Battery SOC"

    const-string v5, "EnergyInfo/BatterySOC"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x5000043

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "EnergyInfo/BatterySOCStatus"

    const-string v14, "\u80fd\u6e90\u4fe1\u606f / Battery SOCStatus"

    const-string v17, "EnergyInfo/BatterySOCStatus"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x5000059

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/BatteryTempratureMin"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u7535\u6c60\u6700\u4f4e\u6e29\u5ea6"

    const-string v5, "EnergyInfo/BatteryTempratureMin"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u80fd\u6e90\u4fe1\u606f / CDC Data Tsk Gin"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v15, "EnergyInfo/CdcDataTskGin"

    const-string v19, "EnergyInfo/CdcDataTskGin"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x5000049

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargeConnectLamp"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Charge Connect Lamp"

    const-string v5, "EnergyInfo/ChargeConnectLamp"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x500000c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "EnergyInfo/ChargeCurrent"

    const-string v18, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u7535\u6d41"

    const-string v21, "EnergyInfo/ChargeCurrent"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x500000a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargeIncreasedRange"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u589e\u52a0\u7eed\u822a"

    const-string v5, "EnergyInfo/ChargeIncreasedRange"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x5000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "EnergyInfo/ChargekWh"

    const-string v20, "\u80fd\u6e90\u4fe1\u606f / Chargek Wh"

    const-string v23, "EnergyInfo/ChargekWh"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x500000d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargePower"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u529f\u7387"

    const-string v5, "EnergyInfo/ChargePower"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x500000e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "EnergyInfo/ChargeRemainTime"

    const-string v22, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u5269\u4f59\u65f6\u95f4"

    const-string v25, "EnergyInfo/ChargeRemainTime"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x5000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargeSocThreshold"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Charge SOC Threshold"

    const-string v5, "EnergyInfo/ChargeSocThreshold"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x5000047

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "EnergyInfo/ChargeState"

    const-string v24, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u72b6\u6001"

    const-string v27, "EnergyInfo/ChargeState"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x5000048

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargeStateLamp"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Charge State Lamp"

    const-string v5, "EnergyInfo/ChargeStateLamp"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x5000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "EnergyInfo/ChargeStatus"

    const-string v26, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u72b6\u6001"

    const-string v29, "EnergyInfo/ChargeStatus"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x5000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ChargeType"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u5145\u7535\u7c7b\u578b"

    const-string v5, "EnergyInfo/ChargeType"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x500000b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "EnergyInfo/ChargeVoltage"

    const-string v28, "\u80fd\u6e90\u4fe1\u606f / Charge Voltage"

    const-string v31, "EnergyInfo/ChargeVoltage"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x500001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/DischargeCurrent"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Discharge Current"

    const-string v5, "EnergyInfo/DischargeCurrent"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x5000053

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "EnergyInfo/DischargePower"

    const-string v30, "\u80fd\u6e90\u4fe1\u606f / \u653e\u7535\u529f\u7387"

    const-string v33, "EnergyInfo/DischargePower"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x5000017

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/DischargeSocThreshold"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Discharge SOC Threshold"

    const-string v5, "EnergyInfo/DischargeSocThreshold"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x5000052

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "EnergyInfo/DischargeStatus"

    const-string v32, "\u80fd\u6e90\u4fe1\u606f / \u653e\u7535\u72b6\u6001"

    const-string v35, "EnergyInfo/DischargeStatus"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x500001a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/DischargeVoltage"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u653e\u7535\u7535\u538b"

    const-string v5, "EnergyInfo/DischargeVoltage"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x4000035

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW"

    const-string v34, "\u80fd\u6e90\u4fe1\u606f / DRVMAXFUELCONSUMPTIONMODESW"

    const-string v37, "EnergyInfo/DRVMAXFUELCONSUMPTIONMODESW"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x4000036

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/DRVSOCSET"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / DRVSOCSET"

    const-string v5, "EnergyInfo/DRVSOCSET"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x500002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "EnergyInfo/EnergyConsumptionModel"

    const-string v36, "\u80fd\u6e90\u4fe1\u606f / Energy Consumption Model"

    const-string v39, "EnergyInfo/EnergyConsumptionModel"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x4000015

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/EnergyManagementMode"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Energy Management Mode"

    const-string v5, "EnergyInfo/EnergyManagementMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x4000031

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "EnergyInfo/EnergyManagementModeMemory"

    const-string v38, "\u80fd\u6e90\u4fe1\u606f / Energy Management Mode Memory"

    const-string v41, "EnergyInfo/EnergyManagementModeMemory"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x4000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/EnergyRecoveryMode"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Energy Recovery Mode"

    const-string v5, "EnergyInfo/EnergyRecoveryMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x5000042

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "EnergyInfo/EngineStatus"

    const-string v40, "\u80fd\u6e90\u4fe1\u606f / Engine Status"

    const-string v43, "EnergyInfo/EngineStatus"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x500005a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/FuelLevel"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Fuel Level"

    const-string v5, "EnergyInfo/FuelLevel"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x5000032

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "EnergyInfo/FuelPercent"

    const-string v42, "\u80fd\u6e90\u4fe1\u606f / \u71c3\u6cb9\u767e\u5206\u6bd4"

    const-string v45, "EnergyInfo/FuelPercent"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0x5000033

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/FuelResidualRange"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Fuel Residual Range"

    const-string v5, "EnergyInfo/FuelResidualRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0x5000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "EnergyInfo/HighVoltBatteryCurrent"

    const-string v44, "\u80fd\u6e90\u4fe1\u606f / High Volt Battery Current"

    const-string v47, "EnergyInfo/HighVoltBatteryCurrent"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x5000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/HighVoltBatteryVoltage"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / High Volt Battery Voltage"

    const-string v5, "EnergyInfo/HighVoltBatteryVoltage"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x5000034

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "EnergyInfo/HydrogenPercent"

    const-string v46, "\u80fd\u6e90\u4fe1\u606f / Hydrogen Percent"

    const-string v49, "EnergyInfo/HydrogenPercent"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0x5000035

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/HydrogenRemainRange"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Hydrogen Remain Range"

    const-string v5, "EnergyInfo/HydrogenRemainRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x5000036

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "EnergyInfo/KeyBatteryLevel"

    const-string v48, "\u80fd\u6e90\u4fe1\u606f / Key Battery Level"

    const-string v51, "EnergyInfo/KeyBatteryLevel"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0x5000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/LowVoltBatteryCurrent"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Low Volt Battery Current"

    const-string v5, "EnergyInfo/LowVoltBatteryCurrent"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0x5000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "EnergyInfo/LowVoltBatteryVoltage"

    const-string v50, "\u80fd\u6e90\u4fe1\u606f / Low Volt Battery Voltage"

    const-string v53, "EnergyInfo/LowVoltBatteryVoltage"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0x4000034

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/MAXFUELCONSUMPTIONSW"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / MAXFUELCONSUMPTIONSW"

    const-string v5, "EnergyInfo/MAXFUELCONSUMPTIONSW"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0x5000057

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "EnergyInfo/PowerBatteryWorkingMode"

    const-string v52, "\u80fd\u6e90\u4fe1\u606f / \u52a8\u529b\u7535\u6c60\u5de5\u4f5c\u6a21\u5f0f"

    const-string v55, "EnergyInfo/PowerBatteryWorkingMode"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0x400000e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/PowerConsumption"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Power Consumption"

    const-string v5, "EnergyInfo/PowerConsumption"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0x500002f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "EnergyInfo/PowerFlowDirection"

    const-string v54, "\u80fd\u6e90\u4fe1\u606f / \u80fd\u91cf\u6d41\u5411"

    const-string v57, "EnergyInfo/PowerFlowDirection"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0x5000054

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/RemainingMileage"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Remaining Mileage"

    const-string v5, "EnergyInfo/RemainingMileage"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0x5000055

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "EnergyInfo/RemainingMileageStandard"

    const-string v56, "\u80fd\u6e90\u4fe1\u606f / Remaining Mileage Standard"

    const-string v59, "EnergyInfo/RemainingMileageStandard"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0x5000045

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/RemoteStartReq"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Remote Start Req"

    const-string v5, "EnergyInfo/RemoteStartReq"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0x500002d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "EnergyInfo/ResidualEnergyDisplayMode"

    const-string v58, "\u80fd\u6e90\u4fe1\u606f / \u5269\u4f59\u80fd\u91cf\u663e\u793a\u6a21\u5f0f"

    const-string v61, "EnergyInfo/ResidualEnergyDisplayMode"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0x5000037

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ResidualRange"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / \u5269\u4f59\u7eed\u822a"

    const-string v5, "EnergyInfo/ResidualRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0x5000038

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "EnergyInfo/ResidualRangeBy10km"

    const-string v60, "\u80fd\u6e90\u4fe1\u606f / Residual Range By 10 km"

    const-string v63, "EnergyInfo/ResidualRangeBy10km"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0x5000039

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ResidualRangeBy25km"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Residual Range By 25 km"

    const-string v5, "EnergyInfo/ResidualRangeBy25km"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0x500003a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "EnergyInfo/ResidualRangeBy50km"

    const-string v62, "\u80fd\u6e90\u4fe1\u606f / Residual Range By 50 km"

    const-string v65, "EnergyInfo/ResidualRangeBy50km"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0x500000f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ScheduledChargeMode"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Scheduled Charge Mode"

    const-string v5, "EnergyInfo/ScheduledChargeMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0x5000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "EnergyInfo/ScheduledChargeStartTime"

    const-string v64, "\u80fd\u6e90\u4fe1\u606f / Scheduled Charge Start Time"

    const-string v67, "EnergyInfo/ScheduledChargeStartTime"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0x5000011

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ScheduledChargeStopTime"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Scheduled Charge Stop Time"

    const-string v5, "EnergyInfo/ScheduledChargeStopTime"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0x500005b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "EnergyInfo/ScheduledChargeTime"

    const-string v66, "\u80fd\u6e90\u4fe1\u606f / Scheduled Charge Time"

    const-string v69, "EnergyInfo/ScheduledChargeTime"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0x5000014

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/ScheduledChargeTimeMode"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Scheduled Charge Time Mode"

    const-string v5, "EnergyInfo/ScheduledChargeTimeMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0x500004a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "EnergyInfo/SmartEnergyManager"

    const-string v68, "\u80fd\u6e90\u4fe1\u606f / \u667a\u80fd\u80fd\u91cf\u7ba1\u7406"

    const-string v71, "EnergyInfo/SmartEnergyManager"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0x5000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/SocHolding"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / SOC \u4fdd\u6301"

    const-string v5, "EnergyInfo/SocHolding"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0x500001d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "EnergyInfo/SocPercent"

    const-string v70, "\u80fd\u6e90\u4fe1\u606f / SOC \u767e\u5206\u6bd4"

    const-string v73, "EnergyInfo/SocPercent"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0x500001e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/SocResidualRange"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / SOC \u5269\u4f59\u7eed\u822a"

    const-string v5, "EnergyInfo/SocResidualRange"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0x700000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "EnergyInfo/SoundEqualizerEffectLow"

    const-string v72, "\u80fd\u6e90\u4fe1\u606f / \u97f3\u6548\u5747\u8861\u5668\u4f4e\u9891\uff08\u517c\u5bb9\u6620\u5c04\u5230\uff1a\u5a92\u4f53 / \u97f3\u6548\u5747\u8861\u5668\u4f4e\u9891\uff09"

    const-string v75, "Media/SoundEqualizerEffectLow"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0x5000046

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EnergyInfo/UseCarBook"

    const-string v2, "\u80fd\u6e90\u4fe1\u606f / Use Car Book"

    const-string v5, "EnergyInfo/UseCarBook"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v70}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_EngineeringMode(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "EngineeringMode/Battery"

    const-string v2, "\u5de5\u7a0b\u6a21\u5f0f / \u7535\u6c60"

    const-string v5, "EngineeringMode/Battery"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x2b000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "EngineeringMode/KeyInput/MFS_Start_Pause"

    const-string v8, "\u5de5\u7a0b\u6a21\u5f0f / \u6309\u952e\u8f93\u5165 / MFS Start Pause"

    const-string v11, "EngineeringMode/KeyInput/MFS_Start_Pause"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_FactoryTest(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "FactoryTest/ICScreenTest"

    const-string v2, "Factory Test / ICScreen Test"

    const-string v5, "FactoryTest/ICScreenTest"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Fault(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6545\u969c\u4fe1\u606f / ABS"

    const/4 v3, 0x0

    const-string v1, "Fault/ABS"

    const/4 v4, 0x0

    const-string v5, "Fault/ABS"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6545\u969c\u4fe1\u606f / Air Bag"

    const/4 v10, 0x0

    const-string v8, "Fault/AirBag"

    const/4 v11, 0x0

    const-string v12, "Fault/AirBag"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6545\u969c\u4fe1\u606f / Brake System"

    const/16 v16, 0x0

    const-string v14, "Fault/BrakeSystem"

    const/16 v17, 0x0

    const-string v18, "Fault/BrakeSystem"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6545\u969c\u4fe1\u606f / Engine"

    const-string v8, "Fault/Engine"

    const-string v12, "Fault/Engine"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0xa00000d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Fault/ESC"

    const-string v15, "\u6545\u969c\u4fe1\u606f / \u8f66\u8eab\u7a33\u5b9a\u7cfb\u7edf"

    const-string v18, "Fault/ESC"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0xb00001d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Fault/LowVoltBattery"

    const-string v9, "\u6545\u969c\u4fe1\u606f / Low Volt Battery"

    const-string v12, "Fault/LowVoltBattery"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6545\u969c\u4fe1\u606f / Motor"

    const/16 v16, 0x0

    const-string v14, "Fault/Motor"

    const/16 v17, 0x0

    const-string v18, "Fault/Motor"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u6545\u969c\u4fe1\u606f / Parking Brake"

    const/4 v11, 0x0

    const-string v9, "Fault/ParkingBrake"

    const/4 v12, 0x0

    const-string v13, "Fault/ParkingBrake"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u6545\u969c\u4fe1\u606f / Power Battery"

    const/16 v18, 0x0

    const-string v16, "Fault/PowerBattery"

    const/16 v19, 0x0

    const-string v20, "Fault/PowerBattery"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u6545\u969c\u4fe1\u606f / Power System"

    const/16 v24, 0x0

    const-string v22, "Fault/PowerSystem"

    const/16 v25, 0x0

    const-string v26, "Fault/PowerSystem"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0xb000019

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Fault/VehicleBreakdown"

    const-string v17, "\u6545\u969c\u4fe1\u606f / Vehicle Breakdown"

    const-string v20, "Fault/VehicleBreakdown"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v12, 0xb000018

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "Fault/VehicleSerious"

    const-string v23, "\u6545\u969c\u4fe1\u606f / Vehicle Serious"

    const-string v26, "Fault/VehicleSerious"

    move-object/from16 v21, v11

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Fragrance(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x3000035

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Fragrance/Cct"

    const-string v2, "\u9999\u6c1b / Cct"

    const-string v5, "Fragrance/Cct"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x3000048

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "Fragrance/Name"

    const-string v8, "\u9999\u6c1b / Name"

    const-string v11, "Fragrance/Name"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x3000030

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "Fragrance/Status"

    const-string v3, "\u9999\u6c1b / \u72b6\u6001"

    const-string v6, "Fragrance/Status"

    move-object v1, v7

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x3000034

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Fragrance/Tat"

    const-string v10, "\u9999\u6c1b / Tat"

    const-string v13, "Fragrance/Tat"

    move-object v8, v1

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Front(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u524d\u6392 / \u5b89\u5168\u5e26"

    const/4 v3, 0x0

    const-string v1, "Front/SeatBelt"

    const/4 v4, 0x0

    const-string v5, "Front/SeatBelt"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_FuelBar(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "FuelBar/Notice"

    const-string v2, "Fuel Bar / Notice"

    const-string v5, "FuelBar/Notice"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GPS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "GPS / altitude"

    const/4 v3, 0x0

    const-string v1, "GPS/altitude"

    const/4 v4, 0x0

    const-string v5, "GPS/altitude"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "GPS / bearing"

    const/4 v9, 0x0

    const-string v7, "GPS/bearing"

    const/4 v10, 0x0

    const-string v11, "GPS/bearing"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "GPS / latitude"

    const-string v2, "GPS/latitude"

    const/4 v5, 0x0

    const-string v6, "GPS/latitude"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "GPS / longitude"

    const/4 v11, 0x0

    const-string v9, "GPS/longitude"

    const/4 v12, 0x0

    const-string v13, "GPS/longitude"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_1C2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_1C2 / ESP Rollerbench Enable"

    const/4 v3, 0x0

    const-string v1, "GW_1C2/ESP_RollerbenchEnable"

    const/4 v4, 0x0

    const-string v5, "GW_1C2/ESP_RollerbenchEnable"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1C2 / ESP Rollerbench Type"

    const/4 v10, 0x0

    const-string v8, "GW_1C2/ESP_RollerbenchType"

    const/4 v11, 0x0

    const-string v12, "GW_1C2/ESP_RollerbenchType"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1C2 / Esp Brk Li On Req"

    const/16 v16, 0x0

    const-string v14, "GW_1C2/EspBrkLiOnReq"

    const/16 v17, 0x0

    const-string v18, "GW_1C2/EspBrkLiOnReq"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1C2 / Esp Hdc Oper Sts"

    const-string v8, "GW_1C2/EspHdcOperSts"

    const-string v12, "GW_1C2/EspHdcOperSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1C2 / Esp \u8f66\u8f86 Spd"

    const-string v14, "GW_1C2/EspVehSpd"

    const-string v18, "GW_1C2/EspVehSpd"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1C2 / IBCU BDC Status"

    const-string v8, "GW_1C2/IBCU_BDC_Status"

    const-string v12, "GW_1C2/IBCU_BDC_Status"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1C2 / IBCU Brake Disc High Temp Warning"

    const-string v14, "GW_1C2/IBCU_BrakeDiscHighTempWarning"

    const-string v18, "GW_1C2/IBCU_BrakeDiscHighTempWarning"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_1C2 / IBCU BDCAvlbl Sts"

    const-string v9, "GW_1C2/IbcuBDCAvlblSts"

    const/4 v12, 0x0

    const-string v13, "GW_1C2/IbcuBDCAvlblSts"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_1C2 / IBCU HDCAvlbl Sts"

    const/16 v18, 0x0

    const-string v16, "GW_1C2/IbcuHDCAvlblSts"

    const/16 v19, 0x0

    const-string v20, "GW_1C2/IbcuHDCAvlblSts"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_1E5(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Batt No Fu Charg Req"

    const/4 v3, 0x0

    const-string v1, "GW_1E5/BcuBattNoFuChargReq"

    const/4 v4, 0x0

    const-string v5, "GW_1E5/BcuBattNoFuChargReq"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Batt Pls Heag Sts Fb"

    const/4 v10, 0x0

    const-string v8, "GW_1E5/BcuBattPlsHeagStsFb"

    const/4 v11, 0x0

    const-string v12, "GW_1E5/BcuBattPlsHeagStsFb"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Batt SOC Under Lamp"

    const/16 v16, 0x0

    const-string v14, "GW_1E5/BcuBattSocUnderLamp"

    const/16 v17, 0x0

    const-string v18, "GW_1E5/BcuBattSocUnderLamp"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Dc Char Vin Set Sts"

    const-string v8, "GW_1E5/BcuDcCharVinSetSts"

    const-string v12, "GW_1E5/BcuDcCharVinSetSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0xb000027

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "GW_1E5/BcuDcTextDispReq"

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Dc Text Disp Req"

    const-string v18, "GW_1E5/BcuDcTextDispReq"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Pls Heat Ti Rem"

    const-string v8, "GW_1E5/BcuPlsHeatTiRem"

    const-string v12, "GW_1E5/BcuPlsHeatTiRem"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0xb000024

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "GW_1E5/BcuTextDispReq"

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_1E5 / BCU Text Disp Req"

    const-string v18, "GW_1E5/BcuTextDispReq"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_1E5 / Ems Eng Sts"

    const-string v9, "GW_1E5/EmsEngSts"

    const/4 v12, 0x0

    const-string v13, "GW_1E5/EmsEngSts"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_1E5 / Itms ACEnergy Mod Set Fb"

    const/16 v18, 0x0

    const-string v16, "GW_1E5/ItmsACEnergyModSetFb"

    const/16 v19, 0x0

    const-string v20, "GW_1E5/ItmsACEnergyModSetFb"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u7f51\u5173\u62a5\u6587 GW_1E5 / Rmipu Pls Heatg Sts"

    const/16 v24, 0x0

    const-string v22, "GW_1E5/RmipuPlsHeatgSts"

    const/16 v25, 0x0

    const-string v26, "GW_1E5/RmipuPlsHeatgSts"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_1E5 / Tms Ac Envtl T"

    const-string v16, "GW_1E5/TmsAcEnvtlT"

    const-string v20, "GW_1E5/TmsAcEnvtlT"

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u7f51\u5173\u62a5\u6587 GW_1E5 / Tms Oper Mod"

    const-string v22, "GW_1E5/TmsOperMod"

    const-string v26, "GW_1E5/TmsOperMod"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_244(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_244 / ACC \u6a21\u5f0f"

    const/4 v3, 0x0

    const-string v1, "GW_244/ACC_ACCMode"

    const/4 v4, 0x0

    const-string v5, "GW_244/ACC_ACCMode"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_244 / ACC \u63d0\u793a\u4fe1\u606f"

    const/4 v9, 0x0

    const-string v7, "GW_244/ACC_ADCNotice"

    const/4 v10, 0x0

    const-string v11, "GW_244/ACC_ADCNotice"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_244 / ACC AEB \u6fc0\u6d3b\u72b6\u6001"

    const-string v2, "GW_244/ACC_AEBActive"

    const/4 v5, 0x0

    const-string v6, "GW_244/ACC_AEBActive"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_244 / ACC \u7d27\u6025\u6570\u636e\u8bf7\u6c42"

    const/4 v11, 0x0

    const-string v9, "GW_244/ACC_EmergencyDataRrdReq"

    const/4 v12, 0x0

    const-string v13, "GW_244/ACC_EmergencyDataRrdReq"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_266(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_266 / Bdc Follow Gohome Set Sts"

    const/4 v3, 0x0

    const-string v1, "GW_266/BdcFollowGohomeSetSts"

    const/4 v4, 0x0

    const-string v5, "GW_266/BdcFollowGohomeSetSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_266 / Bdc Reception Lamp Set Sts"

    const/4 v9, 0x0

    const-string v7, "GW_266/BdcReceptionLampSetSts"

    const/4 v10, 0x0

    const-string v11, "GW_266/BdcReceptionLampSetSts"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_288(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_288 / BCM Drvr Door Lck Sts"

    const/4 v3, 0x0

    const-string v1, "GW_288/BcmDrvrDoorLckSts"

    const/4 v4, 0x0

    const-string v5, "GW_288/BcmDrvrDoorLckSts"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_288 / BCM Hi Beam Sts"

    const/4 v10, 0x0

    const-string v8, "GW_288/BcmHiBeamSts"

    const/4 v11, 0x0

    const-string v12, "GW_288/BcmHiBeamSts"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x800001b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-wide/32 v3, 0x897ff9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "GW_288/BcmLoBeamSts"

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_288 / BCM Lo Beam Sts\uff08\u517c\u5bb9\u6620\u5c04\u5230\uff1a\u706f\u5149 / \u8fd1\u5149\u706f\uff09"

    const-string v18, "Light/LowBeam"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_288 / BCM Pass Door Lck Sts"

    const-string v8, "GW_288/BcmPassDoorLckSts"

    const-string v12, "GW_288/BcmPassDoorLckSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_288 / Bdc Le Re Child Lock Sts"

    const/16 v16, 0x0

    const-string v14, "GW_288/BdcLeReChildLockSts"

    const/16 v17, 0x0

    const-string v18, "GW_288/BdcLeReChildLockSts"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_288 / Bdc Ri Re Child Lock Sts"

    const-string v8, "GW_288/BdcRiReChildLockSts"

    const-string v12, "GW_288/BdcRiReChildLockSts"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_2A4(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_2A4 / LCDAR BSD LCAAlert"

    const/4 v3, 0x0

    const-string v1, "GW_2A4/LCDAR_BSD_LCAAlert"

    const/4 v4, 0x0

    const-string v5, "GW_2A4/LCDAR_BSD_LCAAlert"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_2A4 / LCDAR Left BSD LCAAlert"

    const/4 v9, 0x0

    const-string v7, "GW_2A4/LCDAR_Left_BSD_LCAAlert"

    const/4 v10, 0x0

    const-string v11, "GW_2A4/LCDAR_Left_BSD_LCAAlert"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_2A4 / LCDAR Left RCTAAlert"

    const-string v2, "GW_2A4/LCDAR_Left_RCTAAlert"

    const/4 v5, 0x0

    const-string v6, "GW_2A4/LCDAR_Left_RCTAAlert"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_2A4 / LCDAR RCTAAlert"

    const/4 v11, 0x0

    const-string v9, "GW_2A4/LCDAR_RCTAAlert"

    const/4 v12, 0x0

    const-string v13, "GW_2A4/LCDAR_RCTAAlert"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_2AD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173 \u62a5\u6587 2AD / LCDAL SEAEnable Status"

    const/4 v3, 0x0

    const-string v1, "GW_2AD/LCDAL_SEAEnableStatus"

    const/4 v4, 0x0

    const-string v5, "GW_2AD/LCDAL_SEAEnableStatus"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_2E1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_2E1 / LFC Sector Dist"

    const/4 v3, 0x0

    const-string v1, "GW_2E1/LFC_Sector_Dist"

    const/4 v4, 0x0

    const-string v5, "GW_2E1/LFC_Sector_Dist"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_2E1 / LFM Sector Dist"

    const/4 v10, 0x0

    const-string v8, "GW_2E1/LFM_Sector_Dist"

    const/4 v11, 0x0

    const-string v12, "GW_2E1/LFM_Sector_Dist"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_2E1 / LRC Sector Dist"

    const/16 v16, 0x0

    const-string v14, "GW_2E1/LRC_Sector_Dist"

    const/16 v17, 0x0

    const-string v18, "GW_2E1/LRC_Sector_Dist"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_2E1 / LRM Sector Dist"

    const-string v8, "GW_2E1/LRM_Sector_Dist"

    const-string v12, "GW_2E1/LRM_Sector_Dist"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_2E1 / RFM Sector Dist"

    const-string v14, "GW_2E1/RFM_Sector_Dist"

    const-string v18, "GW_2E1/RFM_Sector_Dist"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_2E1 / RRC Sector Dist"

    const-string v8, "GW_2E1/RRC_Sector_Dist"

    const-string v12, "GW_2E1/RRC_Sector_Dist"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_2E1 / RRM Sector Dist"

    const-string v14, "GW_2E1/RRM_Sector_Dist"

    const-string v18, "GW_2E1/RRM_Sector_Dist"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_307(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_307 / ACC \u8ddf\u8f66\u8ddd\u79bb\u7b49\u7ea7"

    const/4 v3, 0x0

    const-string v1, "GW_307/ACC_DistanceLevel"

    const/4 v4, 0x0

    const-string v5, "GW_307/ACC_DistanceLevel"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_307 / ACC \u7eb5\u5411 Take Over Req"

    const/4 v9, 0x0

    const-string v7, "GW_307/ACC_LngTakeOverReq"

    const/4 v10, 0x0

    const-string v11, "GW_307/ACC_LngTakeOverReq"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_307 / ACC Set Speed"

    const-string v2, "GW_307/ACC_SetSpeed"

    const/4 v5, 0x0

    const-string v6, "GW_307/ACC_SetSpeed"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_307 / ADS Auto Drive State"

    const/4 v11, 0x0

    const-string v9, "GW_307/ADS_AutoDriveState"

    const/4 v12, 0x0

    const-string v13, "GW_307/ADS_AutoDriveState"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_31A(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_31A / ACC \u6276\u624b\u63e1\u6301\u8bf7\u6c42"

    const/4 v3, 0x0

    const-string v1, "GW_31A/ACC_HandsOnReq"

    const/4 v4, 0x0

    const-string v5, "GW_31A/ACC_HandsOnReq"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_31A / ACC/IACC/HWA \u6a21\u5f0f"

    const/4 v9, 0x0

    const-string v7, "GW_31A/ACC_IACCHWAMode"

    const/4 v10, 0x0

    const-string v11, "GW_31A/ACC_IACCHWAMode"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_31A / ACC \u6a2a\u5411 Takeover Req"

    const-string v2, "GW_31A/ACC_LatTakeoverReq"

    const/4 v5, 0x0

    const-string v6, "GW_31A/ACC_LatTakeoverReq"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_352(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_352 / Bdc Tr Door Set Sts Fb"

    const/4 v3, 0x0

    const-string v1, "GW_352/BdcTrDoorSetStsFb"

    const/4 v4, 0x0

    const-string v5, "GW_352/BdcTrDoorSetStsFb"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Back Fwd Adjst Sts"

    const/4 v10, 0x0

    const-string v8, "GW_352/DsmBackFwdAdjstSts"

    const/4 v11, 0x0

    const-string v12, "GW_352/DsmBackFwdAdjstSts"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Drvr Leg Adj Sts"

    const/16 v16, 0x0

    const-string v14, "GW_352/DsmDrvrLegAdjSts"

    const/16 v17, 0x0

    const-string v18, "GW_352/DsmDrvrLegAdjSts"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Hrzntl Adjst Sts"

    const-string v8, "GW_352/DsmHrzntlAdjstSts"

    const-string v12, "GW_352/DsmHrzntlAdjstSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Park Massage Str Sts"

    const-string v14, "GW_352/DsmParkMassageStrSts"

    const-string v18, "GW_352/DsmParkMassageStrSts"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Respite Pos Save Set Fb"

    const-string v8, "GW_352/DsmRespitePosSaveSetFb"

    const-string v12, "GW_352/DsmRespitePosSaveSetFb"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Seat Adj Sts"

    const-string v14, "GW_352/DsmSeatAdjSts"

    const-string v18, "GW_352/DsmSeatAdjSts"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Text Disp Req"

    const-string v9, "GW_352/DsmTextDispReq"

    const/4 v12, 0x0

    const-string v13, "GW_352/DsmTextDispReq"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Vrtcl Adjsr Sts"

    const/16 v18, 0x0

    const-string v16, "GW_352/DsmVrtclAdjsrSts"

    const/16 v19, 0x0

    const-string v20, "GW_352/DsmVrtclAdjsrSts"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Zero GSts"

    const/16 v24, 0x0

    const-string v22, "GW_352/DsmZeroGSts"

    const/16 v25, 0x0

    const-string v26, "GW_352/DsmZeroGSts"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_352 / DSM Zero Save Sts"

    const-string v16, "GW_352/DsmZeroSaveSts"

    const-string v20, "GW_352/DsmZeroSaveSts"

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u7f51\u5173\u62a5\u6587 GW_352 / PSMBackt Touch Text Disp Req"

    const-string v22, "GW_352/PSMBacktTouchTextDispReq"

    const-string v26, "GW_352/PSMBacktTouchTextDispReq"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_36C(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_36C / SLCM Driver Win Motor"

    const/4 v3, 0x0

    const-string v1, "GW_36C/SLCM_DriverWinMotor"

    const/4 v4, 0x0

    const-string v5, "GW_36C/SLCM_DriverWinMotor"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_36C / SLCM FRWin Motor"

    const/4 v10, 0x0

    const-string v8, "GW_36C/SLCM_FRWinMotor"

    const/4 v11, 0x0

    const-string v12, "GW_36C/SLCM_FRWinMotor"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_36C / SLCM RLWin Motor"

    const/16 v16, 0x0

    const-string v14, "GW_36C/SLCM_RLWinMotor"

    const/16 v17, 0x0

    const-string v18, "GW_36C/SLCM_RLWinMotor"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_36C / SLCM RRWin Motor"

    const-string v8, "GW_36C/SLCM_RRWinMotor"

    const-string v12, "GW_36C/SLCM_RRWinMotor"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_36C / SLCM Window Safty Set"

    const-string v14, "GW_36C/SLCM_WindowSaftySet"

    const-string v18, "GW_36C/SLCM_WindowSaftySet"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v6, v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_384(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_384 / Bdc Re Wipr Sts"

    const/4 v3, 0x0

    const-string v1, "GW_384/BdcReWiprSts"

    const/4 v4, 0x0

    const-string v5, "GW_384/BdcReWiprSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_384 / Bdc Srch Car Func Sts"

    const/4 v9, 0x0

    const-string v7, "GW_384/BdcSrchCarFuncSts"

    const/4 v10, 0x0

    const-string v11, "GW_384/BdcSrchCarFuncSts"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_384 / PSM Park Massage Mod Sts"

    const-string v2, "GW_384/PsmParkMassageModSts"

    const/4 v5, 0x0

    const-string v6, "GW_384/PsmParkMassageModSts"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_39A(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_39A / LAS TSREnable"

    const/4 v3, 0x0

    const-string v1, "GW_39A/LAS_TSREnable"

    const/4 v4, 0x0

    const-string v5, "GW_39A/LAS_TSREnable"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_39A / LAS TSRHost Spd Limit"

    const/4 v9, 0x0

    const-string v7, "GW_39A/LAS_TSRHostSpdLimit"

    const/4 v10, 0x0

    const-string v11, "GW_39A/LAS_TSRHostSpdLimit"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_3B1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Back Fwd Adjst Sts"

    const/4 v3, 0x0

    const-string v1, "GW_3B1/PsmBackFwdAdjstSts"

    const/4 v4, 0x0

    const-string v5, "GW_3B1/PsmBackFwdAdjstSts"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Hrzntl Adjst Sts"

    const/4 v10, 0x0

    const-string v8, "GW_3B1/PsmHrzntlAdjstSts"

    const/4 v11, 0x0

    const-string v12, "GW_3B1/PsmHrzntlAdjstSts"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Park Massage Str Sts"

    const/16 v16, 0x0

    const-string v14, "GW_3B1/PsmParkMassageStrSts"

    const/16 v17, 0x0

    const-string v18, "GW_3B1/PsmParkMassageStrSts"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Respite Mod Seat Storg Sts"

    const-string v8, "GW_3B1/PsmRespiteModSeatStorgSts"

    const-string v12, "GW_3B1/PsmRespiteModSeatStorgSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM TVMod Sv Sts"

    const-string v14, "GW_3B1/PsmTVModSvSts"

    const-string v18, "GW_3B1/PsmTVModSvSts"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Zero GSts"

    const-string v8, "GW_3B1/PsmZeroGSts"

    const-string v12, "GW_3B1/PsmZeroGSts"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Zero Reset Fb"

    const-string v14, "GW_3B1/PsmZeroResetFb"

    const-string v18, "GW_3B1/PsmZeroResetFb"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_3B1 / PSM Zero Save Sts"

    const-string v9, "GW_3B1/PsmZeroSaveSts"

    const/4 v12, 0x0

    const-string v13, "GW_3B1/PsmZeroSaveSts"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_3B5(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_3B5 / Ble Chrg Pile Cnct Set Sts"

    const/4 v3, 0x0

    const-string v1, "GW_3B5/BleChrgPileCnctSetSts"

    const/4 v4, 0x0

    const-string v5, "GW_3B5/BleChrgPileCnctSetSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u7f51\u5173\u62a5\u6587 GW_3B5 / PSM Pass Leg Adj Sts"

    const/4 v9, 0x0

    const-string v7, "GW_3B5/PsmPassLegAdjSts"

    const/4 v10, 0x0

    const-string v11, "GW_3B5/PsmPassLegAdjSts"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "\u7f51\u5173\u62a5\u6587 GW_3B5 / PSM Text Disp Req"

    const-string v2, "GW_3B5/PsmTextDispReq"

    const/4 v5, 0x0

    const-string v6, "GW_3B5/PsmTextDispReq"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_3B5 / WLCM Wireless Charging Set Status"

    const/4 v11, 0x0

    const-string v9, "GW_3B5/WLCM_WirelessChargingSetStatus"

    const/4 v12, 0x0

    const-string v13, "GW_3B5/WLCM_WirelessChargingSetStatus"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_GW_5F1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_5F1 / Bdc Battlow UPower Off Disp Req"

    const/4 v3, 0x0

    const-string v1, "GW_5F1/BdcBattlowUPowerOffDispReq"

    const/4 v4, 0x0

    const-string v5, "GW_5F1/BdcBattlowUPowerOffDispReq"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_5F1 / Bdc Seat Belt Aux Recycle Sts"

    const/4 v10, 0x0

    const-string v8, "GW_5F1/BdcSeatBeltAuxRecycleSts"

    const/4 v11, 0x0

    const-string v12, "GW_5F1/BdcSeatBeltAuxRecycleSts"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_5F1 / Bdc Seat Belt Aux Tighten Sts"

    const/16 v16, 0x0

    const-string v14, "GW_5F1/BdcSeatBeltAuxTightenSts"

    const/16 v17, 0x0

    const-string v18, "GW_5F1/BdcSeatBeltAuxTightenSts"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_5F1 / RLSLight Switch Request"

    const-string v8, "GW_5F1/RLSLightSwitchRequest"

    const-string v12, "GW_5F1/RLSLightSwitchRequest"

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_5F1 / RLSWiper Speed"

    const-string v14, "GW_5F1/RLSWiperSpeed"

    const-string v18, "GW_5F1/RLSWiperSpeed"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v6, v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GW_5FF(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u7f51\u5173\u62a5\u6587 GW_5FF / BDC Drvr Door Hnd Sts"

    const/4 v3, 0x0

    const-string v1, "GW_5FF/BDC_DrvrDoorHndSts"

    const/4 v4, 0x0

    const-string v5, "GW_5FF/BDC_DrvrDoorHndSts"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_5FF / BDC Le Re Door Hnd Sts"

    const/4 v10, 0x0

    const-string v8, "GW_5FF/BDC_LeReDoorHndSts"

    const/4 v11, 0x0

    const-string v12, "GW_5FF/BDC_LeReDoorHndSts"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_5FF / BDC Pass Door Hnd Sts"

    const/16 v16, 0x0

    const-string v14, "GW_5FF/BDC_PassDoorHndSts"

    const/16 v17, 0x0

    const-string v18, "GW_5FF/BDC_PassDoorHndSts"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_5FF / BDC Ri Re Door Hnd Sts"

    const-string v8, "GW_5FF/BDC_RiReDoorHndSts"

    const-string v12, "GW_5FF/BDC_RiReDoorHndSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Ble Clo \u8f66\u8f86 Un Lck Set Sts"

    const-string v14, "GW_5FF/BdcBleCloVehUnLckSetSts"

    const-string v18, "GW_5FF/BdcBleCloVehUnLckSetSts"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Ble Lea \u8f66\u8f86 Lck Set Sts"

    const-string v8, "GW_5FF/BdcBleLeaVehLckSetSts"

    const-string v12, "GW_5FF/BdcBleLeaVehLckSetSts"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Frnt Wiper Sensitivity"

    const-string v14, "GW_5FF/BdcFrntWiperSensitivity"

    const-string v18, "GW_5FF/BdcFrntWiperSensitivity"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Pep Clo \u8f66\u8f86 Un Lck Set Sts"

    const-string v9, "GW_5FF/BdcPepCloVehUnLckSetSts"

    const/4 v12, 0x0

    const-string v13, "GW_5FF/BdcPepCloVehUnLckSetSts"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Pep Lea \u8f66\u8f86 Lck Set Sts"

    const/16 v18, 0x0

    const-string v16, "GW_5FF/BdcPepLeaVehLckSetSts"

    const/16 v19, 0x0

    const-string v20, "GW_5FF/BdcPepLeaVehLckSetSts"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u7f51\u5173\u62a5\u6587 GW_5FF / Bdc Wiper Swt Sts"

    const/16 v24, 0x0

    const-string v22, "GW_5FF/BdcWiperSwtSts"

    const/16 v25, 0x0

    const-string v26, "GW_5FF/BdcWiperSwtSts"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v9}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_GeneralSts(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x7000031

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "GeneralSts/Android"

    const-string v2, "General Sts / Android"

    const-string v5, "GeneralSts/Android"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_HUD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 32

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x3000054

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/ADASDisplay"

    const-string v2, "\u62ac\u5934\u663e\u793a / ADASDisplay"

    const-string v5, "HUD/ADASDisplay"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x3000056

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "HUD/BluetoothDisplay"

    const-string v10, "\u62ac\u5934\u663e\u793a / Bluetooth Display"

    const-string v13, "HUD/BluetoothDisplay"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x300000d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUD"

    const-string v2, "\u62ac\u5934\u663e\u793a / \u62ac\u5934\u663e\u793a"

    const-string v5, "HUD/HUD"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-string v12, "\u62ac\u5934\u663e\u793a / HUD \u8fb9\u754c\u6307\u793a\u5f00\u5173"

    const/4 v13, 0x0

    const-string v11, "HUD/HudBoardIndicatorSwt"

    const/4 v14, 0x0

    const-string v15, "HUD/HudBoardIndicatorSwt"

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x300000e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUDBrightness"

    const-string v2, "\u62ac\u5934\u663e\u793a / HUD \u4eae\u5ea6"

    const-string v5, "HUD/HUDBrightness"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x3000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "HUD/HUDBrightnessAutoAdjustment"

    const-string v14, "\u62ac\u5934\u663e\u793a / HUDBrightness Auto Adjustment"

    const-string v17, "HUD/HUDBrightnessAutoAdjustment"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x300002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUDDisplayMode"

    const-string v2, "\u62ac\u5934\u663e\u793a / HUD \u663e\u793a\u6a21\u5f0f"

    const-string v5, "HUD/HUDDisplayMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u62ac\u5934\u663e\u793a / HUD \u9a7e\u9a76\u529f\u7387\u5f00\u5173"

    const/16 v17, 0x0

    const-string v15, "HUD/HudDrivingPowerSwt"

    const/16 v18, 0x0

    const-string v19, "HUD/HudDrivingPowerSwt"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x300000f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUDHeight"

    const-string v2, "\u62ac\u5934\u663e\u793a / HUD \u9ad8\u5ea6"

    const-string v5, "HUD/HUDHeight"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-string v18, "\u62ac\u5934\u663e\u793a / HUD \u9ad8\u5ea6\u81ea\u52a8\u5f00\u5173"

    const/16 v19, 0x0

    const-string v17, "HUD/HudHeightAutoSwt"

    const/16 v20, 0x0

    const-string v21, "HUD/HudHeightAutoSwt"

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-string v2, "\u62ac\u5934\u663e\u793a / HUD \u6062\u590d\u51fa\u5382"

    const/4 v3, 0x0

    const-string v1, "HUD/HudResetFactory"

    const/4 v4, 0x0

    const-string v5, "HUD/HudResetFactory"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-string v20, "\u62ac\u5934\u663e\u793a / HUD Scence Rebuild Swt"

    const/16 v21, 0x0

    const-string v19, "HUD/HudScenceRebuildSwt"

    const/16 v22, 0x0

    const-string v23, "HUD/HudScenceRebuildSwt"

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-string v2, "\u62ac\u5934\u663e\u793a / HUD \u8f66\u901f\u9884\u8b66\u5f00\u5173"

    const-string v1, "HUD/HudSpeedWarnSwt"

    const-string v5, "HUD/HudSpeedWarnSwt"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x3000057

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "HUD/HUDSteerpan"

    const-string v22, "\u62ac\u5934\u663e\u793a / HUDSteerpan"

    const-string v25, "HUD/HUDSteerpan"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x300002b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUDTheme"

    const-string v2, "\u62ac\u5934\u663e\u793a / HUDTheme"

    const-string v5, "HUD/HUDTheme"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-string v24, "\u62ac\u5934\u663e\u793a / HUD \u603b\u7eed\u822a\u65f6\u95f4"

    const/16 v25, 0x0

    const-string v23, "HUD/HudTotalRangeTime"

    const/16 v26, 0x0

    const-string v27, "HUD/HudTotalRangeTime"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x300002d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "HUD/HUDVideo"

    const-string v2, "\u62ac\u5934\u663e\u793a / HUDVideo"

    const-string v5, "HUD/HUDVideo"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-string v26, "\u62ac\u5934\u663e\u793a / HUD \u770b\u95e8\u72d7\u5f00\u5173"

    const/16 v27, 0x0

    const-string v25, "HUD/HudWatchDogSwt"

    const/16 v28, 0x0

    const-string v29, "HUD/HudWatchDogSwt"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-string v2, "\u62ac\u5934\u663e\u793a / \u6b4c\u8bcd\u663e\u793a\u72b6\u6001"

    const/4 v3, 0x0

    const-string v1, "HUD/MusicLyricSts"

    const/4 v4, 0x0

    const-string v5, "HUD/MusicLyricSts"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x3000055

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "HUD/NavigationDisplay"

    const-string v28, "\u62ac\u5934\u663e\u793a / Navigation Display"

    const-string v31, "HUD/NavigationDisplay"

    move-object/from16 v29, v30

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v25}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_HUD_3E9(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "HUD \u62a5\u6587 3E9 / HUD \u76f2\u533a\u72b6\u6001"

    const/4 v3, 0x0

    const-string v1, "HUD_3E9/HudBlindZoneSts"

    const/4 v4, 0x0

    const-string v5, "HUD_3E9/HudBlindZoneSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "HUD \u62a5\u6587 3E9 / HUD \u8f66\u9053\u504f\u79bb\u72b6\u6001"

    const/4 v9, 0x0

    const-string v7, "HUD_3E9/HudLaneDisDepartSts"

    const/4 v10, 0x0

    const-string v11, "HUD_3E9/HudLaneDisDepartSts"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "HUD \u62a5\u6587 3E9 / HUD \u5bfc\u822a\u663e\u793a\u72b6\u6001"

    const-string v2, "HUD_3E9/HudNavigationDisSts"

    const/4 v5, 0x0

    const-string v6, "HUD_3E9/HudNavigationDisSts"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "HUD \u62a5\u6587 3E9 / HUD \u884c\u4eba\u8f66\u8f86\u72b6\u6001"

    const/4 v11, 0x0

    const-string v9, "HUD_3E9/HudPedVehSts"

    const/4 v12, 0x0

    const-string v13, "HUD_3E9/HudPedVehSts"

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_IC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "IC/PlayStartupVideo"

    const-string v2, "\u4eea\u8868 / Play Startup Video"

    const-string v5, "IC/PlayStartupVideo"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x23000016

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "IC/Visible"

    const-string v8, "\u4eea\u8868 / \u53ef\u89c1"

    const-string v11, "IC/Visible"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_IPC_POWER_VOLTAGE(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2d000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "IPC_POWER_VOLTAGE"

    const-string v2, "IPC POWER VOLTAGE"

    const-string v5, "IPC_POWER_VOLTAGE"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_IcTelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "IC Telltale / Self Check Status"

    const/4 v3, 0x0

    const-string v1, "IcTelltale/SelfCheckStatus"

    const/4 v4, 0x0

    const-string v5, "IcTelltale/SelfCheckStatus"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_IcWarning(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u4eea\u8868\u544a\u8b66 / Tip Info"

    const/4 v3, 0x0

    const-string v1, "IcWarning/TipInfo"

    const/4 v4, 0x0

    const-string v5, "IcWarning/TipInfo"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u4eea\u8868\u544a\u8b66 / Warning Info"

    const/4 v9, 0x0

    const-string v7, "IcWarning/WarningInfo"

    const/4 v10, 0x0

    const-string v11, "IcWarning/WarningInfo"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Ictelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "Ictelltale / \u53ef\u89c1"

    const/4 v3, 0x0

    const-string v1, "Ictelltale/Visible"

    const/4 v4, 0x0

    const-string v5, "Ictelltale/Visible"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Info(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb000017

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Info/Discharge"

    const-string v2, "\u4fe1\u606f / Discharge"

    const-string v5, "Info/Discharge"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Infotainment(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x7000011

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Infotainment/KeyCustom"

    const-string v2, "\u5ea7\u8231\u5a31\u4e50 / Key Custom"

    const-string v5, "Infotainment/KeyCustom"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x7000015

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Infotainment/KeyInfo"

    const-string v9, "\u5ea7\u8231\u5a31\u4e50 / Key Info"

    const-string v12, "Infotainment/KeyInfo"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x7000013

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Infotainment/KeyNext"

    const-string v15, "\u5ea7\u8231\u5a31\u4e50 / Key Next"

    const-string v18, "Infotainment/KeyNext"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x7000010

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Infotainment/KeyPhone"

    const-string v9, "\u5ea7\u8231\u5a31\u4e50 / Key Phone"

    const-string v12, "Infotainment/KeyPhone"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x7000016

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Infotainment/KeyPlay"

    const-string v15, "\u5ea7\u8231\u5a31\u4e50 / Key Play"

    const-string v18, "Infotainment/KeyPlay"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x7000012

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Infotainment/KeyPrevious"

    const-string v9, "\u5ea7\u8231\u5a31\u4e50 / Key Previous"

    const-string v12, "Infotainment/KeyPrevious"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x7000014

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Infotainment/KeyVoice"

    const-string v15, "\u5ea7\u8231\u5a31\u4e50 / Key Voice"

    const-string v18, "Infotainment/KeyVoice"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x700000f

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Infotainment/VolumeDown"

    const-string v10, "\u5ea7\u8231\u5a31\u4e50 / Volume Down"

    const-string v13, "Infotainment/VolumeDown"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x700000e

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Infotainment/VolumeUp"

    const-string v17, "\u5ea7\u8231\u5a31\u4e50 / Volume Up"

    const-string v20, "Infotainment/VolumeUp"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_KeyInput(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2c000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "KeyInput/CurrentView"

    const-string v2, "\u6309\u952e\u8f93\u5165 / Current View"

    const-string v5, "KeyInput/CurrentView"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x17000001

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "KeyInput/Event"

    const-string v9, "\u6309\u952e\u8f93\u5165 / Event"

    const-string v12, "KeyInput/Event"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x2c000005

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "KeyInput/MFS_Customize"

    const-string v15, "\u6309\u952e\u8f93\u5165 / MFS Customize"

    const-string v18, "KeyInput/MFS_Customize"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x2c00000c

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "KeyInput/MFS_ICMFctChg"

    const-string v9, "\u6309\u952e\u8f93\u5165 / MFS ICMFct Chg"

    const-string v12, "KeyInput/MFS_ICMFctChg"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x2c000006

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "KeyInput/MFS_SeekDown"

    const-string v15, "\u6309\u952e\u8f93\u5165 / MFS Seek Down"

    const-string v18, "KeyInput/MFS_SeekDown"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x2c000007

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "KeyInput/MFS_SeekUp"

    const-string v9, "\u6309\u952e\u8f93\u5165 / MFS Seek Up"

    const-string v12, "KeyInput/MFS_SeekUp"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x2c00000a

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "KeyInput/MFS_Start_Pause"

    const-string v15, "\u6309\u952e\u8f93\u5165 / MFS Start Pause"

    const-string v18, "KeyInput/MFS_Start_Pause"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x2c00000b

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "KeyInput/MFS_VoiceRecognition"

    const-string v10, "\u6309\u952e\u8f93\u5165 / MFS Voice Recognition"

    const-string v13, "KeyInput/MFS_VoiceRecognition"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x2c000009

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "KeyInput/MFS_VolumeDown"

    const-string v17, "\u6309\u952e\u8f93\u5165 / MFS Volume Down"

    const-string v20, "KeyInput/MFS_VolumeDown"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x2c000008

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "KeyInput/MFS_VolumeUp"

    const-string v23, "\u6309\u952e\u8f93\u5165 / MFS Volume Up"

    const-string v26, "KeyInput/MFS_VolumeUp"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x17000002

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "KeyInput/RotaryEvent"

    const-string v17, "\u6309\u952e\u8f93\u5165 / Rotary Event"

    const-string v20, "KeyInput/RotaryEvent"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v12, 0x2c00000e

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "KeyInput/SCREEN_TOUCH_AVM"

    const-string v23, "\u6309\u952e\u8f93\u5165 / SCREEN TOUCH AVM"

    const-string v26, "KeyInput/SCREEN_TOUCH_AVM"

    move-object/from16 v21, v11

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v15, 0x2c00000f

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "KeyInput/SCREEN_TOUCH_ESP"

    const-string v17, "\u6309\u952e\u8f93\u5165 / SCREEN TOUCH ESP"

    const-string v20, "KeyInput/SCREEN_TOUCH_ESP"

    move-object v15, v12

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v13, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v15, 0x2c00000d

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "KeyInput/SCREEN_TOUCH_HDC"

    const-string v23, "\u6309\u952e\u8f93\u5165 / SCREEN TOUCH HDC"

    const-string v26, "KeyInput/SCREEN_TOUCH_HDC"

    move-object/from16 v21, v13

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v21, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v15, 0x2c000002

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "KeyInput/SteerWheelControlMode"

    const-string v17, "\u6309\u952e\u8f93\u5165 / Steer Wheel Control Mode"

    const-string v20, "KeyInput/SteerWheelControlMode"

    move-object/from16 v15, v21

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v15, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v16, 0x2c000003

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "KeyInput/ViewChooseMode"

    const-string v24, "\u6309\u952e\u8f93\u5165 / View Choose Mode"

    const-string v27, "KeyInput/ViewChooseMode"

    move-object/from16 v22, v15

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    move-object/from16 v14, v21

    filled-new-array/range {v0 .. v15}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Light(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 60

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x800004e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/AmbientLightBrightness"

    const-string v2, "\u706f\u5149 / Ambient Light Brightness"

    const-string v5, "Light/AmbientLightBrightness"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x800000c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Light/AmbientLightBrightnessIflyShow"

    const-string v10, "\u706f\u5149 / Ambient Light Brightness Ifly Show"

    const-string v13, "Light/AmbientLightBrightnessIflyShow"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x800004f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/AmbientLightColor"

    const-string v2, "\u706f\u5149 / Ambient Light Color"

    const-string v5, "Light/AmbientLightColor"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x800000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "Light/AmbientLightColorIflyShow"

    const-string v12, "\u706f\u5149 / Ambient Light Color Ifly Show"

    const-string v15, "Light/AmbientLightColorIflyShow"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "\u706f\u5149 / Ambient Light Color Mode"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "Light/AmbientLightColorMode"

    const-string v5, "Light/AmbientLightColorMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-string v14, "\u706f\u5149 / \u5f00\u95e8\u6c1b\u56f4\u706f\u63d0\u9192"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v13, "Light/AmbientLightDoorOpenWarning"

    const-string v17, "Light/AmbientLightDoorOpenWarning"

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x8000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/AmbientLightMode"

    const-string v2, "\u706f\u5149 / Ambient Light Mode"

    const-string v5, "Light/AmbientLightMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u706f\u5149 / Ambient Light Sound Effects Switch"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v15, "Light/AmbientLightSoundEffectsSwitch"

    const-string v19, "Light/AmbientLightSoundEffectsSwitch"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x8000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/AmbientLightSwitch"

    const-string v2, "\u706f\u5149 / Ambient Light Switch"

    const-string v5, "Light/AmbientLightSwitch"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-string v18, "\u706f\u5149 / Ambient Light Theme Color"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v17, "Light/AmbientLightThemeColor"

    const-string v21, "Light/AmbientLightThemeColor"

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x8000010

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/AutoHeadLamp"

    const-string v2, "\u706f\u5149 / Auto Head Lamp"

    const-string v5, "Light/AutoHeadLamp"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x8000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "Light/AutoHighBeam"

    const-string v20, "\u706f\u5149 / Auto High Beam"

    const-string v23, "Light/AutoHighBeam"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x8000033

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/CourtesyPed"

    const-string v2, "\u706f\u5149 / Courtesy Ped"

    const-string v5, "Light/CourtesyPed"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x800000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "Light/DaytimeRunningLamp"

    const-string v22, "\u706f\u5149 / Daytime Running Lamp"

    const-string v25, "Light/DaytimeRunningLamp"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x8000017

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/DoorLight/OpenWithDoor"

    const-string v2, "\u706f\u5149 / Door Light / Open With Door"

    const-string v5, "Light/DoorLight/OpenWithDoor"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x800002b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "Light/EmergencyLightSwitchStatus"

    const-string v24, "\u706f\u5149 / Emergency Light Switch Status"

    const-string v27, "Light/EmergencyLightSwitchStatus"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x8000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/FogLamp"

    const-string v2, "\u706f\u5149 / \u96fe\u706f"

    const-string v5, "Light/FogLamp"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x800004d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "Light/FogLamp/All"

    const-string v26, "\u706f\u5149 / \u96fe\u706f / \u5168\u90e8"

    const-string v29, "Light/FogLamp/All"

    move-object/from16 v27, v28

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x800004b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/FogLamp/Front"

    const-string v2, "\u706f\u5149 / \u96fe\u706f / \u524d\u6392"

    const-string v5, "Light/FogLamp/Front"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x800004c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "Light/FogLamp/Rear"

    const-string v28, "\u706f\u5149 / \u96fe\u706f / \u540e\u6392"

    const-string v31, "Light/FogLamp/Rear"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x800001e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/HazardWarning"

    const-string v2, "\u706f\u5149 / Hazard Warning"

    const-string v5, "Light/HazardWarning"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x8000038

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "Light/HazardWarningAcoust"

    const-string v30, "\u706f\u5149 / Hazard Warning Acoust"

    const-string v33, "Light/HazardWarningAcoust"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x800001d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/HighBeam"

    const-string v2, "\u706f\u5149 / \u8fdc\u5149\u706f"

    const-string v5, "Light/HighBeam"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x800000f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "Light/HighBeamDelay"

    const-string v32, "\u706f\u5149 / High Beam Delay"

    const-string v35, "Light/HighBeamDelay"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x800002d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/HighBeamSwitchStatus"

    const-string v2, "\u706f\u5149 / High Beam Switch Status"

    const-string v5, "Light/HighBeamSwitchStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x8000039

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "Light/LightDetected"

    const-string v34, "\u706f\u5149 / Light Detected"

    const-string v37, "Light/LightDetected"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x800003b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightedRoofRack"

    const-string v2, "\u706f\u5149 / Lighted Roof Rack"

    const-string v5, "Light/LightedRoofRack"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x800001c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "Light/LightHeight"

    const-string v36, "\u706f\u5149 / Light Height"

    const-string v39, "Light/LightHeight"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x800002e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightShowDayLight"

    const-string v2, "\u706f\u5149 / Light Show Day Light"

    const-string v5, "Light/LightShowDayLight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x8000030

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "Light/LightShowHighBeam"

    const-string v38, "\u706f\u5149 / Light Show High Beam"

    const-string v41, "Light/LightShowHighBeam"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x800002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightShowInteractiveLight"

    const-string v2, "\u706f\u5149 / Light Show Interactive Light"

    const-string v5, "Light/LightShowInteractiveLight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x8000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "Light/LightShowInteractiveMode"

    const-string v40, "\u706f\u5149 / Light Show Interactive Mode"

    const-string v43, "Light/LightShowInteractiveMode"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x8000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightShowLightMode"

    const-string v2, "\u706f\u5149 / Light Show Light Mode"

    const-string v5, "Light/LightShowLightMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x8000032

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "Light/LightShowLowBeam"

    const-string v42, "\u706f\u5149 / Light Show Low Beam"

    const-string v45, "Light/LightShowLowBeam"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0x800002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightShowOutSwitch"

    const-string v2, "\u706f\u5149 / Light Show Out Switch"

    const-string v5, "Light/LightShowOutSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0x8000031

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "Light/LightShowPositionLight"

    const-string v44, "\u706f\u5149 / Light Show Position Light"

    const-string v47, "Light/LightShowPositionLight"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x8000020

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LightShowSwitch"

    const-string v2, "\u706f\u5149 / Light Show Switch"

    const-string v5, "Light/LightShowSwitch"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x8000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "Light/LightWelcome"

    const-string v46, "\u706f\u5149 / Light Welcome"

    const-string v49, "Light/LightWelcome"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0x800001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-wide/32 v1, 0x897ff9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/LowBeam"

    const-string v2, "\u706f\u5149 / \u8fd1\u5149\u706f"

    const-string v5, "Light/LowBeam"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x800001f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "Light/Mode"

    const-string v48, "\u706f\u5149 / \u6a21\u5f0f"

    const-string v51, "Light/Mode"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0x8000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/OvertakeLight"

    const-string v2, "\u706f\u5149 / Overtake Light"

    const-string v5, "Light/OvertakeLight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0x800003a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "Light/ParkLightSts"

    const-string v50, "\u706f\u5149 / Park Light Sts"

    const-string v53, "Light/ParkLightSts"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0x8000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/PositionLamp"

    const-string v2, "\u706f\u5149 / Position Lamp"

    const-string v5, "Light/PositionLamp"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0x8000034

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "Light/PositionLampType"

    const-string v52, "\u706f\u5149 / Position Lamp Type"

    const-string v55, "Light/PositionLampType"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-string v2, "\u706f\u5149 / Turn"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "Light/Turn"

    const-string v5, "Light/Turn"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0x8000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "Light/TurnLeft"

    const-string v54, "\u706f\u5149 / Turn Left"

    const-string v57, "Light/TurnLeft"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0x800002a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Light/TurnLightStatus"

    const-string v2, "\u706f\u5149 / \u8f6c\u5411\u706f\u72b6\u6001"

    const-string v5, "Light/TurnLightStatus"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0x8000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "Light/TurnRight"

    const-string v56, "\u706f\u5149 / Turn Right"

    const-string v59, "Light/TurnRight"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v53}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_List(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb000026

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "List/FaultIndication"

    const-string v2, "List / Fault Indication"

    const-string v5, "List/FaultIndication"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_MIC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2e000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "MIC/Mute"

    const-string v2, "MIC / \u9759\u97f3"

    const-string v5, "MIC/Mute"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Media(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 52

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x21000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/ASESwitch"

    const-string v2, "\u5a92\u4f53 / ASESwitch"

    const-string v5, "Media/ASESwitch"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x2100000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Media/AssistantVolume"

    const-string v10, "\u5a92\u4f53 / Assistant Volume"

    const-string v13, "Media/AssistantVolume"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x7000002

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/AudioAmplifierMode"

    const-string v2, "\u5a92\u4f53 / Audio Amplifier Mode"

    const-string v5, "Media/AudioAmplifierMode"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x21000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "Media/BootMusic"

    const-string v12, "\u5a92\u4f53 / Boot Music"

    const-string v15, "Media/BootMusic"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x21000015

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/BootMusicVolume"

    const-string v2, "\u5a92\u4f53 / Boot Music Volume"

    const-string v5, "Media/BootMusicVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x2100000c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "Media/BTCallVolume"

    const-string v14, "\u5a92\u4f53 / BTCall Volume"

    const-string v17, "Media/BTCallVolume"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x21000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/ChimeType"

    const-string v2, "\u5a92\u4f53 / Chime Type"

    const-string v5, "Media/ChimeType"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x2100000b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "Media/ChimeVolume"

    const-string v16, "\u5a92\u4f53 / Chime Volume"

    const-string v19, "Media/ChimeVolume"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x7000028

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/CurrentVolume"

    const-string v2, "\u5a92\u4f53 / Current Volume"

    const-string v5, "Media/CurrentVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x21000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "Media/DeviceState"

    const-string v18, "\u5a92\u4f53 / Device State"

    const-string v21, "Media/DeviceState"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x700002d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/DRIVEMODE"

    const-string v2, "\u5a92\u4f53 / DRIVEMODE"

    const-string v5, "Media/DRIVEMODE"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x700002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "Media/HeadrestSpeakerBalance"

    const-string v20, "\u5a92\u4f53 / Headrest Speaker Balance"

    const-string v23, "Media/HeadrestSpeakerBalance"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x700002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/HeadrestSpeakerBluetooth"

    const-string v2, "\u5a92\u4f53 / Headrest Speaker Bluetooth"

    const-string v5, "Media/HeadrestSpeakerBluetooth"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x7000029

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "Media/HeadrestSpeakerChannel"

    const-string v22, "\u5a92\u4f53 / Headrest Speaker Channel"

    const-string v25, "Media/HeadrestSpeakerChannel"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x700002b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/HeadrestSpeakerNavigation"

    const-string v2, "\u5a92\u4f53 / Headrest Speaker Navigation"

    const-string v5, "Media/HeadrestSpeakerNavigation"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x21000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "Media/LockAlarmSwitch"

    const-string v24, "\u5a92\u4f53 / Lock Alarm Switch"

    const-string v27, "Media/LockAlarmSwitch"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x21000003

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/MediaData/Set"

    const-string v2, "\u5a92\u4f53 / Media Data / Set"

    const-string v5, "Media/MediaData/Set"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x4000070

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "Media/MediaInfo"

    const-string v26, "\u5a92\u4f53 / Media Info"

    const-string v29, "Media/MediaInfo"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x4000071

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/MediaState"

    const-string v2, "\u5a92\u4f53 / Media State"

    const-string v5, "Media/MediaState"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x2100000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "Media/MediaVolume"

    const-string v28, "\u5a92\u4f53 / \u5a92\u4f53\u97f3\u91cf"

    const-string v31, "Media/MediaVolume"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x21000010

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/Mute"

    const-string v2, "\u5a92\u4f53 / \u9759\u97f3"

    const-string v5, "Media/Mute"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x2100000f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "Media/NavigationVolume"

    const-string v30, "\u5a92\u4f53 / \u5bfc\u822a\u97f3\u91cf"

    const-string v33, "Media/NavigationVolume"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x2100000e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/NotificationVolume"

    const-string v2, "\u5a92\u4f53 / Notification Volume"

    const-string v5, "Media/NotificationVolume"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x21000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "Media/Picture/Set"

    const-string v32, "\u5a92\u4f53 / Picture / Set"

    const-string v35, "Media/Picture/Set"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x21000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/PlaybackState/Set"

    const-string v2, "\u5a92\u4f53 / Playback State / Set"

    const-string v5, "Media/PlaybackState/Set"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x7000024

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "Media/RESPITE_MODE"

    const-string v34, "\u5a92\u4f53 / RESPITE MODE"

    const-string v37, "Media/RESPITE_MODE"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x21000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/ScreenCast"

    const-string v2, "\u5a92\u4f53 / Screen Cast"

    const-string v5, "Media/ScreenCast"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x7000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "Media/SoundEqualizer"

    const-string v36, "\u5a92\u4f53 / Sound Equalizer"

    const-string v39, "Media/SoundEqualizer"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x700000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/SoundEqualizerEffectHigh"

    const-string v2, "\u5a92\u4f53 / Sound Equalizer Effect High"

    const-string v5, "Media/SoundEqualizerEffectHigh"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x700000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "Media/SoundEqualizerEffectLow"

    const-string v38, "\u5a92\u4f53 / \u97f3\u6548\u5747\u8861\u5668\u4f4e\u9891"

    const-string v41, "Media/SoundEqualizerEffectLow"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x700000c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/SoundEqualizerEffectMiddle"

    const-string v2, "\u5a92\u4f53 / Sound Equalizer Effect Middle"

    const-string v5, "Media/SoundEqualizerEffectMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x700002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "Media/SoundEqualizerSony"

    const-string v40, "\u5a92\u4f53 / Sound Equalizer Sony"

    const-string v43, "Media/SoundEqualizerSony"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x7000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/SoundField"

    const-string v2, "\u5a92\u4f53 / Sound Field"

    const-string v5, "Media/SoundField"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x7000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "Media/SoundFieldFrontRear"

    const-string v42, "\u5a92\u4f53 / Sound Field Front Rear"

    const-string v45, "Media/SoundFieldFrontRear"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0x7000005

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/SoundFieldLeftRight"

    const-string v2, "\u5a92\u4f53 / Sound Field Left Right"

    const-string v5, "Media/SoundFieldLeftRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0x21000011

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "Media/SoundSource"

    const-string v44, "\u5a92\u4f53 / Sound Source"

    const-string v47, "Media/SoundSource"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x21000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Media/StereoSpeaker"

    const-string v2, "\u5a92\u4f53 / Stereo Speaker"

    const-string v5, "Media/StereoSpeaker"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x21000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "Media/UnlockAlarmSwitch"

    const-string v46, "\u5a92\u4f53 / Unlock Alarm Switch"

    const-string v49, "Media/UnlockAlarmSwitch"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-string v2, "\u5a92\u4f53 / Volume"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "Media/Volume"

    const-string v5, "Media/Volume"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x7000021

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "Media/WarningVolume"

    const-string v48, "\u5a92\u4f53 / Warning Volume"

    const-string v51, "Media/WarningVolume"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v45}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_MeiXing(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x34000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "MeiXing/Av2Metadata"

    const-string v2, "\u7f8e\u884c\u5bfc\u822a / Av 2 Metadata"

    const-string v5, "MeiXing/Av2Metadata"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x3400001b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "MeiXing/Av2Position"

    const-string v9, "\u7f8e\u884c\u5bfc\u822a / Av 2 Position"

    const-string v12, "MeiXing/Av2Position"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x3400001f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "MeiXing/Av2ProfileLong"

    const-string v15, "\u7f8e\u884c\u5bfc\u822a / Av 2 Profile Long"

    const-string v18, "MeiXing/Av2ProfileLong"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x3400001e

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "MeiXing/Av2ProfileShort"

    const-string v9, "\u7f8e\u884c\u5bfc\u822a / Av 2 Profile Short"

    const-string v12, "MeiXing/Av2ProfileShort"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x3400001d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "MeiXing/Av2Segment"

    const-string v15, "\u7f8e\u884c\u5bfc\u822a / Av 2 Segment"

    const-string v18, "MeiXing/Av2Segment"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x3400001c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "MeiXing/Av2Stub"

    const-string v9, "\u7f8e\u884c\u5bfc\u822a / Av 2 Stub"

    const-string v12, "MeiXing/Av2Stub"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x34000024

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "MeiXing/SceneReconstruct"

    const-string v15, "\u7f8e\u884c\u5bfc\u822a / Scene Reconstruct"

    const-string v18, "MeiXing/SceneReconstruct"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Navigation(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 40

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x34000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/CarPosition"

    const-string v2, "\u5bfc\u822a / Car Position"

    const-string v5, "Navigation/CarPosition"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x34000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Navigation/CurrentRoadCondition"

    const-string v10, "\u5bfc\u822a / Current Road Condition"

    const-string v13, "Navigation/CurrentRoadCondition"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x34000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/DirectPoint"

    const-string v2, "\u5bfc\u822a / Direct Point"

    const-string v5, "Navigation/DirectPoint"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x3400000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "Navigation/EstimatedDuration"

    const-string v12, "\u5bfc\u822a / Estimated Duration"

    const-string v15, "Navigation/EstimatedDuration"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x34000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/IsInTheRoundabout"

    const-string v2, "\u5bfc\u822a / Is In The Roundabout"

    const-string v5, "Navigation/IsInTheRoundabout"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x34000009

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "Navigation/IsNavi/Set"

    const-string v14, "\u5bfc\u822a / Is Navi / Set"

    const-string v17, "Navigation/IsNavi/Set"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x34000022

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/LimitSpeed"

    const-string v2, "\u5bfc\u822a / Limit Speed"

    const-string v5, "Navigation/LimitSpeed"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x34000023

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "Navigation/LimitSpeedStatus"

    const-string v16, "\u5bfc\u822a / Limit Speed Status"

    const-string v19, "Navigation/LimitSpeedStatus"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x34000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NavAdas"

    const-string v2, "\u5bfc\u822a / Nav ADAS"

    const-string v5, "Navigation/NavAdas"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x34000011

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "Navigation/NavCongestionLengthCal"

    const-string v18, "\u5bfc\u822a / Nav Congestion Length Cal"

    const-string v21, "Navigation/NavCongestionLengthCal"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x34000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NavCongestionLevelCal"

    const-string v2, "\u5bfc\u822a / Nav Congestion Level Cal"

    const-string v5, "Navigation/NavCongestionLevelCal"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x34000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "Navigation/NavDisplayReq"

    const-string v20, "\u5bfc\u822a / Nav Display Req"

    const-string v23, "Navigation/NavDisplayReq"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x34000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NavHighWayLengthCal"

    const-string v2, "\u5bfc\u822a / Nav High Way Length Cal"

    const-string v5, "Navigation/NavHighWayLengthCal"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x34000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "Navigation/NaviCamera"

    const-string v22, "\u5bfc\u822a / Navi Camera"

    const-string v25, "Navigation/NaviCamera"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x34000002

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NaviInfo/Set"

    const-string v2, "\u5bfc\u822a / Navi Info / Set"

    const-string v5, "Navigation/NaviInfo/Set"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x34000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "Navigation/NaviLane"

    const-string v24, "\u5bfc\u822a / Navi Lane"

    const-string v27, "Navigation/NaviLane"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x34000004

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NaviRoadFacility"

    const-string v2, "\u5bfc\u822a / Navi Road Facility"

    const-string v5, "Navigation/NaviRoadFacility"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x34000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "Navigation/NaviRoutePlan"

    const-string v26, "\u5bfc\u822a / Navi Route Plan"

    const-string v29, "Navigation/NaviRoutePlan"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x34000025

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NaviVersion"

    const-string v2, "\u5bfc\u822a / Navi Version"

    const-string v5, "Navigation/NaviVersion"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x34000015

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "Navigation/NavJourneySet"

    const-string v28, "\u5bfc\u822a / Nav Journey Set"

    const-string v31, "Navigation/NavJourneySet"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x34000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NavMapState"

    const-string v2, "\u5bfc\u822a / Nav Map State"

    const-string v5, "Navigation/NavMapState"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x34000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "Navigation/NavProjector"

    const-string v30, "\u5bfc\u822a / Nav Projector"

    const-string v33, "Navigation/NavProjector"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x34000014

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NavRoadCdnIntervalCal"

    const-string v2, "\u5bfc\u822a / Nav Road Cdn Interval Cal"

    const-string v5, "Navigation/NavRoadCdnIntervalCal"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x34000017

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "Navigation/NextRoadCondition1"

    const-string v32, "\u5bfc\u822a / Next Road Condition 1"

    const-string v35, "Navigation/NextRoadCondition1"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x34000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/NextRoadCondition2"

    const-string v2, "\u5bfc\u822a / Next Road Condition 2"

    const-string v5, "Navigation/NextRoadCondition2"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x34000019

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "Navigation/NextRoadCondition3"

    const-string v34, "\u5bfc\u822a / Next Road Condition 3"

    const-string v37, "Navigation/NextRoadCondition3"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x3400000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Navigation/RoadConfluencePoint"

    const-string v2, "\u5bfc\u822a / Road Confluence Point"

    const-string v5, "Navigation/RoadConfluencePoint"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x3400000c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "Navigation/RoadLaneInfo"

    const-string v36, "\u5bfc\u822a / Road Lane Info"

    const-string v39, "Navigation/RoadLaneInfo"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v33}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_PilotLamp(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "Pilot Lamp / Hill Descent"

    const/4 v3, 0x0

    const-string v1, "PilotLamp/HillDescent"

    const/4 v4, 0x0

    const-string v5, "PilotLamp/HillDescent"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Power(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Power/Abnormal/ShutdownTimer"

    const-string v2, "\u529f\u7387 / Abnormal / Shutdown Timer"

    const-string v5, "Power/Abnormal/ShutdownTimer"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x2d000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "Power/EFSM/mode"

    const-string v8, "\u529f\u7387 / EFSM / \u6a21\u5f0f"

    const-string v11, "Power/EFSM/mode"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x2d000002

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "Power/EnableSTR/Set"

    const-string v3, "\u529f\u7387 / Enable STR / Set"

    const-string v6, "Power/EnableSTR/Set"

    move-object v1, v7

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_PowerOff(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "Power Off / Delayed"

    const/4 v3, 0x0

    const-string v1, "PowerOff/Delayed"

    const/4 v4, 0x0

    const-string v5, "PowerOff/Delayed"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_PsmTVMod(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "PSM TVMod / Turn CDC Ang Pos"

    const/4 v3, 0x0

    const-string v1, "PsmTVMod/TurnCdcAngPos"

    const/4 v4, 0x0

    const-string v5, "PsmTVMod/TurnCdcAngPos"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_QuickSet(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x23000011

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "QuickSet/SetTimeShowType"

    const-string v2, "\u5feb\u6377\u8bbe\u7f6e / Set Time Show Type"

    const-string v5, "QuickSet/SetTimeShowType"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x23000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "QuickSet/SettingStsAVM"

    const-string v9, "\u5feb\u6377\u8bbe\u7f6e / Setting Sts AVM"

    const-string v12, "QuickSet/SettingStsAVM"

    move-object v7, v0

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x23000014

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "QuickSet/SettingStsESPOFF"

    const-string v15, "\u5feb\u6377\u8bbe\u7f6e / Setting Sts ESPOFF"

    const-string v18, "QuickSet/SettingStsESPOFF"

    move-object v13, v1

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x23000012

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "QuickSet/SettingStsHDC"

    const-string v9, "\u5feb\u6377\u8bbe\u7f6e / Setting Sts HDC"

    const-string v12, "QuickSet/SettingStsHDC"

    move-object v7, v2

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x23000015

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "QuickSet/SyncSts"

    const-string v15, "\u5feb\u6377\u8bbe\u7f6e / Sync Sts"

    const-string v18, "QuickSet/SyncSts"

    move-object v13, v3

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v6, v0, v1, v2, v3}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_RRS_2E1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "RRS \u62a5\u6587 2E1 / RRS Loudspeakers Position"

    const/4 v3, 0x0

    const-string v1, "RRS_2E1/RRS_LoudspeakersPosition"

    const/4 v4, 0x0

    const-string v5, "RRS_2E1/RRS_LoudspeakersPosition"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_RainLightInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x300004a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "RainLightInfo/AMB_BRIGHTNESS"

    const-string v2, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / AMB BRIGHTNESS"

    const-string v5, "RainLightInfo/AMB_BRIGHTNESS"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x8000027

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "RainLightInfo/DAY_NIGHT_MODE"

    const-string v9, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / DAY NIGHT MODE"

    const-string v12, "RainLightInfo/DAY_NIGHT_MODE"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x300004b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "RainLightInfo/FW_BRIGHTNESS"

    const-string v15, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / \u524d\u6321 BRIGHTNESS"

    const-string v18, "RainLightInfo/FW_BRIGHTNESS"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x3000049

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "RainLightInfo/HUD_BRIGHTNESS"

    const-string v9, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / HUD BRIGHTNESS"

    const-string v12, "RainLightInfo/HUD_BRIGHTNESS"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x300004c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "RainLightInfo/IR_BRIGHTNESS"

    const-string v15, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / IR BRIGHTNESS"

    const-string v18, "RainLightInfo/IR_BRIGHTNESS"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x300004d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "RainLightInfo/RAIN_INTENSITY"

    const-string v9, "\u96e8\u91cf\u5149\u7167\u4fe1\u606f / RAIN INTENSITY"

    const-string v12, "RainLightInfo/RAIN_INTENSITY"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_SOS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x900004b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/CallEmergencyContact"

    const-string v2, "SOS / Call Emergency Contact"

    const-string v5, "SOS/CallEmergencyContact"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x900004c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "SOS/CallServiceParam"

    const-string v10, "SOS / Call Service Param"

    const-string v13, "SOS/CallServiceParam"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x9000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/EmergencyAssistance"

    const-string v2, "SOS / Emergency Assistance"

    const-string v5, "SOS/EmergencyAssistance"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x9000019

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "SOS/EmergencyAssistanceAcoustReq"

    const-string v12, "SOS / Emergency Assistance Acoust Req"

    const-string v15, "SOS/EmergencyAssistanceAcoustReq"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x9000056

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/EmergencyAssistanceAudio"

    const-string v2, "SOS / Emergency Assistance Audio"

    const-string v5, "SOS/EmergencyAssistanceAudio"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x900001a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "SOS/EmergencyAssistanceCallbackReq"

    const-string v14, "SOS / Emergency Assistance Callback Req"

    const-string v17, "SOS/EmergencyAssistanceCallbackReq"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x9000048

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/EmergencyAssistancePhoneNumber"

    const-string v2, "SOS / Emergency Assistance Phone Number"

    const-string v5, "SOS/EmergencyAssistancePhoneNumber"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x900001b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "SOS/EmergencyAssistanceSpeakerReq"

    const-string v16, "SOS / Emergency Assistance Speaker Req"

    const-string v19, "SOS/EmergencyAssistanceSpeakerReq"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x9000049

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/OneKeyService"

    const-string v2, "SOS / One Key Service"

    const-string v5, "SOS/OneKeyService"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x900004a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "SOS/OneKeyServicePhoneNumber"

    const-string v18, "SOS / One Key Service Phone Number"

    const-string v21, "SOS/OneKeyServicePhoneNumber"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x9000014

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/RoadsideAssistance"

    const-string v2, "SOS / Roadside Assistance"

    const-string v5, "SOS/RoadsideAssistance"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x9000015

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "SOS/RoadsideAssistanceAcoustReq"

    const-string v20, "SOS / Roadside Assistance Acoust Req"

    const-string v23, "SOS/RoadsideAssistanceAcoustReq"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x9000055

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/RoadsideAssistanceAudio"

    const-string v2, "SOS / Roadside Assistance Audio"

    const-string v5, "SOS/RoadsideAssistanceAudio"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x9000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "SOS/RoadsideAssistanceCallbackReq"

    const-string v22, "SOS / Roadside Assistance Callback Req"

    const-string v25, "SOS/RoadsideAssistanceCallbackReq"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x9000047

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/RoadsideAssistancePhoneNumber"

    const-string v2, "SOS / Roadside Assistance Phone Number"

    const-string v5, "SOS/RoadsideAssistancePhoneNumber"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x9000017

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "SOS/RoadsideAssistanceSpeakerReq"

    const-string v24, "SOS / Roadside Assistance Speaker Req"

    const-string v27, "SOS/RoadsideAssistanceSpeakerReq"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x900006c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SOS/RoadsideBCall"

    const-string v2, "SOS / Roadside BCall"

    const-string v5, "SOS/RoadsideBCall"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x900006d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "SOS/RoadsideECall"

    const-string v26, "SOS / Roadside ECall"

    const-string v29, "SOS/RoadsideECall"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v23}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Screen(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Screen/Info"

    const-string v2, "Screen / \u4fe1\u606f"

    const-string v5, "Screen/Info"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Sensor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x200005e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Sensor/AirQualityAutoNotification"

    const-string v2, "\u4f20\u611f\u5668 / Air Quality Auto Notification"

    const-string v5, "Sensor/AirQualityAutoNotification"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x200005d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Sensor/AirQualityNotification"

    const-string v9, "\u4f20\u611f\u5668 / Air Quality Notification"

    const-string v12, "Sensor/AirQualityNotification"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x2000054

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Sensor/InsideAirLevel"

    const-string v15, "\u4f20\u611f\u5668 / Inside Air Level"

    const-string v18, "Sensor/InsideAirLevel"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x200000f

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Sensor/InsideAirQuality"

    const-string v9, "\u4f20\u611f\u5668 / \u8f66\u5185\u7a7a\u6c14\u8d28\u91cf"

    const-string v12, "Sensor/InsideAirQuality"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x2000041

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Sensor/InsideTemperature"

    const-string v15, "\u4f20\u611f\u5668 / \u8f66\u5185\u6e29\u5ea6"

    const-string v18, "Sensor/InsideTemperature"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x200000d

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Sensor/LightIntensity"

    const-string v9, "\u4f20\u611f\u5668 / Light Intensity"

    const-string v12, "Sensor/LightIntensity"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x2000053

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Sensor/OutsideAirLevel"

    const-string v15, "\u4f20\u611f\u5668 / Outside Air Level"

    const-string v18, "Sensor/OutsideAirLevel"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x200000c

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Sensor/OutsideAirQuality"

    const-string v10, "\u4f20\u611f\u5668 / \u8f66\u5916\u7a7a\u6c14\u8d28\u91cf"

    const-string v13, "Sensor/OutsideAirQuality"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x2000040

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Sensor/OutsideTemperature"

    const-string v17, "\u4f20\u611f\u5668 / \u8f66\u5916\u6e29\u5ea6"

    const-string v20, "Sensor/OutsideTemperature"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_SoC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2e000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SoC/AbnormalEvent/Report"

    const-string v2, "So C / Abnormal Event / Report"

    const-string v5, "SoC/AbnormalEvent/Report"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_SunShade(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u906e\u9633\u5e18 / Movement"

    const/4 v3, 0x0

    const-string v1, "SunShade/Movement"

    const/4 v4, 0x0

    const-string v5, "SunShade/Movement"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u906e\u9633\u5e18 / Pos Vit Fl"

    const/4 v9, 0x0

    const-string v7, "SunShade/PosVitFl"

    const/4 v10, 0x0

    const-string v11, "SunShade/PosVitFl"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_SystemMonitor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x11000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemMonitor/CpuFreq"

    const-string v2, "\u7cfb\u7edf\u76d1\u63a7 / Cpu Freq"

    const-string v5, "SystemMonitor/CpuFreq"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x11000003

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "SystemMonitor/CpuMaxFreq"

    const-string v9, "\u7cfb\u7edf\u76d1\u63a7 / Cpu Max Freq"

    const-string v12, "SystemMonitor/CpuMaxFreq"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x11000007

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "SystemMonitor/CpuTemperature"

    const-string v15, "\u7cfb\u7edf\u76d1\u63a7 / Cpu Temperature"

    const-string v18, "SystemMonitor/CpuTemperature"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x11000001

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "SystemMonitor/CpuUsage/QNX"

    const-string v9, "\u7cfb\u7edf\u76d1\u63a7 / Cpu Usage / QNX \u7cfb\u7edf"

    const-string v12, "SystemMonitor/CpuUsage/QNX"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x11000004

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "SystemMonitor/MemOccupy/QNX"

    const-string v15, "\u7cfb\u7edf\u76d1\u63a7 / Mem Occupy / QNX \u7cfb\u7edf"

    const-string v18, "SystemMonitor/MemOccupy/QNX"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x11000005

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "SystemMonitor/MemOccupyPercent/QNX"

    const-string v9, "\u7cfb\u7edf\u76d1\u63a7 / Mem Occupy Percent / QNX \u7cfb\u7edf"

    const-string v12, "SystemMonitor/MemOccupyPercent/QNX"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x11000006

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "SystemMonitor/TotalMem/QNX"

    const-string v15, "\u7cfb\u7edf\u76d1\u63a7 / Total Mem / QNX \u7cfb\u7edf"

    const-string v18, "SystemMonitor/TotalMem/QNX"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_SystemSetting(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x2300001e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/AlarmVolume"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Alarm Volume"

    const-string v5, "SystemSetting/AlarmVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x23000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "SystemSetting/AndroidReady"

    const-string v10, "\u7cfb\u7edf\u8bbe\u7f6e / Android Ready"

    const-string v13, "SystemSetting/AndroidReady"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x2300001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/AssistantVolume"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Assistant Volume"

    const-string v5, "SystemSetting/AssistantVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x23000006

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "SystemSetting/CanData"

    const-string v12, "\u7cfb\u7edf\u8bbe\u7f6e / Can Data"

    const-string v15, "SystemSetting/CanData"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x23000020

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/CarSpeedVolumeLevel"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Car Speed Volume Level"

    const-string v5, "SystemSetting/CarSpeedVolumeLevel"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x23000017

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "SystemSetting/DayNightMode"

    const-string v14, "\u7cfb\u7edf\u8bbe\u7f6e / Day Night Mode"

    const-string v17, "SystemSetting/DayNightMode"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x23000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/DefaultVolume"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Default Volume"

    const-string v5, "SystemSetting/DefaultVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-string v16, "\u7cfb\u7edf\u8bbe\u7f6e / Display Unit"

    const/16 v17, 0x0

    const-string v15, "SystemSetting/DisplayUnit"

    const/16 v18, 0x0

    const-string v19, "SystemSetting/DisplayUnit"

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x23000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/Language"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / \u8bed\u8a00"

    const-string v5, "SystemSetting/Language"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x23000021

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "SystemSetting/LoudnessSwitch"

    const-string v18, "\u7cfb\u7edf\u8bbe\u7f6e / Loudness Switch"

    const-string v21, "SystemSetting/LoudnessSwitch"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x2300001c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/MediaVolume"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / \u5a92\u4f53\u97f3\u91cf"

    const-string v5, "SystemSetting/MediaVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x2300001a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "SystemSetting/NavigationVolume"

    const-string v20, "\u7cfb\u7edf\u8bbe\u7f6e / \u5bfc\u822a\u97f3\u91cf"

    const-string v23, "SystemSetting/NavigationVolume"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x2300001d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/PhoneVolume"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Phone Volume"

    const-string v5, "SystemSetting/PhoneVolume"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x23000007

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "SystemSetting/ScreenShot"

    const-string v22, "\u7cfb\u7edf\u8bbe\u7f6e / Screen Shot"

    const-string v25, "SystemSetting/ScreenShot"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x23000023

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/SoundFieldBalance"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Sound Field Balance"

    const-string v5, "SystemSetting/SoundFieldBalance"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x23000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "SystemSetting/SoundFieldFader"

    const-string v24, "\u7cfb\u7edf\u8bbe\u7f6e / Sound Field Fader"

    const-string v27, "SystemSetting/SoundFieldFader"

    move-object/from16 v25, v26

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x23000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/Theme"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / \u4e3b\u9898"

    const-string v5, "SystemSetting/Theme"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x23000008

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "SystemSetting/TimeFormat"

    const-string v26, "\u7cfb\u7edf\u8bbe\u7f6e / Time Format"

    const-string v29, "SystemSetting/TimeFormat"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x2300001f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "SystemSetting/VolumeEffectAdjust"

    const-string v2, "\u7cfb\u7edf\u8bbe\u7f6e / Volume Effect Adjust"

    const-string v5, "SystemSetting/VolumeEffectAdjust"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v24}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_TBOX_2F7(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "TBOX \u62a5\u6587 2F7 / Tbox Bokg Heat Req Sts"

    const/4 v3, 0x0

    const-string v1, "TBOX_2F7/TboxBokgHeatReqSts"

    const/4 v4, 0x0

    const-string v5, "TBOX_2F7/TboxBokgHeatReqSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "TBOX \u62a5\u6587 2F7 / Tbox Heat Req"

    const/4 v9, 0x0

    const-string v7, "TBOX_2F7/TboxHeatReq"

    const/4 v10, 0x0

    const-string v11, "TBOX_2F7/TboxHeatReq"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v3, "TBOX \u62a5\u6587 2F7 / Tbox Set Standy Mode"

    const-string v2, "TBOX_2F7/TboxSetStandyMode"

    const/4 v5, 0x0

    const-string v6, "TBOX_2F7/TboxSetStandyMode"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_TBox(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x9000053

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "TBox/ConnectState"

    const-string v2, "TBox / Connect State"

    const-string v5, "TBox/ConnectState"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x9000063

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "TBox/Iccid"

    const-string v9, "TBox / Iccid"

    const-string v12, "TBox/Iccid"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x9000062

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "TBox/NetworkInfo"

    const-string v15, "TBox / Network Info"

    const-string v18, "TBox/NetworkInfo"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x9000061

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "TBox/SignalStrength"

    const-string v9, "TBox / Signal Strength"

    const-string v12, "TBox/SignalStrength"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x900005a

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "TBox/SimStatus"

    const-string v15, "TBox / Sim Status"

    const-string v18, "TBox/SimStatus"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x9000060

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "TBox/Sn"

    const-string v9, "TBox / Sn"

    const-string v12, "TBox/Sn"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x9000054

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "TBox/Version"

    const-string v15, "TBox / Version"

    const-string v18, "TBox/Version"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x900005f

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "TBox/Vin"

    const-string v10, "TBox / Vin"

    const-string v13, "TBox/Vin"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_TURN_54B(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "TURN \u62a5\u6587 54B / Turn CDC Tv Mod Sts"

    const/4 v3, 0x0

    const-string v1, "TURN_54B/TurnCdcTvModSts"

    const/4 v4, 0x0

    const-string v5, "TURN_54B/TurnCdcTvModSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Telltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6307\u793a\u706f / Charge Connection"

    const/4 v3, 0x0

    const-string v1, "Telltale/ChargeConnection"

    const/4 v4, 0x0

    const-string v5, "Telltale/ChargeConnection"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6307\u793a\u706f / \u5145\u7535\u72b6\u6001"

    const/4 v10, 0x0

    const-string v8, "Telltale/ChargeState"

    const/4 v11, 0x0

    const-string v12, "Telltale/ChargeState"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x500001c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Telltale/DischargeState"

    const-string v15, "\u6307\u793a\u706f / Discharge State"

    const-string v18, "Telltale/DischargeState"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6307\u793a\u706f / EPSFail"

    const-string v8, "Telltale/EPSFail"

    const-string v12, "Telltale/EPSFail"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0xa00000c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Telltale/ESC/Status"

    const-string v15, "\u6307\u793a\u706f / \u8f66\u8eab\u7a33\u5b9a\u7cfb\u7edf / \u72b6\u6001"

    const-string v18, "Telltale/ESC/Status"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0xb000025

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "Telltale/FaultQuantityIndicator"

    const-string v9, "\u6307\u793a\u706f / Fault Quantity Indicator"

    const-string v12, "Telltale/FaultQuantityIndicator"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x500003b

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Telltale/PowerBatteryHeating"

    const-string v15, "\u6307\u793a\u706f / Power Battery Heating"

    const-string v18, "Telltale/PowerBatteryHeating"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x8000018

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Telltale/Ready"

    const-string v10, "\u6307\u793a\u706f / Ready"

    const-string v13, "Telltale/Ready"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u6307\u793a\u706f / \u51ac\u5b63\u6a21\u5f0f"

    const/16 v18, 0x0

    const-string v16, "Telltale/WinterMode"

    const/16 v19, 0x0

    const-string v20, "Telltale/WinterMode"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v8}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_TurnLight(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x800002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "TurnLight/State"

    const-string v2, "\u8f6c\u5411\u706f / State\uff08\u517c\u5bb9\u6620\u5c04\u5230\uff1a\u706f\u5149 / \u8f6c\u5411\u706f\u72b6\u6001\uff09"

    const-string v5, "Light/TurnLightStatus"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_Uuid(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x23000024

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Uuid/info"

    const-string v2, "Uuid / info"

    const-string v5, "Uuid/info"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VCU_1A1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "VCU \u62a5\u6587 1A1 / VCU Ext Hv Pwr Cns Act"

    const/4 v3, 0x0

    const-string v1, "VCU_1A1/VcuExtHvPwrCnsAct"

    const/4 v4, 0x0

    const-string v5, "VCU_1A1/VcuExtHvPwrCnsAct"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VCU_2A1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / APA Vertical RPASwith Enable"

    const/4 v3, 0x0

    const-string v1, "VCU_2A1/APA_VerticalRPASwithEnable"

    const/4 v4, 0x0

    const-string v5, "VCU_2A1/APA_VerticalRPASwithEnable"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / \u52a0\u901f\u8e0f\u677f\u5f00\u5ea6"

    const/4 v10, 0x0

    const-string v8, "VCU_2A1/VcuAccrPedlPosn"

    const/4 v11, 0x0

    const-string v12, "VCU_2A1/VcuAccrPedlPosn"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Brk Li On Req"

    const/16 v16, 0x0

    const-string v14, "VCU_2A1/VcuBrkLiOnReq"

    const/16 v17, 0x0

    const-string v18, "VCU_2A1/VcuBrkLiOnReq"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Exhi Hal Mod Sts"

    const-string v8, "VCU_2A1/VcuExhiHalModSts"

    const-string v12, "VCU_2A1/VcuExhiHalModSts"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Exhi Hal Mod Sts Overseas"

    const-string v14, "VCU_2A1/VcuExhiHalModStsOverseas"

    const-string v18, "VCU_2A1/VcuExhiHalModStsOverseas"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU FEve Ava Sin"

    const-string v8, "VCU_2A1/VcuFEveAvaSin"

    const-string v12, "VCU_2A1/VcuFEveAvaSin"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU FEve Exit Text Disp"

    const-string v14, "VCU_2A1/VcuFEveExitTextDisp"

    const-string v18, "VCU_2A1/VcuFEveExitTextDisp"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v10, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU FEve Set Sts"

    const-string v9, "VCU_2A1/VcuFEveSetSts"

    const/4 v12, 0x0

    const-string v13, "VCU_2A1/VcuFEveSetSts"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Fuelrecharge Flag"

    const/16 v18, 0x0

    const-string v16, "VCU_2A1/VcuFuelrechargeFlag"

    const/16 v19, 0x0

    const-string v20, "VCU_2A1/VcuFuelrechargeFlag"

    move-object v15, v8

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Fuelrecharge Posn Set Sts"

    const/16 v24, 0x0

    const-string v22, "VCU_2A1/VcuFuelrechargePosnSetSts"

    const/16 v25, 0x0

    const-string v26, "VCU_2A1/VcuFuelrechargePosnSetSts"

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v17, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU Fuelrecharge Set Sts"

    const-string v16, "VCU_2A1/VcuFuelrechargeSetSts"

    const-string v20, "VCU_2A1/VcuFuelrechargeSetSts"

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v23, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_2A1 / VCU \u8f66\u8f86 Err Info"

    const-string v22, "VCU_2A1/VcuVehErrInfo"

    const-string v26, "VCU_2A1/VcuVehErrInfo"

    move-object/from16 v21, v11

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VCU_309(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU Fuel Low"

    const/4 v3, 0x0

    const-string v1, "VCU_309/VcuFuelLow"

    const/4 v4, 0x0

    const-string v5, "VCU_309/VcuFuelLow"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Chrg Avrg Egy Cnse"

    const/4 v10, 0x0

    const-string v8, "VCU_309/VcuVehChrgAvrgEgyCnse"

    const/4 v11, 0x0

    const-string v12, "VCU_309/VcuVehChrgAvrgEgyCnse"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Chrg Egy Cnse Acce"

    const/16 v16, 0x0

    const-string v14, "VCU_309/VcuVehChrgEgyCnseAcce"

    const/16 v17, 0x0

    const-string v18, "VCU_309/VcuVehChrgEgyCnseAcce"

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Egy Cnse In Trip A"

    const-string v8, "VCU_309/VcuVehEgyCnseInTripA"

    const-string v12, "VCU_309/VcuVehEgyCnseInTripA"

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Egy Cnse In Trip AAcce"

    const-string v14, "VCU_309/VcuVehEgyCnseInTripAAcce"

    const-string v18, "VCU_309/VcuVehEgyCnseInTripAAcce"

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v9, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Egy Cnse Long Time"

    const-string v8, "VCU_309/VcuVehEgyCnseLongTime"

    const-string v12, "VCU_309/VcuVehEgyCnseLongTime"

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v15, "\u6574\u8f66\u63a7\u5236\u5668\u62a5\u6587 VCU_309 / VCU \u8f66\u8f86 Egy Cnse Long Time Acce"

    const-string v14, "VCU_309/VcuVehEgyCnseLongTimeAcce"

    const-string v18, "VCU_309/VcuVehEgyCnseLongTimeAcce"

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Vehicle(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6574\u8f66 / \u95e8\u9501\u72b6\u6001"

    const/4 v3, 0x0

    const-string v1, "Vehicle/DoorLockStatus"

    const/4 v4, 0x0

    const-string v5, "Vehicle/DoorLockStatus"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v8, "\u6574\u8f66 / \u5b89\u5168\u5e26"

    const/4 v9, 0x0

    const-string v7, "Vehicle/SeatBelt"

    const/4 v10, 0x0

    const-string v11, "Vehicle/SeatBelt"

    move-object v6, v0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VehicleBody(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x9000045

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleBody/InsideTemperature"

    const-string v2, "\u8f66\u8eab / \u8f66\u5185\u6e29\u5ea6"

    const-string v5, "VehicleBody/InsideTemperature"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x9000046

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "VehicleBody/OutsideTemperature"

    const-string v8, "\u8f66\u8eab / \u8f66\u5916\u6e29\u5ea6"

    const-string v11, "VehicleBody/OutsideTemperature"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x200005f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "VehicleBody/VehicleMaintenance/ACFilterChangeTips"

    const-string v3, "\u8f66\u8eab / \u8f66\u8f86\u7ef4\u62a4 / ACFilter Change Tips"

    const-string v6, "VehicleBody/VehicleMaintenance/ACFilterChangeTips"

    move-object v1, v7

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VehicleCharge(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x600000e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleCharge/ACChargePlugged"

    const-string v2, "\u5145\u7535\u7cfb\u7edf / ACCharge Plugged"

    const-string v5, "VehicleCharge/ACChargePlugged"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x6000010

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleCharge/ACChargePort"

    const-string v9, "\u5145\u7535\u7cfb\u7edf / ACCharge Port"

    const-string v12, "VehicleCharge/ACChargePort"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x600000d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleCharge/ChargeHood"

    const-string v15, "\u5145\u7535\u7cfb\u7edf / Charge Hood"

    const-string v18, "VehicleCharge/ChargeHood"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x500002a

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleCharge/ChargePileBTConnectRequest"

    const-string v9, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTConnect Request"

    const-string v12, "VehicleCharge/ChargePileBTConnectRequest"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x500002c

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleCharge/ChargePileBTConnectStatus"

    const-string v15, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTConnect Status"

    const-string v18, "VehicleCharge/ChargePileBTConnectStatus"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x500002b

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleCharge/ChargePileBTCurrentId"

    const-string v9, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTCurrent \u7f16\u53f7"

    const-string v12, "VehicleCharge/ChargePileBTCurrentId"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x5000028

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleCharge/ChargePileBTDeletePairRequest"

    const-string v15, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTDelete Pair Request"

    const-string v18, "VehicleCharge/ChargePileBTDeletePairRequest"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x5000029

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleCharge/ChargePileBTDisconnectRequest"

    const-string v10, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTDisconnect Request"

    const-string v13, "VehicleCharge/ChargePileBTDisconnectRequest"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x5000027

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "VehicleCharge/ChargePileBTSwitch"

    const-string v17, "\u5145\u7535\u7cfb\u7edf / Charge Pile BTSwitch"

    const-string v20, "VehicleCharge/ChargePileBTSwitch"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x600000f

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "VehicleCharge/DCChargePlugged"

    const-string v23, "\u5145\u7535\u7cfb\u7edf / DCCharge Plugged"

    const-string v26, "VehicleCharge/DCChargePlugged"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x6000011

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "VehicleCharge/DCChargePort"

    const-string v17, "\u5145\u7535\u7cfb\u7edf / DCCharge Port"

    const-string v20, "VehicleCharge/DCChargePort"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v10}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VehicleDoor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 42

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x6000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/ChildSafetyLock"

    const-string v2, "\u8f66\u95e8 / \u513f\u7ae5\u9501"

    const-string v5, "VehicleDoor/ChildSafetyLock"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x600002b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleDoor/ChildSafetyLock/All"

    const-string v10, "\u8f66\u95e8 / \u513f\u7ae5\u9501 / \u5168\u90e8"

    const-string v13, "VehicleDoor/ChildSafetyLock/All"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x6000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/ChildSafetyLock/FrontLeft"

    const-string v2, "\u8f66\u95e8 / \u513f\u7ae5\u9501 / \u524d\u5de6"

    const-string v5, "VehicleDoor/ChildSafetyLock/FrontLeft"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x6000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "VehicleDoor/ChildSafetyLock/FrontRight"

    const-string v12, "\u8f66\u95e8 / \u513f\u7ae5\u9501 / \u524d\u53f3"

    const-string v15, "VehicleDoor/ChildSafetyLock/FrontRight"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x6000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/ChildSafetyLock/RearLeft"

    const-string v2, "\u8f66\u95e8 / \u513f\u7ae5\u9501 / \u540e\u5de6"

    const-string v5, "VehicleDoor/ChildSafetyLock/RearLeft"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x600002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "VehicleDoor/ChildSafetyLock/RearRight"

    const-string v14, "\u8f66\u95e8 / \u513f\u7ae5\u9501 / \u540e\u53f3"

    const-string v17, "VehicleDoor/ChildSafetyLock/RearRight"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x6000009

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/Door"

    const-string v2, "\u8f66\u95e8 / \u8f66\u95e8"

    const-string v5, "VehicleDoor/Door"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x6000031

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "VehicleDoor/Door/Back"

    const-string v16, "\u8f66\u95e8 / \u8f66\u95e8 / \u540e\u90e8"

    const-string v19, "VehicleDoor/Door/Back"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x600002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/Door/FrontLeft"

    const-string v2, "\u8f66\u95e8 / \u8f66\u95e8 / \u524d\u5de6"

    const-string v5, "VehicleDoor/Door/FrontLeft"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x600002d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "VehicleDoor/Door/FrontRight"

    const-string v18, "\u8f66\u95e8 / \u8f66\u95e8 / \u524d\u53f3"

    const-string v21, "VehicleDoor/Door/FrontRight"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x6000030

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/Door/Hood"

    const-string v2, "\u8f66\u95e8 / \u8f66\u95e8 / \u673a\u8231\u76d6"

    const-string v5, "VehicleDoor/Door/Hood"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x600002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "VehicleDoor/Door/RearLeft"

    const-string v20, "\u8f66\u95e8 / \u8f66\u95e8 / \u540e\u5de6"

    const-string v23, "VehicleDoor/Door/RearLeft"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x600002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/Door/RearRight"

    const-string v2, "\u8f66\u95e8 / \u8f66\u95e8 / \u540e\u53f3"

    const-string v5, "VehicleDoor/Door/RearRight"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x600000a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "VehicleDoor/DoorLock"

    const-string v22, "\u8f66\u95e8 / \u95e8\u9501"

    const-string v25, "VehicleDoor/DoorLock"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x6000037

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/DoorLock/Back"

    const-string v2, "\u8f66\u95e8 / \u95e8\u9501 / \u540e\u90e8"

    const-string v5, "VehicleDoor/DoorLock/Back"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x6000032

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "VehicleDoor/DoorLock/FrontLeft"

    const-string v24, "\u8f66\u95e8 / \u95e8\u9501 / \u524d\u5de6"

    const-string v27, "VehicleDoor/DoorLock/FrontLeft"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x6000033

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/DoorLock/FrontRight"

    const-string v2, "\u8f66\u95e8 / \u95e8\u9501 / \u524d\u53f3"

    const-string v5, "VehicleDoor/DoorLock/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x6000036

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "VehicleDoor/DoorLock/Hood"

    const-string v26, "\u8f66\u95e8 / \u95e8\u9501 / \u673a\u8231\u76d6"

    const-string v29, "VehicleDoor/DoorLock/Hood"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x6000034

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/DoorLock/RearLeft"

    const-string v2, "\u8f66\u95e8 / \u95e8\u9501 / \u540e\u5de6"

    const-string v5, "VehicleDoor/DoorLock/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x6000035

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "VehicleDoor/DoorLock/RearRight"

    const-string v28, "\u8f66\u95e8 / \u95e8\u9501 / \u540e\u53f3"

    const-string v31, "VehicleDoor/DoorLock/RearRight"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x6000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/DoorUnlockMode"

    const-string v2, "\u8f66\u95e8 / Door Unlock Mode"

    const-string v5, "VehicleDoor/DoorUnlockMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x600001a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "VehicleDoor/DrivingAutoLock"

    const-string v30, "\u8f66\u95e8 / Driving Auto Lock"

    const-string v33, "VehicleDoor/DrivingAutoLock"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x6000024

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/GloveCase"

    const-string v2, "\u8f66\u95e8 / Glove Case"

    const-string v5, "VehicleDoor/GloveCase"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x6000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "VehicleDoor/InductionUnlock"

    const-string v32, "\u8f66\u95e8 / Induction Unlock"

    const-string v35, "VehicleDoor/InductionUnlock"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x6000003

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/LeavingAutoLock"

    const-string v2, "\u8f66\u95e8 / Leaving Auto Lock"

    const-string v5, "VehicleDoor/LeavingAutoLock"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x6000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "VehicleDoor/LocksTrunkLock"

    const-string v34, "\u8f66\u95e8 / Locks Trunk Lock"

    const-string v37, "VehicleDoor/LocksTrunkLock"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0x6000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/ParkingAutoUnlock"

    const-string v2, "\u8f66\u95e8 / Parking Auto Unlock"

    const-string v5, "VehicleDoor/ParkingAutoUnlock"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x6000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "VehicleDoor/TrunkDoorDegree"

    const-string v36, "\u8f66\u95e8 / Trunk Door Degree"

    const-string v39, "VehicleDoor/TrunkDoorDegree"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x600000b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleDoor/TrunkDoorOpenDegree"

    const-string v2, "\u8f66\u95e8 / \u5c3e\u95e8\u5f00\u542f\u89d2\u5ea6"

    const-string v5, "VehicleDoor/TrunkDoorOpenDegree"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x900006a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "VehicleDoor/TrunkSts"

    const-string v38, "\u8f66\u95e8 / Trunk Sts"

    const-string v41, "VehicleDoor/TrunkSts"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v35}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VehicleInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x900006e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleInfo/VehicleColor"

    const-string v2, "Vehicle Info / Vehicle Color"

    const-string v5, "VehicleInfo/VehicleColor"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VehicleMaintenance(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 36

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x9000033

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/ACFilterRepairLastKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / ACFilter Repair Last KM"

    const-string v5, "VehicleMaintenance/ACFilterRepairLastKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x9000032

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleMaintenance/ACFilterRepairLastTime"

    const-string v10, "\u8f66\u8f86\u7ef4\u62a4 / ACFilter Repair Last Time"

    const-string v13, "VehicleMaintenance/ACFilterRepairLastTime"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x9000035

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/ACFilterRepairNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / ACFilter Repair Next KM"

    const-string v5, "VehicleMaintenance/ACFilterRepairNextKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x9000034

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "VehicleMaintenance/ACFilterRepairNextTime"

    const-string v12, "\u8f66\u8f86\u7ef4\u62a4 / ACFilter Repair Next Time"

    const-string v15, "VehicleMaintenance/ACFilterRepairNextTime"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x9000037

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/AirFilterRepairLastKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Air Filter Repair Last KM"

    const-string v5, "VehicleMaintenance/AirFilterRepairLastKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x9000036

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "VehicleMaintenance/AirFilterRepairLastTime"

    const-string v14, "\u8f66\u8f86\u7ef4\u62a4 / Air Filter Repair Last Time"

    const-string v17, "VehicleMaintenance/AirFilterRepairLastTime"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x9000039

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/AirFilterRepairNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Air Filter Repair Next KM"

    const-string v5, "VehicleMaintenance/AirFilterRepairNextKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x9000038

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "VehicleMaintenance/AirFilterRepairNextTime"

    const-string v16, "\u8f66\u8f86\u7ef4\u62a4 / Air Filter Repair Next Time"

    const-string v19, "VehicleMaintenance/AirFilterRepairNextTime"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x900002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/BrakeFluidRepairLastKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Brake Fluid Repair Last KM"

    const-string v5, "VehicleMaintenance/BrakeFluidRepairLastKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x900002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "VehicleMaintenance/BrakeFluidRepairLastTime"

    const-string v18, "\u8f66\u8f86\u7ef4\u62a4 / Brake Fluid Repair Last Time"

    const-string v21, "VehicleMaintenance/BrakeFluidRepairLastTime"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x9000031

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/BrakeFluidRepairNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Brake Fluid Repair Next KM"

    const-string v5, "VehicleMaintenance/BrakeFluidRepairNextKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x9000030

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "VehicleMaintenance/BrakeFluidRepairNextTime"

    const-string v20, "\u8f66\u8f86\u7ef4\u62a4 / Brake Fluid Repair Next Time"

    const-string v23, "VehicleMaintenance/BrakeFluidRepairNextTime"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x9000027

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/OilFilterRepairLastKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Oil Filter Repair Last KM"

    const-string v5, "VehicleMaintenance/OilFilterRepairLastKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x9000026

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "VehicleMaintenance/OilFilterRepairLastTime"

    const-string v22, "\u8f66\u8f86\u7ef4\u62a4 / Oil Filter Repair Last Time"

    const-string v25, "VehicleMaintenance/OilFilterRepairLastTime"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x9000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/OilFilterRepairNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Oil Filter Repair Next KM"

    const-string v5, "VehicleMaintenance/OilFilterRepairNextKM"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x9000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "VehicleMaintenance/OilFilterRepairNextTime"

    const-string v24, "\u8f66\u8f86\u7ef4\u62a4 / Oil Filter Repair Next Time"

    const-string v27, "VehicleMaintenance/OilFilterRepairNextTime"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x900002b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/SparkPlugRepairLastKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Spark Plug Repair Last KM"

    const-string v5, "VehicleMaintenance/SparkPlugRepairLastKM"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x900002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "VehicleMaintenance/SparkPlugRepairLastTime"

    const-string v26, "\u8f66\u8f86\u7ef4\u62a4 / Spark Plug Repair Last Time"

    const-string v29, "VehicleMaintenance/SparkPlugRepairLastTime"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x900002d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/SparkPlugRepairNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Spark Plug Repair Next KM"

    const-string v5, "VehicleMaintenance/SparkPlugRepairNextKM"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x900002c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "VehicleMaintenance/SparkPlugRepairNextTime"

    const-string v28, "\u8f66\u8f86\u7ef4\u62a4 / Spark Plug Repair Next Time"

    const-string v31, "VehicleMaintenance/SparkPlugRepairNextTime"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x9000041

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/VehicleMaintenanceNextKM"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Vehicle Maintenance Next KM"

    const-string v5, "VehicleMaintenance/VehicleMaintenanceNextKM"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x9000040

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "VehicleMaintenance/VehicleMaintenanceNextTime"

    const-string v30, "\u8f66\u8f86\u7ef4\u62a4 / Vehicle Maintenance Next Time"

    const-string v33, "VehicleMaintenance/VehicleMaintenanceNextTime"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x9000024

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleMaintenance/VehicleMaintenanceNotice/Set"

    const-string v2, "\u8f66\u8f86\u7ef4\u62a4 / Vehicle Maintenance Notice / Set"

    const-string v5, "VehicleMaintenance/VehicleMaintenanceNotice/Set"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x9000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "VehicleMaintenance/VehicleMaintenanceSave"

    const-string v32, "\u8f66\u8f86\u7ef4\u62a4 / Vehicle Maintenance Save"

    const-string v35, "VehicleMaintenance/VehicleMaintenanceSave"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v29}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VehicleSeat(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 84

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0x3000051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/CopilotHeat"

    const-string v2, "\u5ea7\u6905 / Copilot Heat"

    const-string v5, "VehicleSeat/CopilotHeat"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0x3000050

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleSeat/CopilotVentilation"

    const-string v10, "\u5ea7\u6905 / Copilot Ventilation"

    const-string v13, "VehicleSeat/CopilotVentilation"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x9000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/EasyEntry"

    const-string v2, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa"

    const-string v5, "VehicleSeat/EasyEntry"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0x900007c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "VehicleSeat/EasyEntry/FrontLeft"

    const-string v12, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa / \u524d\u5de6"

    const-string v15, "VehicleSeat/EasyEntry/FrontLeft"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x900007d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/EasyEntry/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa / \u524d\u53f3"

    const-string v5, "VehicleSeat/EasyEntry/FrontRight"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x900007e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "VehicleSeat/EasyEntry/RearLeft"

    const-string v14, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa / \u540e\u5de6"

    const-string v17, "VehicleSeat/EasyEntry/RearLeft"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0x900007f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/EasyEntry/RearMiddle"

    const-string v2, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa / \u540e\u4e2d"

    const-string v5, "VehicleSeat/EasyEntry/RearMiddle"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x9000080

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "VehicleSeat/EasyEntry/RearRight"

    const-string v16, "\u5ea7\u6905 / \u4fbf\u6377\u8fdb\u51fa / \u540e\u53f3"

    const-string v19, "VehicleSeat/EasyEntry/RearRight"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x300004f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/MainDriverHeat"

    const-string v2, "\u5ea7\u6905 / Main Driver Heat"

    const-string v5, "VehicleSeat/MainDriverHeat"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x300004e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "VehicleSeat/MainDriverVentilation"

    const-string v18, "\u5ea7\u6905 / Main Driver Ventilation"

    const-string v21, "VehicleSeat/MainDriverVentilation"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x3000039

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/MemoryResult"

    const-string v2, "\u5ea7\u6905 / Memory Result"

    const-string v5, "VehicleSeat/MemoryResult"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x3000047

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "VehicleSeat/PhoneLeaveAlert"

    const-string v20, "\u5ea7\u6905 / Phone Leave Alert"

    const-string v23, "VehicleSeat/PhoneLeaveAlert"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x3000028

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBack"

    const-string v2, "\u5ea7\u6905 / \u9760\u80cc"

    const-string v5, "VehicleSeat/SeatBack"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x3000061

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "VehicleSeat/SeatBack/FrontLeft"

    const-string v22, "\u5ea7\u6905 / \u9760\u80cc / \u524d\u5de6"

    const-string v25, "VehicleSeat/SeatBack/FrontLeft"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x3000062

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBack/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u9760\u80cc / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatBack/FrontRight"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x3000063

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "VehicleSeat/SeatBack/RearLeft"

    const-string v24, "\u5ea7\u6905 / \u9760\u80cc / \u540e\u5de6"

    const-string v27, "VehicleSeat/SeatBack/RearLeft"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x3000064

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBack/RearMiddle"

    const-string v2, "\u5ea7\u6905 / \u9760\u80cc / \u540e\u4e2d"

    const-string v5, "VehicleSeat/SeatBack/RearMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x3000065

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "VehicleSeat/SeatBack/RearRight"

    const-string v26, "\u5ea7\u6905 / \u9760\u80cc / \u540e\u53f3"

    const-string v29, "VehicleSeat/SeatBack/RearRight"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x8000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBelt"

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26"

    const-string v5, "VehicleSeat/SeatBelt"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x8000041

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "VehicleSeat/SeatBelt/FrontLeft"

    const-string v28, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u524d\u5de6"

    const-string v31, "VehicleSeat/SeatBelt/FrontLeft"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x8000042

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBelt/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatBelt/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x8000043

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "VehicleSeat/SeatBelt/RearLeft"

    const-string v30, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u540e\u5de6"

    const-string v33, "VehicleSeat/SeatBelt/RearLeft"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x8000044

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBelt/RearMiddle"

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u540e\u4e2d"

    const-string v5, "VehicleSeat/SeatBelt/RearMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x8000045

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "VehicleSeat/SeatBelt/RearRight"

    const-string v32, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u540e\u53f3"

    const-string v35, "VehicleSeat/SeatBelt/RearRight"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u7b2c\u4e8c\u6392\u5de6\u4fa7"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, "VehicleSeat/SeatBelt/SecondRowLeft"

    const-string v5, "VehicleSeat/SeatBelt/SecondRowLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-string v34, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u7b2c\u4e8c\u6392\u4e2d\u95f4"

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string v33, "VehicleSeat/SeatBelt/SecondRowMiddle"

    const-string v37, "VehicleSeat/SeatBelt/SecondRowMiddle"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u7b2c\u4e8c\u6392\u53f3\u4fa7"

    const-string v1, "VehicleSeat/SeatBelt/SecondRowRight"

    const-string v5, "VehicleSeat/SeatBelt/SecondRowRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x3000053

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "VehicleSeat/SeatBelt/Warning"

    const-string v36, "\u5ea7\u6905 / \u5b89\u5168\u5e26 / \u8b66\u544a"

    const-string v39, "VehicleSeat/SeatBelt/Warning"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x300003a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBeltCheck"

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26\u68c0\u67e5"

    const-string v5, "VehicleSeat/SeatBeltCheck"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x3000077

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "VehicleSeat/SeatBeltCheck/Front"

    const-string v38, "\u5ea7\u6905 / \u5b89\u5168\u5e26\u68c0\u67e5 / \u524d\u6392"

    const-string v41, "VehicleSeat/SeatBeltCheck/Front"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x3000078

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatBeltCheck/Rear"

    const-string v2, "\u5ea7\u6905 / \u5b89\u5168\u5e26\u68c0\u67e5 / \u540e\u6392"

    const-string v5, "VehicleSeat/SeatBeltCheck/Rear"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x3000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "VehicleSeat/SeatCtrlWelomeMode"

    const-string v40, "\u5ea7\u6905 / Seat Ctrl Welome Mode"

    const-string v43, "VehicleSeat/SeatCtrlWelomeMode"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x3000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatCushion"

    const-string v2, "\u5ea7\u6905 / \u5750\u57ab"

    const-string v5, "VehicleSeat/SeatCushion"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x3000066

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "VehicleSeat/SeatCushion/FrontLeft"

    const-string v42, "\u5ea7\u6905 / \u5750\u57ab / \u524d\u5de6"

    const-string v45, "VehicleSeat/SeatCushion/FrontLeft"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0x3000067

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatCushion/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u5750\u57ab / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatCushion/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0x3000068

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "VehicleSeat/SeatCushion/RearLeft"

    const-string v44, "\u5ea7\u6905 / \u5750\u57ab / \u540e\u5de6"

    const-string v47, "VehicleSeat/SeatCushion/RearLeft"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0x3000069

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatCushion/RearMiddle"

    const-string v2, "\u5ea7\u6905 / \u5750\u57ab / \u540e\u4e2d"

    const-string v5, "VehicleSeat/SeatCushion/RearMiddle"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0x300006a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "VehicleSeat/SeatCushion/RearRight"

    const-string v46, "\u5ea7\u6905 / \u5750\u57ab / \u540e\u53f3"

    const-string v49, "VehicleSeat/SeatCushion/RearRight"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0x3000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatLeg"

    const-string v2, "\u5ea7\u6905 / \u817f\u6258"

    const-string v5, "VehicleSeat/SeatLeg"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0x300005b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "VehicleSeat/SeatLeg/RearRight"

    const-string v48, "\u5ea7\u6905 / \u817f\u6258 / \u540e\u53f3"

    const-string v51, "VehicleSeat/SeatLeg/RearRight"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0x3000032

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatLumbarSupport"

    const-string v2, "\u5ea7\u6905 / \u8170\u6258"

    const-string v5, "VehicleSeat/SeatLumbarSupport"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0x3000073

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "VehicleSeat/SeatLumbarSupport/FrontLeft"

    const-string v50, "\u5ea7\u6905 / \u8170\u6258 / \u524d\u5de6"

    const-string v53, "VehicleSeat/SeatLumbarSupport/FrontLeft"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0x3000079

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatLumbarSupport/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u8170\u6258 / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatLumbarSupport/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0x300002e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "VehicleSeat/SeatMassage"

    const-string v52, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469"

    const-string v55, "VehicleSeat/SeatMassage"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0x300006b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMassage/FrontLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469 / \u524d\u5de6"

    const-string v5, "VehicleSeat/SeatMassage/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0x300006c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "VehicleSeat/SeatMassage/FrontRight"

    const-string v54, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469 / \u524d\u53f3"

    const-string v57, "VehicleSeat/SeatMassage/FrontRight"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0x300006d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMassage/RearLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469 / \u540e\u5de6"

    const-string v5, "VehicleSeat/SeatMassage/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0x300006e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "VehicleSeat/SeatMassage/RearRight"

    const-string v56, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469 / \u540e\u53f3"

    const-string v59, "VehicleSeat/SeatMassage/RearRight"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0x300002f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMassageMode"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469\u6a21\u5f0f"

    const-string v5, "VehicleSeat/SeatMassageMode"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0x300006f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "VehicleSeat/SeatMassageMode/FrontLeft"

    const-string v58, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469\u6a21\u5f0f / \u524d\u5de6"

    const-string v61, "VehicleSeat/SeatMassageMode/FrontLeft"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0x3000070

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMassageMode/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469\u6a21\u5f0f / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatMassageMode/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0x3000071

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "VehicleSeat/SeatMassageMode/RearLeft"

    const-string v60, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469\u6a21\u5f0f / \u540e\u5de6"

    const-string v63, "VehicleSeat/SeatMassageMode/RearLeft"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0x3000072

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMassageMode/RearRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u6309\u6469\u6a21\u5f0f / \u540e\u53f3"

    const-string v5, "VehicleSeat/SeatMassageMode/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0x300002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "VehicleSeat/SeatMemory"

    const-string v62, "\u5ea7\u6905 / Seat Memory"

    const-string v65, "VehicleSeat/SeatMemory"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0x3000038

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMemoryName"

    const-string v2, "\u5ea7\u6905 / Seat Memory Name"

    const-string v5, "VehicleSeat/SeatMemoryName"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0x300003b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "VehicleSeat/SeatMemoryPos"

    const-string v64, "\u5ea7\u6905 / Seat Memory Pos"

    const-string v67, "VehicleSeat/SeatMemoryPos"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0x3000031

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatMemoryRead"

    const-string v2, "\u5ea7\u6905 / Seat Memory Read"

    const-string v5, "VehicleSeat/SeatMemoryRead"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0x8000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "VehicleSeat/SeatOccupied"

    const-string v66, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528"

    const-string v69, "VehicleSeat/SeatOccupied"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0x8000046

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatOccupied/FrontLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528 / \u524d\u5de6"

    const-string v5, "VehicleSeat/SeatOccupied/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0x8000047

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "VehicleSeat/SeatOccupied/FrontRight"

    const-string v68, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528 / \u524d\u53f3"

    const-string v71, "VehicleSeat/SeatOccupied/FrontRight"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0x8000048

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatOccupied/RearLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528 / \u540e\u5de6"

    const-string v5, "VehicleSeat/SeatOccupied/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0x8000049

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "VehicleSeat/SeatOccupied/RearMiddle"

    const-string v70, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528 / \u540e\u4e2d"

    const-string v73, "VehicleSeat/SeatOccupied/RearMiddle"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v0

    const-wide/32 v1, 0x800004a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatOccupied/RearRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u5360\u7528 / \u540e\u53f3"

    const-string v5, "VehicleSeat/SeatOccupied/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v70, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v70

    const-wide/32 v0, 0x3000033

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    const-string v71, "VehicleSeat/SeatOnekeyReset"

    const-string v72, "\u5ea7\u6905 / \u5ea7\u6905\u4e00\u952e\u590d\u4f4d"

    const-string v75, "VehicleSeat/SeatOnekeyReset"

    invoke-direct/range {v70 .. v75}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v0

    const-wide/32 v1, 0x3000074

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatOnekeyReset/FrontRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u4e00\u952e\u590d\u4f4d / \u524d\u53f3"

    const-string v5, "VehicleSeat/SeatOnekeyReset/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v72, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v72

    const-wide/32 v0, 0x3000075

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    const-string v73, "VehicleSeat/SeatOnekeyReset/RearLeft"

    const-string v74, "\u5ea7\u6905 / \u5ea7\u6905\u4e00\u952e\u590d\u4f4d / \u540e\u5de6"

    const-string v77, "VehicleSeat/SeatOnekeyReset/RearLeft"

    invoke-direct/range {v72 .. v77}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v0

    const-wide/32 v1, 0x3000076

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatOnekeyReset/RearRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u4e00\u952e\u590d\u4f4d / \u540e\u53f3"

    const-string v5, "VehicleSeat/SeatOnekeyReset/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v74, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v74

    const-wide/32 v0, 0x3000027

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v78

    const-string v75, "VehicleSeat/SeatPosition"

    const-string v76, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e"

    const-string v79, "VehicleSeat/SeatPosition"

    invoke-direct/range {v74 .. v79}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v0

    const-wide/32 v1, 0x300005c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatPosition/FrontLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e / \u524d\u5de6"

    const-string v5, "VehicleSeat/SeatPosition/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v76, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v75, v76

    const-wide/32 v0, 0x300005d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v79

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    const-string v77, "VehicleSeat/SeatPosition/FrontRight"

    const-string v78, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e / \u524d\u53f3"

    const-string v81, "VehicleSeat/SeatPosition/FrontRight"

    invoke-direct/range {v76 .. v81}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v76, v0

    const-wide/32 v1, 0x300005e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatPosition/RearLeft"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e / \u540e\u5de6"

    const-string v5, "VehicleSeat/SeatPosition/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v78, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v77, v78

    const-wide/32 v0, 0x300005f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    const-string v79, "VehicleSeat/SeatPosition/RearMiddle"

    const-string v80, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e / \u540e\u4e2d"

    const-string v83, "VehicleSeat/SeatPosition/RearMiddle"

    invoke-direct/range {v78 .. v83}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v78, v0

    const-wide/32 v1, 0x3000060

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSeat/SeatPosition/RearRight"

    const-string v2, "\u5ea7\u6905 / \u5ea7\u6905\u4f4d\u7f6e / \u540e\u53f3"

    const-string v5, "VehicleSeat/SeatPosition/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v78}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VehicleSettings(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x9000073

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleSettings/Default"

    const-string v2, "Vehicle Settings / Default"

    const-string v5, "VehicleSettings/Default"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_VehicleWheel(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x9000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWheel/TyrePressure"

    const-string v2, "\u8f66\u8f6e / \u80ce\u538b"

    const-string v5, "VehicleWheel/TyrePressure"

    move-object v0, v6

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x9000074

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleWheel/TyrePressure/FrontLeft"

    const-string v9, "\u8f66\u8f6e / \u80ce\u538b / \u524d\u5de6"

    const-string v12, "VehicleWheel/TyrePressure/FrontLeft"

    move-object v7, v1

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x900006f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleWheel/TyrePressure/FrontLeft_DiSABLE"

    const-string v15, "\u8f66\u8f6e / \u80ce\u538b / Front Left Di SABLE"

    const-string v18, "VehicleWheel/TyrePressure/FrontLeft_DiSABLE"

    move-object v13, v2

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x9000075

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleWheel/TyrePressure/FrontRight"

    const-string v9, "\u8f66\u8f6e / \u80ce\u538b / \u524d\u53f3"

    const-string v12, "VehicleWheel/TyrePressure/FrontRight"

    move-object v7, v3

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x9000070

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleWheel/TyrePressure/FrontRight_DiSABLE"

    const-string v15, "\u8f66\u8f6e / \u80ce\u538b / Front Right Di SABLE"

    const-string v18, "VehicleWheel/TyrePressure/FrontRight_DiSABLE"

    move-object v13, v4

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v7, 0x9000076

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v8, "VehicleWheel/TyrePressure/RearLeft"

    const-string v9, "\u8f66\u8f6e / \u80ce\u538b / \u540e\u5de6"

    const-string v12, "VehicleWheel/TyrePressure/RearLeft"

    move-object v7, v5

    move-object v10, v11

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x9000071

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "VehicleWheel/TyrePressure/RearLeft_DiSABLE"

    const-string v15, "\u8f66\u8f6e / \u80ce\u538b / Rear Left Di SABLE"

    const-string v18, "VehicleWheel/TyrePressure/RearLeft_DiSABLE"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x9000077

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleWheel/TyrePressure/RearRight"

    const-string v10, "\u8f66\u8f6e / \u80ce\u538b / \u540e\u53f3"

    const-string v13, "VehicleWheel/TyrePressure/RearRight"

    move-object v8, v14

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x9000072

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "VehicleWheel/TyrePressure/RearRight_DiSABLE"

    const-string v17, "\u8f66\u8f6e / \u80ce\u538b / Rear Right Di SABLE"

    const-string v20, "VehicleWheel/TyrePressure/RearRight_DiSABLE"

    move-object v15, v8

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x9000002

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "VehicleWheel/TyreTemperature"

    const-string v23, "\u8f66\u8f6e / \u80ce\u6e29"

    const-string v26, "VehicleWheel/TyreTemperature"

    move-object/from16 v21, v9

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v11, 0x9000078

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "VehicleWheel/TyreTemperature/FrontLeft"

    const-string v17, "\u8f66\u8f6e / \u80ce\u6e29 / \u524d\u5de6"

    const-string v20, "VehicleWheel/TyreTemperature/FrontLeft"

    move-object v15, v10

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v12, 0x9000079

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "VehicleWheel/TyreTemperature/FrontRight"

    const-string v23, "\u8f66\u8f6e / \u80ce\u6e29 / \u524d\u53f3"

    const-string v26, "VehicleWheel/TyreTemperature/FrontRight"

    move-object/from16 v21, v11

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v15, 0x900007a

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "VehicleWheel/TyreTemperature/RearLeft"

    const-string v17, "\u8f66\u8f6e / \u80ce\u6e29 / \u540e\u5de6"

    const-string v20, "VehicleWheel/TyreTemperature/RearLeft"

    move-object v15, v12

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v13, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v15, 0x900007b

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "VehicleWheel/TyreTemperature/RearRight"

    const-string v23, "\u8f66\u8f6e / \u80ce\u6e29 / \u540e\u53f3"

    const-string v26, "VehicleWheel/TyreTemperature/RearRight"

    move-object/from16 v21, v13

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v13}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_VehicleWindow(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 74

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0xc00001e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/FrontLeftWindow"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Front Left Window"

    const-string v5, "VehicleWindow/FrontLeftWindow"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0xc00001f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "VehicleWindow/FrontRightWindow"

    const-string v10, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Front Right Window"

    const-string v13, "VehicleWindow/FrontRightWindow"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-wide/32 v1, 0x1000018

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/MirrorMemResult"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Mirror Mem Result"

    const-string v5, "VehicleWindow/MirrorMemResult"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0xc000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "VehicleWindow/RearLeftWindow"

    const-string v12, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear Left Window"

    const-string v15, "VehicleWindow/RearLeftWindow"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-wide/32 v1, 0x100001f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearMirrorPositionAdjust"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear Mirror Position Adjust"

    const-string v5, "VehicleWindow/RearMirrorPositionAdjust"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0x100001e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "VehicleWindow/RearMirrorRotationAdjust"

    const-string v14, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear Mirror Rotation Adjust"

    const-string v17, "VehicleWindow/RearMirrorRotationAdjust"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0xc000021

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearRightWindow"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear Right Window"

    const-string v5, "VehicleWindow/RearRightWindow"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0x1000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "VehicleWindow/RearViewMirror"

    const-string v16, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c"

    const-string v19, "VehicleWindow/RearViewMirror"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0x1000024

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirror/Left"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c / \u5de6\u4fa7"

    const-string v5, "VehicleWindow/RearViewMirror/Left"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0x1000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "VehicleWindow/RearViewMirror/Right"

    const-string v18, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c / \u53f3\u4fa7"

    const-string v21, "VehicleWindow/RearViewMirror/Right"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0x1000019

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorAcoust"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u63d0\u793a\u97f3"

    const-string v5, "VehicleWindow/RearViewMirrorAcoust"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0x100002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "VehicleWindow/RearViewMirrorAcoust/Left"

    const-string v20, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u63d0\u793a\u97f3 / \u5de6\u4fa7"

    const-string v23, "VehicleWindow/RearViewMirrorAcoust/Left"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0x100002b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorAcoust/Right"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u63d0\u793a\u97f3 / \u53f3\u4fa7"

    const-string v5, "VehicleWindow/RearViewMirrorAcoust/Right"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-wide/32 v0, 0x1000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    const-string v21, "VehicleWindow/RearViewMirrorAutoFold"

    const-string v22, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u81ea\u52a8\u6298\u53e0"

    const-string v25, "VehicleWindow/RearViewMirrorAutoFold"

    move-object/from16 v23, v24

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-wide/32 v1, 0x1000001

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorAutoTurnDown"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u81ea\u52a8\u4e0b\u7ffb"

    const-string v5, "VehicleWindow/RearViewMirrorAutoTurnDown"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-wide/32 v0, 0x65000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    const-string v23, "VehicleWindow/RearViewMirrorAutoTurnDown/Set"

    const-string v24, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u81ea\u52a8\u4e0b\u7ffb / Set"

    const-string v27, "VehicleWindow/RearViewMirrorAutoTurnDown/Set"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-wide/32 v1, 0x1000007

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorFold"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear View Mirror Fold"

    const-string v5, "VehicleWindow/RearViewMirrorFold"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-wide/32 v0, 0x1000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    const-string v25, "VehicleWindow/RearViewMirrorHorizontalPosition"

    const-string v26, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u6c34\u5e73\u4f4d\u7f6e"

    const-string v29, "VehicleWindow/RearViewMirrorHorizontalPosition"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-wide/32 v1, 0x1000026

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorHorizontalPosition/Left"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u6c34\u5e73\u4f4d\u7f6e / \u5de6\u4fa7"

    const-string v5, "VehicleWindow/RearViewMirrorHorizontalPosition/Left"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v26, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v26

    const-wide/32 v0, 0x1000027

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    const-string v27, "VehicleWindow/RearViewMirrorHorizontalPosition/Right"

    const-string v28, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u6c34\u5e73\u4f4d\u7f6e / \u53f3\u4fa7"

    const-string v31, "VehicleWindow/RearViewMirrorHorizontalPosition/Right"

    invoke-direct/range {v26 .. v31}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v0

    const-wide/32 v1, 0x1000006

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorMemory"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u8bb0\u5fc6"

    const-string v5, "VehicleWindow/RearViewMirrorMemory"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v28, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v28

    const-wide/32 v0, 0x1000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    const-string v29, "VehicleWindow/RearViewMirrorMemoryRead"

    const-string v30, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rear View Mirror Memory Read"

    const-string v33, "VehicleWindow/RearViewMirrorMemoryRead"

    invoke-direct/range {v28 .. v33}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v0

    const-wide/32 v1, 0x1000005

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorVerticalPosition"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u5782\u76f4\u4f4d\u7f6e"

    const-string v5, "VehicleWindow/RearViewMirrorVerticalPosition"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v30, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v30

    const-wide/32 v0, 0x1000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    const-string v31, "VehicleWindow/RearViewMirrorVerticalPosition/Left"

    const-string v32, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u5782\u76f4\u4f4d\u7f6e / \u5de6\u4fa7"

    const-string v35, "VehicleWindow/RearViewMirrorVerticalPosition/Left"

    invoke-direct/range {v30 .. v35}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v0

    const-wide/32 v1, 0x1000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RearViewMirrorVerticalPosition/Right"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u540e\u89c6\u955c\u5782\u76f4\u4f4d\u7f6e / \u53f3\u4fa7"

    const-string v5, "VehicleWindow/RearViewMirrorVerticalPosition/Right"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v32, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v32

    const-wide/32 v0, 0x1000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    const-string v33, "VehicleWindow/RelateKeyOrFaceID"

    const-string v34, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Relate Key Or Face \u7f16\u53f7"

    const-string v37, "VehicleWindow/RelateKeyOrFaceID"

    invoke-direct/range {v32 .. v37}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v0

    const-wide/32 v1, 0xc00001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/RlsClose"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Rls Close"

    const-string v5, "VehicleWindow/RlsClose"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v34, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v34

    const-wide/32 v0, 0x1000021

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    const-string v35, "VehicleWindow/SeatAndRearMirrorEnableSave"

    const-string v36, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat And Rear Mirror Enable Save"

    const-string v39, "VehicleWindow/SeatAndRearMirrorEnableSave"

    invoke-direct/range {v34 .. v39}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v0

    const-wide/32 v1, 0x100001a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SeatAndRearMirrorPosition"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat And Rear Mirror Position"

    const-string v5, "VehicleWindow/SeatAndRearMirrorPosition"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v36, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v36

    const-wide/32 v0, 0x1000023

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    const-string v37, "VehicleWindow/SeatAndRearMirrorPositionStore"

    const-string v38, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat And Rear Mirror Position Store"

    const-string v41, "VehicleWindow/SeatAndRearMirrorPositionStore"

    invoke-direct/range {v36 .. v41}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v0

    const-wide/32 v1, 0x100001c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SeatForeBackAdjust"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat Fore Back Adjust"

    const-string v5, "VehicleWindow/SeatForeBackAdjust"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v38, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v38

    const-wide/32 v0, 0x1000020

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    const-string v39, "VehicleWindow/SeatPositionAndKey"

    const-string v40, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat Position And Key"

    const-string v43, "VehicleWindow/SeatPositionAndKey"

    invoke-direct/range {v38 .. v43}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v0

    const-wide/32 v1, 0x100001d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SeatRotationAngleAdjust"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat Rotation Angle Adjust"

    const-string v5, "VehicleWindow/SeatRotationAngleAdjust"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v40, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v40

    const-wide/32 v0, 0x100001b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    const-string v41, "VehicleWindow/SeatUpDownAdjust"

    const-string v42, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Seat Up Down Adjust"

    const-string v45, "VehicleWindow/SeatUpDownAdjust"

    invoke-direct/range {v40 .. v45}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v0

    const-wide/32 v1, 0xc00001a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SetLookup"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Set Lookup"

    const-string v5, "VehicleWindow/SetLookup"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v42, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v42

    const-wide/32 v0, 0xc000022

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    const-string v43, "VehicleWindow/SunRoofPosition"

    const-string v44, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Sun Roof Position"

    const-string v47, "VehicleWindow/SunRoofPosition"

    invoke-direct/range {v42 .. v47}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v0

    const-wide/32 v1, 0xc000002

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SunShade"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u906e\u9633\u5e18"

    const-string v5, "VehicleWindow/SunShade"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v44, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v44

    const-wide/32 v0, 0xc000028

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    const-string v45, "VehicleWindow/SunShade/Front"

    const-string v46, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u906e\u9633\u5e18 / \u524d\u6392"

    const-string v49, "VehicleWindow/SunShade/Front"

    invoke-direct/range {v44 .. v49}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v0

    const-wide/32 v1, 0xc000029

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/SunShade/Rear"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u906e\u9633\u5e18 / \u540e\u6392"

    const-string v5, "VehicleWindow/SunShade/Rear"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v46, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v46

    const-wide/32 v0, 0xc00002a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    const-string v47, "VehicleWindow/SunShade/Top"

    const-string v48, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u906e\u9633\u5e18 / \u9876\u90e8"

    const-string v51, "VehicleWindow/SunShade/Top"

    invoke-direct/range {v46 .. v51}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v0

    const-wide/32 v1, 0xc00001d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/TopWindow"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / Top Window"

    const-string v5, "VehicleWindow/TopWindow"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v48, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v48

    const-wide/32 v0, 0xc000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    const-string v49, "VehicleWindow/Window"

    const-string v50, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97"

    const-string v53, "VehicleWindow/Window"

    invoke-direct/range {v48 .. v53}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v0

    const-wide/32 v1, 0xc00001c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/Window/All"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u5168\u90e8"

    const-string v5, "VehicleWindow/Window/All"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v50, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v50

    const-wide/32 v0, 0xc000023

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    const-string v51, "VehicleWindow/Window/FrontLeft"

    const-string v52, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u524d\u5de6"

    const-string v55, "VehicleWindow/Window/FrontLeft"

    invoke-direct/range {v50 .. v55}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v0

    const-wide/32 v1, 0xc000024

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/Window/FrontRight"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u524d\u53f3"

    const-string v5, "VehicleWindow/Window/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v52, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v52

    const-wide/32 v0, 0xc000025

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    const-string v53, "VehicleWindow/Window/RearLeft"

    const-string v54, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u540e\u5de6"

    const-string v57, "VehicleWindow/Window/RearLeft"

    invoke-direct/range {v52 .. v57}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v0

    const-wide/32 v1, 0xc000026

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/Window/RearRight"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u540e\u53f3"

    const-string v5, "VehicleWindow/Window/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v54, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v54

    const-wide/32 v0, 0xc000027

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v57

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    const-string v55, "VehicleWindow/Window/Top"

    const-string v56, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97 / \u9876\u90e8"

    const-string v59, "VehicleWindow/Window/Top"

    invoke-direct/range {v54 .. v59}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v0

    const-wide/32 v1, 0xc000003

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WindowLock"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97\u9501"

    const-string v5, "VehicleWindow/WindowLock"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v56, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v56

    const-wide/32 v0, 0xc00002b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    const-string v57, "VehicleWindow/WindowLock/FrontLeft"

    const-string v58, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97\u9501 / \u524d\u5de6"

    const-string v61, "VehicleWindow/WindowLock/FrontLeft"

    invoke-direct/range {v56 .. v61}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v0

    const-wide/32 v1, 0xc00002c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WindowLock/FrontRight"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97\u9501 / \u524d\u53f3"

    const-string v5, "VehicleWindow/WindowLock/FrontRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v58, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v58

    const-wide/32 v0, 0xc00002d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    const-string v59, "VehicleWindow/WindowLock/RearLeft"

    const-string v60, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97\u9501 / \u540e\u5de6"

    const-string v63, "VehicleWindow/WindowLock/RearLeft"

    invoke-direct/range {v58 .. v63}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v0

    const-wide/32 v1, 0xc00002e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WindowLock/RearRight"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u8f66\u7a97\u9501 / \u540e\u53f3"

    const-string v5, "VehicleWindow/WindowLock/RearRight"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v60, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v60

    const-wide/32 v0, 0x9000013

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    const-string v61, "VehicleWindow/Wiper"

    const-string v62, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e"

    const-string v65, "VehicleWindow/Wiper"

    invoke-direct/range {v60 .. v65}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v0

    const-wide/32 v1, 0x9000081

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/Wiper/Front"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e / \u524d\u6392"

    const-string v5, "VehicleWindow/Wiper/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v62, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v62

    const-wide/32 v0, 0x9000082

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    const-string v63, "VehicleWindow/Wiper/Rear"

    const-string v64, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e / \u540e\u6392"

    const-string v67, "VehicleWindow/Wiper/Rear"

    invoke-direct/range {v62 .. v67}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v0

    const-wide/32 v1, 0x9000051

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WiperAcoust"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u63d0\u793a\u97f3"

    const-string v5, "VehicleWindow/WiperAcoust"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v64, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v64

    const-wide/32 v0, 0x9000087

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    const-string v65, "VehicleWindow/WiperAcoust/Front"

    const-string v66, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u63d0\u793a\u97f3 / \u524d\u6392"

    const-string v69, "VehicleWindow/WiperAcoust/Front"

    invoke-direct/range {v64 .. v69}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v0

    const-wide/32 v1, 0x9000088

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WiperAcoust/Rear"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u63d0\u793a\u97f3 / \u540e\u6392"

    const-string v5, "VehicleWindow/WiperAcoust/Rear"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v66, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v66

    const-wide/32 v0, 0x900001c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v70

    const-string v67, "VehicleWindow/WiperStatus"

    const-string v68, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u72b6\u6001"

    const-string v71, "VehicleWindow/WiperStatus"

    invoke-direct/range {v66 .. v71}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v0

    const-wide/32 v1, 0x9000083

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "VehicleWindow/WiperStatus/Front"

    const-string v2, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u72b6\u6001 / \u524d\u6392"

    const-string v5, "VehicleWindow/WiperStatus/Front"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v68, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v68

    const-wide/32 v0, 0x9000084

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v71

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    const-string v69, "VehicleWindow/WiperStatus/Rear"

    const-string v70, "\u8f66\u7a97\u4e0e\u540e\u89c6\u955c / \u96e8\u522e\u72b6\u6001 / \u540e\u6392"

    const-string v73, "VehicleWindow/WiperStatus/Rear"

    invoke-direct/range {v68 .. v73}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v67}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_Warning(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 30

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v6, v0

    const-wide/32 v1, 0xb000012

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Warning/DoorOpen"

    const-string v2, "\u8b66\u544a / \u8f66\u95e8\u5f00\u542f"

    const-string v5, "Warning/DoorOpen"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v7, v8

    const-wide/32 v0, 0xb000015

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "Warning/DriverFatigue"

    const-string v10, "\u8b66\u544a / \u9a7e\u9a76\u5458\u75b2\u52b3\u63d0\u9192"

    const-string v13, "Warning/DriverFatigue"

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v8, v0

    const-string v2, "\u8b66\u544a / \u673a\u6cb9\u62a5\u8b66"

    const/4 v3, 0x0

    const-string v1, "Warning/EngineOil"

    const/4 v4, 0x0

    const-string v5, "Warning/EngineOil"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v10

    const-wide/32 v0, 0xb000014

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v11, "Warning/FuelTankLow"

    const-string v12, "\u8b66\u544a / \u71c3\u6cb9\u4e0d\u8db3"

    const-string v15, "Warning/FuelTankLow"

    move-object v13, v14

    invoke-direct/range {v10 .. v15}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v0

    const-string v2, "\u8b66\u544a / \u52a8\u529b\u53d7\u9650"

    const-string v1, "Warning/LimitPower"

    const-string v5, "Warning/LimitPower"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v12

    const-wide/32 v0, 0xb000016

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const-string v13, "Warning/PoorAirQuality"

    const-string v14, "\u8b66\u544a / \u7a7a\u6c14\u8d28\u91cf\u5dee\u63d0\u9192"

    const-string v17, "Warning/PoorAirQuality"

    move-object/from16 v15, v16

    invoke-direct/range {v12 .. v17}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v0

    const-wide/32 v1, 0xb000013

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Warning/PowerBatteryLow"

    const-string v2, "\u8b66\u544a / \u52a8\u529b\u7535\u6c60\u7535\u91cf\u4f4e"

    const-string v5, "Warning/PowerBatteryLow"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v14

    const-wide/32 v0, 0xb00001a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v15, "Warning/PowerBatteryLowVoice"

    const-string v16, "\u8b66\u544a / \u52a8\u529b\u7535\u6c60\u7535\u91cf\u4f4e\u63d0\u793a\u97f3"

    const-string v19, "Warning/PowerBatteryLowVoice"

    move-object/from16 v17, v18

    invoke-direct/range {v14 .. v19}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v0

    const-wide/32 v1, 0xb00001e

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Warning/ScreenHighTemperature/1"

    const-string v2, "\u8b66\u544a / \u5c4f\u5e55\u9ad8\u6e29 / 1"

    const-string v5, "Warning/ScreenHighTemperature/1"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v16, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v15, v16

    const-wide/32 v0, 0xb00001f

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const-string v17, "Warning/ScreenHighTemperature/2"

    const-string v18, "\u8b66\u544a / \u5c4f\u5e55\u9ad8\u6e29 / 2"

    const-string v21, "Warning/ScreenHighTemperature/2"

    move-object/from16 v19, v20

    invoke-direct/range {v16 .. v21}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v0

    const-wide/32 v1, 0xb000020

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Warning/ScreenHighTemperature/3"

    const-string v2, "\u8b66\u544a / \u5c4f\u5e55\u9ad8\u6e29 / 3"

    const-string v5, "Warning/ScreenHighTemperature/3"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v18, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v18

    const-wide/32 v0, 0xb000021

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const-string v19, "Warning/ScreenHighTemperature/4"

    const-string v20, "\u8b66\u544a / \u5c4f\u5e55\u9ad8\u6e29 / 4"

    const-string v23, "Warning/ScreenHighTemperature/4"

    move-object/from16 v21, v22

    invoke-direct/range {v18 .. v23}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v0

    const-wide/32 v1, 0xb00001b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "Warning/SeriouslyCrash"

    const-string v2, "\u8b66\u544a / \u4e25\u91cd\u78b0\u649e"

    const-string v5, "Warning/SeriouslyCrash"

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v20, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v20

    const-string v22, "\u8b66\u544a / \u80ce\u538b\u76d1\u6d4b"

    const/16 v23, 0x0

    const-string v21, "Warning/TPMS"

    const/16 v24, 0x0

    const-string v25, "Warning/TPMS"

    invoke-direct/range {v20 .. v25}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v0

    const-string v2, "\u8b66\u544a / \u80ce\u538b\u76d1\u6d4b / \u524d\u5de6"

    const/4 v3, 0x0

    const-string v1, "Warning/TPMS/FrontLeft"

    const/4 v4, 0x0

    const-string v5, "Warning/TPMS/FrontLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v22, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v22

    const-string v24, "\u8b66\u544a / \u80ce\u538b\u76d1\u6d4b / \u524d\u53f3"

    const/16 v25, 0x0

    const-string v23, "Warning/TPMS/FrontRight"

    const/16 v26, 0x0

    const-string v27, "Warning/TPMS/FrontRight"

    invoke-direct/range {v22 .. v27}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v0

    const-string v2, "\u8b66\u544a / \u80ce\u538b\u76d1\u6d4b / \u540e\u5de6"

    const-string v1, "Warning/TPMS/RearLeft"

    const-string v5, "Warning/TPMS/RearLeft"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v24, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v24

    const-string v26, "\u8b66\u544a / \u80ce\u538b\u76d1\u6d4b / \u540e\u53f3"

    const/16 v27, 0x0

    const-string v25, "Warning/TPMS/RearRight"

    const/16 v28, 0x0

    const-string v29, "Warning/TPMS/RearRight"

    invoke-direct/range {v24 .. v29}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v0

    const-string v2, "\u8b66\u544a / \u6c34\u6e29\u9ad8"

    const-string v1, "Warning/WaterTemperatureHigh"

    const-string v5, "Warning/WaterTemperatureHigh"

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v6 .. v24}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final access$fields_controlRadio(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2b000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "controlRadio/req"

    const-string v2, "control Radio / req"

    const-string v5, "controlRadio/req"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_custom_input_event_1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x6e000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "custom_input_event_1"

    const-string v2, "custom input event 1"

    const-string v5, "custom_input_event_1"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_custom_input_event_2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x6e000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "custom_input_event_2"

    const-string v2, "custom input event 2"

    const-string v5, "custom_input_event_2"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_custom_input_event_long_1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x6e000003

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "custom_input_event_long_1"

    const-string v2, "custom input event long 1"

    const-string v5, "custom_input_event_long_1"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_custom_input_event_long_2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x6e000004

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "custom_input_event_long_2"

    const-string v2, "custom input event long 2"

    const-string v5, "custom_input_event_long_2"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_icdriving(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb000023

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "icdriving/ResetIvi"

    const-string v2, "\u4eea\u8868\u9a7e\u9a76 / Reset Ivi"

    const-string v5, "icdriving/ResetIvi"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x900003f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "icdriving/UsageMode"

    const-string v8, "\u4eea\u8868\u9a7e\u9a76 / Usage Mode"

    const-string v11, "icdriving/UsageMode"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_icinput(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x32000005

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "icinput/event"

    const-string v2, "icinput / event"

    const-string v5, "icinput/event"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_ictelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0xb00001c

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "ictelltale/VehicleFaultInfo"

    const-string v2, "ictelltale / Vehicle Fault Info"

    const-string v5, "ictelltale/VehicleFaultInfo"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_misc_service(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x11000010

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "misc_service/command/qnx_tcpdump_request/Set"

    const-string v2, "\u7cfb\u7edf\u670d\u52a1 / \u547d\u4ee4 / QNX tcpdump request / Set"

    const-string v5, "misc_service/command/qnx_tcpdump_request/Set"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x11000011

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "misc_service/command/qnx_tcpdump_response"

    const-string v8, "\u7cfb\u7edf\u670d\u52a1 / \u547d\u4ee4 / QNX tcpdump response"

    const-string v11, "misc_service/command/qnx_tcpdump_response"

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v1, 0x11000008

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "misc_service/command/rawdump_request/Set"

    const-string v3, "\u7cfb\u7edf\u670d\u52a1 / \u547d\u4ee4 / rawdump request / Set"

    const-string v6, "misc_service/command/rawdump_request/Set"

    move-object v1, v7

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v2, 0x11000009

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v9, "misc_service/command/rawdump_response"

    const-string v10, "\u7cfb\u7edf\u670d\u52a1 / \u547d\u4ee4 / rawdump response"

    const-string v13, "misc_service/command/rawdump_response"

    move-object v8, v1

    move-object v11, v12

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {p0, v0, v7, v1}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_music(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x21000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "music"

    const-string v2, "music"

    const-string v5, "music"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_music_req(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x21000002

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "music_req"

    const-string v2, "music req"

    const-string v5, "music_req"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_time_12_24(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x35000001

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "time_12_24"

    const-string v2, "time 12 24"

    const-string v5, "time_12_24"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_uartrpc_svc(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2d00000b

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "uartrpc_svc/pm/resp"

    const-string v2, "uartrpc svc / pm / resp"

    const-string v5, "uartrpc_svc/pm/resp"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_update(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v0, 0x2300000d

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v1, "update/mode"

    const-string v2, "update / \u6a21\u5f0f"

    const-string v5, "update/mode"

    move-object v0, p0

    move-object v3, v4

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final access$fields_vehctrlSts(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-string v2, "\u6574\u8f66\u63a7\u5236\u72b6\u6001 / \u591a\u8f66\u95e8\u5f00\u542f\u72b6\u6001"

    const/4 v3, 0x0

    const-string v1, "vehctrlSts/MultiDoorOpenSts"

    const/4 v4, 0x0

    const-string v5, "vehctrlSts/MultiDoorOpenSts"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
