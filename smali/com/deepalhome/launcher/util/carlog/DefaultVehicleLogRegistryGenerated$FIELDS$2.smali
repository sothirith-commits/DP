.class public final Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;

    invoke-direct {v0}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated$FIELDS$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 111

    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    sget-object v1, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->INSTANCE:Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_AC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x10000002

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "Account/AccountFaceId"

    const-string v5, "\u8d26\u53f7 / Account Face \u7f16\u53f7"

    const-string v8, "Account/AccountFaceId"

    move-object v3, v2

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v5, 0x10000003

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v10, "Account/AccountFaceManager"

    const-string v11, "\u8d26\u53f7 / Account Face Manager"

    const-string v14, "Account/AccountFaceManager"

    move-object v9, v4

    move-object v12, v13

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v6, 0x10000004

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "Account/AccountFaceManagerId"

    const-string v17, "\u8d26\u53f7 / Account Face Manager \u7f16\u53f7"

    const-string v20, "Account/AccountFaceManagerId"

    move-object v15, v5

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v12, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v6, 0x10000001

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "Account/AccountId"

    const-string v8, "\u8d26\u53f7 / Account \u7f16\u53f7"

    const-string v11, "Account/AccountId"

    move-object v6, v12

    move-object v9, v10

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v8, 0x10000008

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Account/BluetoothUserId"

    const-string v15, "\u8d26\u53f7 / Bluetooth User \u7f16\u53f7"

    const-string v18, "Account/BluetoothUserId"

    move-object v13, v7

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v8, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v9, 0x10000005

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v20, "Account/FaceAuthen"

    const-string v21, "\u8d26\u53f7 / Face Authen"

    const-string v24, "Account/FaceAuthen"

    move-object/from16 v19, v8

    move-object/from16 v22, v23

    invoke-direct/range {v19 .. v24}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v9, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v10, 0x10000007

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Account/FaceAuthenNotice"

    const-string v15, "\u8d26\u53f7 / Face Authen Notice"

    const-string v18, "Account/FaceAuthenNotice"

    move-object v13, v9

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v13, 0x10000006

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v20, "Account/FaceDataId"

    const-string v21, "\u8d26\u53f7 / Face Data \u7f16\u53f7"

    const-string v24, "Account/FaceDataId"

    move-object/from16 v19, v10

    move-object/from16 v22, v23

    invoke-direct/range {v19 .. v24}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v13, 0x9000010

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "Account/ResetFactory"

    const-string v15, "\u8d26\u53f7 / Reset Factory"

    const-string v18, "Account/ResetFactory"

    move-object v13, v11

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v3 .. v11}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v9, v3

    const-wide/32 v4, 0xd000019

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "ADAS/ACCEnable"

    const-string v5, "\u8f85\u52a9\u9a7e\u9a76 / ACC \u4f7f\u80fd"

    const-string v8, "ADAS/ACCEnable"

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v11, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v10, v11

    const-wide/32 v2, 0xd00004a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v12, "ADAS/ACCMode"

    const-string v13, "\u8f85\u52a9\u9a7e\u9a76 / ACC \u6a21\u5f0f"

    const-string v16, "ADAS/ACCMode"

    move-object v14, v15

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v11, v2

    const-wide/32 v3, 0xd00007b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/ACCTimeGap"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ACC \u65f6\u8ddd"

    const-string v7, "ADAS/ACCTimeGap"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v13, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v12, v13

    const-wide/32 v2, 0xd000052

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v14, "ADAS/ACCVehicleStartRemindSts"

    const-string v15, "\u8f85\u52a9\u9a7e\u9a76 / ACC \u8d77\u6b65\u63d0\u9192\u72b6\u6001"

    const-string v18, "ADAS/ACCVehicleStartRemindSts"

    move-object/from16 v16, v17

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v13, v2

    const-wide/32 v3, 0xd000061

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasAccDispSts"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS ACC Disp Sts"

    const-string v7, "ADAS/AdasAccDispSts"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v15, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v14, v15

    const-wide/32 v2, 0xd000069

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v16, "ADAS/AdasAccTargetSpeed"

    const-string v17, "\u8f85\u52a9\u9a7e\u9a76 / ADAS ACC Target Speed"

    const-string v20, "ADAS/AdasAccTargetSpeed"

    move-object/from16 v18, v19

    invoke-direct/range {v15 .. v20}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object v15, v2

    const-wide/32 v3, 0xd00006c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasAllowSpeedPercent"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Allow Speed Percent"

    const-string v7, "ADAS/AdasAllowSpeedPercent"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v17, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v16, v17

    const-wide/32 v2, 0xd000068

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const-string v18, "ADAS/AdasElkDispSts"

    const-string v19, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Elk Disp Sts"

    const-string v22, "ADAS/AdasElkDispSts"

    move-object/from16 v20, v21

    invoke-direct/range {v17 .. v22}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v17, v2

    const-wide/32 v3, 0xd00001e

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasEmergencySterringAssistConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Emergency Sterring Assist Config"

    const-string v7, "ADAS/AdasEmergencySterringAssistConfig"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v19, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v18, v19

    const-wide/32 v2, 0xd000060

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const-string v20, "ADAS/AdasFcwReq"

    const-string v21, "\u8f85\u52a9\u9a7e\u9a76 / ADAS FCW Req"

    const-string v24, "ADAS/AdasFcwReq"

    move-object/from16 v22, v23

    invoke-direct/range {v19 .. v24}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v19, v2

    const-wide/32 v3, 0xd00001c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasForwardCrossingTrafficAlertingConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Forward Crossing Traffic Alerting Config"

    const-string v7, "ADAS/AdasForwardCrossingTrafficAlertingConfig"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v21, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v20, v21

    const-wide/32 v2, 0xd00001d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const-string v22, "ADAS/AdasFrontVehicleStartReminderConfid"

    const-string v23, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Front Vehicle Start Reminder Confid"

    const-string v26, "ADAS/AdasFrontVehicleStartReminderConfid"

    move-object/from16 v24, v25

    invoke-direct/range {v21 .. v26}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v21, v2

    const-wide/32 v3, 0xd00005a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasFvsrWarn"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Fvsr Warn"

    const-string v7, "ADAS/AdasFvsrWarn"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v23, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v22, v23

    const-wide/32 v2, 0xd000064

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    const-string v24, "ADAS/AdasIcaDispSts"

    const-string v25, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Ica Disp Sts"

    const-string v28, "ADAS/AdasIcaDispSts"

    move-object/from16 v26, v27

    invoke-direct/range {v23 .. v28}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v23, v2

    const-wide/32 v3, 0xd00002a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasIsaConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Isa Config"

    const-string v7, "ADAS/AdasIsaConfig"

    move-object v5, v6

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v25, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v24, v25

    const-wide/32 v2, 0xd00002c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const-string v26, "ADAS/AdasIsaConfirmConfig"

    const-string v27, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Isa Confirm Config"

    const-string v30, "ADAS/AdasIsaConfirmConfig"

    invoke-direct/range {v25 .. v30}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v25, v2

    const-wide/32 v3, 0xd00002b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasIsLcConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Is Lc Config"

    const-string v7, "ADAS/AdasIsLcConfig"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v27, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v26, v27

    const-wide/32 v2, 0xd00005b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    const-string v28, "ADAS/AdasLaneLineColorLeft"

    const-string v29, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lane Line Color Left"

    const-string v32, "ADAS/AdasLaneLineColorLeft"

    invoke-direct/range {v27 .. v32}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v27, v2

    const-wide/32 v3, 0xd00005c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasLaneLineColorRight"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lane Line Color Right"

    const-string v7, "ADAS/AdasLaneLineColorRight"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v29, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v28, v29

    const-wide/32 v2, 0xd000057

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    const-string v30, "ADAS/AdasLccHandsOffWarning"

    const-string v31, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lcc Hands Off Warning"

    const-string v34, "ADAS/AdasLccHandsOffWarning"

    invoke-direct/range {v29 .. v34}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v29, v2

    const-wide/32 v3, 0xd000056

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasLcDispSts"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lc Disp Sts"

    const-string v7, "ADAS/AdasLcDispSts"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v31, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v30, v31

    const-wide/32 v2, 0xd000058

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    const-string v32, "ADAS/AdasLciNfor"

    const-string v33, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lci Nfor"

    const-string v36, "ADAS/AdasLciNfor"

    invoke-direct/range {v31 .. v36}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v31, v2

    const-wide/32 v3, 0xd000059

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasLcObstacle"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lc Obstacle"

    const-string v7, "ADAS/AdasLcObstacle"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v33, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v32, v33

    const-wide/32 v2, 0xd000067

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    const-string v34, "ADAS/AdasLkahAndOffWarn"

    const-string v35, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Lkah And Off Warn"

    const-string v38, "ADAS/AdasLkahAndOffWarn"

    invoke-direct/range {v33 .. v38}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v33, v2

    const-wide/32 v3, 0xd00006f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasMonSensitivitySw"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Mon Sensitivity Sw"

    const-string v7, "ADAS/AdasMonSensitivitySw"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v35, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v34, v35

    const-wide/32 v2, 0xd00006e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    const-string v36, "ADAS/AdasMonSw"

    const-string v37, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Mon Sw"

    const-string v40, "ADAS/AdasMonSw"

    invoke-direct/range {v35 .. v40}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v35, v2

    const-wide/32 v3, 0xd000022

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasNavigationOnDrivingAssistConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Navigation On Driving Assist Config"

    const-string v7, "ADAS/AdasNavigationOnDrivingAssistConfig"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v37, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v36, v37

    const-wide/32 v2, 0xd000024

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    const-string v38, "ADAS/AdasNoaAlcConfirmConfig"

    const-string v39, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Noa Alc Confirm Config"

    const-string v42, "ADAS/AdasNoaAlcConfirmConfig"

    invoke-direct/range {v37 .. v42}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v37, v2

    const-wide/32 v3, 0xd000065

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasNoaDispSts"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Noa Disp Sts"

    const-string v7, "ADAS/AdasNoaDispSts"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v39, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v38, v39

    const-wide/32 v2, 0xd000023

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v43

    const-string v40, "ADAS/AdasNoaLowSpdAlcConfig"

    const-string v41, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Noa Low Spd Alc Config"

    const-string v44, "ADAS/AdasNoaLowSpdAlcConfig"

    invoke-direct/range {v39 .. v44}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v39, v2

    const-wide/32 v3, 0xd000025

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasNoaOverTakingBackAlcConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Noa Over Taking Back Alc Config"

    const-string v7, "ADAS/AdasNoaOverTakingBackAlcConfig"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v41, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v40, v41

    const-wide/32 v2, 0xd000066

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    const-string v42, "ADAS/AdasNoaWarningReq"

    const-string v43, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Noa Warning Req"

    const-string v46, "ADAS/AdasNoaWarningReq"

    invoke-direct/range {v41 .. v46}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v41, v2

    const-wide/32 v3, 0xd000063

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasOverspdAlert"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Overspd Alert"

    const-string v7, "ADAS/AdasOverspdAlert"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v43, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v42, v43

    const-wide/32 v2, 0xd00005f

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    const-string v44, "ADAS/AdasPebStarObj"

    const-string v45, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Peb Star Obj"

    const-string v48, "ADAS/AdasPebStarObj"

    invoke-direct/range {v43 .. v48}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v43, v2

    const-wide/32 v3, 0xd000062

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AdasSpdDisplayValue"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Spd Display Value"

    const-string v7, "ADAS/AdasSpdDisplayValue"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v45, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v44, v45

    const-wide/32 v2, 0xd000026

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v49

    const-string v46, "ADAS/AdasTrafficLaneChangingConfig"

    const-string v47, "\u8f85\u52a9\u9a7e\u9a76 / ADAS Traffic Lane Changing Config"

    const-string v50, "ADAS/AdasTrafficLaneChangingConfig"

    invoke-direct/range {v45 .. v50}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v45, v2

    const-wide/32 v3, 0xd00004f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/ADSVoiceRequest"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / ADSVoice Request"

    const-string v7, "ADAS/ADSVoiceRequest"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v47, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v46, v47

    const-string v48, "ADAS/ADSVoiceRequestPC"

    const-string v52, "ADAS/ADSVoiceRequestPC"

    const/16 v51, 0x0

    const/16 v50, 0x0

    const-string v49, "\u8f85\u52a9\u9a7e\u9a76 / \u667a\u9a7e\u8bed\u97f3\u8bf7\u6c42"

    invoke-direct/range {v47 .. v52}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v47, v2

    const-wide/32 v3, 0xd000053

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AebDecActive"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / AEB Dec Active"

    const-string v7, "ADAS/AebDecActive"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v49, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v48, v49

    const-wide/32 v2, 0xd000006

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v52

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    const-string v50, "ADAS/AEBSwitch"

    const-string v51, "\u8f85\u52a9\u9a7e\u9a76 / AEB \u5f00\u5173"

    const-string v54, "ADAS/AEBSwitch"

    invoke-direct/range {v49 .. v54}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v49, v2

    const-string v3, "ADAS/AEBSystem"

    const-string v7, "ADAS/AEBSystem"

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / AEB \u7cfb\u7edf"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v51, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v50, v51

    const-wide/32 v2, 0xd000075

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v54

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    const-string v52, "ADAS/AssidDrvgStyle"

    const-string v53, "\u8f85\u52a9\u9a7e\u9a76 / Assid Drvg Style"

    const-string v56, "ADAS/AssidDrvgStyle"

    invoke-direct/range {v51 .. v56}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v51, v2

    const-wide/32 v3, 0xd000012

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/AutoAdjustCruiseSpeed"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u81ea\u52a8\u8c03\u8282\u5de1\u822a\u901f\u5ea6"

    const-string v7, "ADAS/AutoAdjustCruiseSpeed"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v53, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v52, v53

    const-string v54, "ADAS/Beep3DVector"

    const-string v58, "ADAS/Beep3DVector"

    const/16 v57, 0x0

    const/16 v56, 0x0

    const-string v55, "\u8f85\u52a9\u9a7e\u9a76 / 3D \u63d0\u793a\u97f3\u65b9\u5411"

    invoke-direct/range {v53 .. v58}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v53, v2

    const-wide/32 v3, 0xd000007

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/BsdConfig"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / BSD Config"

    const-string v7, "ADAS/BsdConfig"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v55, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v54, v55

    const-wide/32 v2, 0xd00007c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v58

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v59

    const-string v56, "ADAS/DistanceWarning"

    const-string v57, "\u8f85\u52a9\u9a7e\u9a76 / Distance Warning"

    const-string v60, "ADAS/DistanceWarning"

    invoke-direct/range {v55 .. v60}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v55, v2

    const-wide/32 v3, 0xd00001b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/DoorOpenWarning"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u5f00\u95e8\u9884\u8b66"

    const-string v7, "ADAS/DoorOpenWarning"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v57, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v56, v57

    const-wide/32 v2, 0xd000030

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v60

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    const-string v58, "ADAS/DoorOpenWarningVoice"

    const-string v59, "\u8f85\u52a9\u9a7e\u9a76 / \u5f00\u95e8\u9884\u8b66\u63d0\u793a\u97f3"

    const-string v62, "ADAS/DoorOpenWarningVoice"

    invoke-direct/range {v57 .. v62}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v57, v2

    const-wide/32 v3, 0xd000027

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/EmergencyLaneKeeping"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u7d27\u6025\u8f66\u9053\u4fdd\u6301"

    const-string v7, "ADAS/EmergencyLaneKeeping"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v59, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v58, v59

    const-wide/32 v2, 0xd00000c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v62

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v63

    const-string v60, "ADAS/FCWDistance"

    const-string v61, "\u8f85\u52a9\u9a7e\u9a76 / \u524d\u78b0\u9884\u8b66\u8ddd\u79bb"

    const-string v64, "ADAS/FCWDistance"

    invoke-direct/range {v59 .. v64}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v59, v2

    const-wide/32 v3, 0xd00003e

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/FCWSensitivity"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / FCWSensitivity"

    const-string v7, "ADAS/FCWSensitivity"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v61, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v60, v61

    const-wide/32 v2, 0xd000005

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v64

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v65

    const-string v62, "ADAS/ForwardCollisionWarning"

    const-string v63, "\u8f85\u52a9\u9a7e\u9a76 / Forward Collision Warning"

    const-string v66, "ADAS/ForwardCollisionWarning"

    invoke-direct/range {v61 .. v66}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v61, v2

    const-wide/32 v3, 0xd000039

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/FrontTransverseBrake"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Front Transverse Brake"

    const-string v7, "ADAS/FrontTransverseBrake"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v63, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v62, v63

    const-wide/32 v2, 0xd00003a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v66

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v67

    const-string v64, "ADAS/FrontTransverseBrakeWarning"

    const-string v65, "\u8f85\u52a9\u9a7e\u9a76 / Front Transverse Brake Warning"

    const-string v68, "ADAS/FrontTransverseBrakeWarning"

    invoke-direct/range {v63 .. v68}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v63, v2

    const-wide/32 v3, 0xd00000b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/IACCEnable"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / IACC \u4f7f\u80fd"

    const-string v7, "ADAS/IACCEnable"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v65, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v64, v65

    const-wide/32 v2, 0xd00004c

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v69

    const-string v66, "ADAS/IACCHWAMode"

    const-string v67, "\u8f85\u52a9\u9a7e\u9a76 / IACC/HWA \u6a21\u5f0f"

    const-string v70, "ADAS/IACCHWAMode"

    invoke-direct/range {v65 .. v70}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v65, v2

    const-wide/32 v3, 0xd00004b

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/IACCMode"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / IACCMode"

    const-string v7, "ADAS/IACCMode"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v67, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v66, v67

    const-string v68, "ADAS/IACCSystem"

    const-string v72, "ADAS/IACCSystem"

    const/16 v71, 0x0

    const/16 v70, 0x0

    const-string v69, "\u8f85\u52a9\u9a7e\u9a76 / IACC \u7cfb\u7edf"

    invoke-direct/range {v67 .. v72}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v67, v2

    const-wide/32 v3, 0xd000076

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/IsaIdentifyLowerSpeed"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Isa Identify Lower Speed"

    const-string v7, "ADAS/IsaIdentifyLowerSpeed"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v69, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v68, v69

    const-wide/32 v2, 0xd00000a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v72

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v73

    const-string v70, "ADAS/LaneAssistSystem"

    const-string v71, "\u8f85\u52a9\u9a7e\u9a76 / \u8f66\u9053\u8f85\u52a9\u7cfb\u7edf"

    const-string v74, "ADAS/LaneAssistSystem"

    invoke-direct/range {v69 .. v74}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v69, v2

    const-wide/32 v3, 0xd00001a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/LaneChangeAssistMode"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u53d8\u9053\u8f85\u52a9\u6a21\u5f0f"

    const-string v7, "ADAS/LaneChangeAssistMode"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v71, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v70, v71

    const-wide/32 v2, 0xd00004e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v74

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v75

    const-string v72, "ADAS/LaneChangeReq"

    const-string v73, "\u8f85\u52a9\u9a7e\u9a76 / Lane Change Req"

    const-string v76, "ADAS/LaneChangeReq"

    invoke-direct/range {v71 .. v76}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v71, v2

    const-wide/32 v3, 0xd00001f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/LaneDepartueWarning"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u8f66\u9053\u504f\u79bb\u9884\u8b66"

    const-string v7, "ADAS/LaneDepartueWarning"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v73, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v72, v73

    const-wide/32 v2, 0xd000040

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v76

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v77

    const-string v74, "ADAS/LCASensitivity"

    const-string v75, "\u8f85\u52a9\u9a7e\u9a76 / LCASensitivity"

    const-string v78, "ADAS/LCASensitivity"

    invoke-direct/range {v73 .. v78}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v73, v2

    const-wide/32 v3, 0xd00003f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/LDWFuncWarnModSet"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / LDWFunc Warn Mod Set"

    const-string v7, "ADAS/LDWFuncWarnModSet"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v75, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v74, v75

    const-string v76, "ADAS/LdwLkaLamp"

    const-string v80, "ADAS/LdwLkaLamp"

    const/16 v79, 0x0

    const/16 v78, 0x0

    const-string v77, "\u8f85\u52a9\u9a7e\u9a76 / \u8f66\u9053\u504f\u79bb/\u8f66\u9053\u4fdd\u6301\u6307\u793a\u706f"

    invoke-direct/range {v75 .. v80}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v75, v2

    const-wide/32 v3, 0xd000077

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/LimitDriveInteract"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Limit Drive Interact"

    const-string v7, "ADAS/LimitDriveInteract"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v77, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v76, v77

    const-wide/32 v2, 0xd00003b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v80

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v81

    const-string v78, "ADAS/LowSpeedAEBEnable"

    const-string v79, "\u8f85\u52a9\u9a7e\u9a76 / Low Speed AEBEnable"

    const-string v82, "ADAS/LowSpeedAEBEnable"

    invoke-direct/range {v77 .. v82}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v77, v2

    const-wide/32 v3, 0xd00003c

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/LowSpeedAEBNotice"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Low Speed AEBNotice"

    const-string v7, "ADAS/LowSpeedAEBNotice"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v79, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v78, v79

    const-wide/32 v2, 0xd000079

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v82

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v83

    const-string v80, "ADAS/MFSIntegratedCruiseAssist/Action"

    const-string v81, "\u8f85\u52a9\u9a7e\u9a76 / MFSIntegrated Cruise Assist / Action"

    const-string v84, "ADAS/MFSIntegratedCruiseAssist/Action"

    invoke-direct/range {v79 .. v84}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v79, v2

    const-wide/32 v3, 0xd00006a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/NavCurrentRoadType"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Nav Current Road Type"

    const-string v7, "ADAS/NavCurrentRoadType"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v81, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v80, v81

    const-wide/32 v2, 0xd000033

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v84

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    const-string v82, "ADAS/NavDrvAudioWarEnable"

    const-string v83, "\u8f85\u52a9\u9a7e\u9a76 / \u5bfc\u822a\u9a7e\u9a76\u97f3\u8b66\u5f00\u5173"

    const-string v86, "ADAS/NavDrvAudioWarEnable"

    invoke-direct/range {v81 .. v86}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v81, v2

    const-wide/32 v3, 0xd000034

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/NavDrvDangerWarEnable"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv Danger War Enable"

    const-string v7, "ADAS/NavDrvDangerWarEnable"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v83, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v82, v83

    const-wide/32 v2, 0xd000037

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v86

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v87

    const-string v84, "ADAS/NavDrvHighWayAssistEnable"

    const-string v85, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv High Way Assist Enable"

    const-string v88, "ADAS/NavDrvHighWayAssistEnable"

    invoke-direct/range {v83 .. v88}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v83, v2

    const-wide/32 v3, 0xd000036

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/NavDrvInfoBroadcastEnable"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv Info Broadcast Enable"

    const-string v7, "ADAS/NavDrvInfoBroadcastEnable"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v85, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v84, v85

    const-wide/32 v2, 0xd000032

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v88

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v89

    const-string v86, "ADAS/NavDrvLaneChangeEnable"

    const-string v87, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv Lane Change Enable"

    const-string v90, "ADAS/NavDrvLaneChangeEnable"

    invoke-direct/range {v85 .. v90}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v85, v2

    const-wide/32 v3, 0xd000035

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/NavDrvSafeWarEnable"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv Safe War Enable"

    const-string v7, "ADAS/NavDrvSafeWarEnable"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v87, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v86, v87

    const-wide/32 v2, 0xd000031

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v90

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v91

    const-string v88, "ADAS/NavDrvSwitch"

    const-string v89, "\u8f85\u52a9\u9a7e\u9a76 / Nav Drv Switch"

    const-string v92, "ADAS/NavDrvSwitch"

    invoke-direct/range {v87 .. v92}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v87, v2

    const-wide/32 v3, 0xd00002d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/OverSpeedDeviation"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u8d85\u901f\u504f\u5dee"

    const-string v7, "ADAS/OverSpeedDeviation"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v89, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v88, v89

    const-wide/32 v2, 0xd000003

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v92

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v93

    const-string v90, "ADAS/OverSpeedSoundWarning"

    const-string v91, "\u8f85\u52a9\u9a7e\u9a76 / \u8d85\u901f\u58f0\u97f3\u63d0\u9192"

    const-string v94, "ADAS/OverSpeedSoundWarning"

    invoke-direct/range {v89 .. v94}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v89, v2

    const-wide/32 v3, 0xd000071

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/OverSpeedWarning"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Over Speed Warning"

    const-string v7, "ADAS/OverSpeedWarning"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v91, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v90, v91

    const-wide/32 v2, 0xd000072

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v94

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v95

    const-string v92, "ADAS/OverSpeedWarningThreshold"

    const-string v93, "\u8f85\u52a9\u9a7e\u9a76 / Over Speed Warning Threshold"

    const-string v96, "ADAS/OverSpeedWarningThreshold"

    invoke-direct/range {v91 .. v96}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v91, v2

    const-wide/32 v3, 0xd000074

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/OverSpeedWarningThresholdOut"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Over Speed Warning Threshold Out"

    const-string v7, "ADAS/OverSpeedWarningThresholdOut"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v93, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v92, v93

    const-wide/32 v2, 0xd000028

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v96

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v97

    const-string v94, "ADAS/RearCollisionWarning"

    const-string v95, "\u8f85\u52a9\u9a7e\u9a76 / \u540e\u78b0\u649e\u9884\u8b66"

    const-string v98, "ADAS/RearCollisionWarning"

    invoke-direct/range {v93 .. v98}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v93, v2

    const-wide/32 v3, 0xd00003d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/RearTransverseBrake"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u540e\u5411\u6a2a\u7a7f\u5236\u52a8"

    const-string v7, "ADAS/RearTransverseBrake"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v95, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v94, v95

    const-wide/32 v2, 0xd000008

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v98

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v99

    const-string v96, "ADAS/RearTransverseBrakeWarning"

    const-string v97, "\u8f85\u52a9\u9a7e\u9a76 / \u540e\u5411\u6a2a\u7a7f\u5236\u52a8\u9884\u8b66"

    const-string v100, "ADAS/RearTransverseBrakeWarning"

    invoke-direct/range {v95 .. v100}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v95, v2

    const-wide/32 v3, 0xd000051

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/SEAAlert"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u5f00\u95e8\u9884\u8b66"

    const-string v7, "ADAS/SEAAlert"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v97, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v96, v97

    const-wide/32 v2, 0xd00007d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v100

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v101

    const-string v98, "ADAS/SEAAlert/Left"

    const-string v99, "\u8f85\u52a9\u9a7e\u9a76 / \u5f00\u95e8\u9884\u8b66 / \u5de6\u4fa7"

    const-string v102, "ADAS/SEAAlert/Left"

    invoke-direct/range {v97 .. v102}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v97, v2

    const-wide/32 v3, 0xd00007e

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/SEAAlert/Right"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u5f00\u95e8\u9884\u8b66 / \u53f3\u4fa7"

    const-string v7, "ADAS/SEAAlert/Right"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v99, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v98, v99

    const-wide/32 v2, 0xd000073

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v102

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v103

    const-string v100, "ADAS/SpeedLimitAssistant"

    const-string v101, "\u8f85\u52a9\u9a7e\u9a76 / Speed Limit Assistant"

    const-string v104, "ADAS/SpeedLimitAssistant"

    invoke-direct/range {v99 .. v104}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v99, v2

    const-wide/32 v3, 0xd000050

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/TakeoverReqAtIPFail"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Takeover Req At IPFail"

    const-string v7, "ADAS/TakeoverReqAtIPFail"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v101, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v100, v101

    const-wide/32 v2, 0xd000078

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v104

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v105

    const-string v102, "ADAS/TJAIntegratedCruiseAssist/Mode"

    const-string v103, "\u8f85\u52a9\u9a7e\u9a76 / \u96c6\u6210\u5de1\u822a\u8f85\u52a9 / \u6a21\u5f0f"

    const-string v106, "ADAS/TJAIntegratedCruiseAssist/Mode"

    invoke-direct/range {v101 .. v106}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v101, v2

    const-wide/32 v3, 0xd00007a

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/TJAIntegratedCruiseAssist/Switch"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u96c6\u6210\u5de1\u822a\u8f85\u52a9 / \u5f00\u5173"

    const-string v7, "ADAS/TJAIntegratedCruiseAssist/Switch"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v103, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v102, v103

    const-wide/32 v2, 0xd000038

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v106

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v107

    const-string v104, "ADAS/TrafficJamAssistEnable"

    const-string v105, "\u8f85\u52a9\u9a7e\u9a76 / Traffic Jam Assist Enable"

    const-string v108, "ADAS/TrafficJamAssistEnable"

    invoke-direct/range {v103 .. v108}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v103, v2

    const-wide/32 v3, 0xd00002f

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/TrafficLightAssist"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / \u7ea2\u7eff\u706f\u8f85\u52a9"

    const-string v7, "ADAS/TrafficLightAssist"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v105, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v104, v105

    const-wide/32 v2, 0xd000002

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v108

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v109

    const-string v106, "ADAS/TSRSwitch"

    const-string v107, "\u8f85\u52a9\u9a7e\u9a76 / \u4ea4\u901a\u6807\u5fd7\u8bc6\u522b\u5f00\u5173"

    const-string v110, "ADAS/TSRSwitch"

    invoke-direct/range {v105 .. v110}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-object/from16 v105, v2

    const-wide/32 v3, 0xd00004d

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v3, "ADAS/VoiceCruiseSpeedSet"

    const-string v4, "\u8f85\u52a9\u9a7e\u9a76 / Voice Cruise Speed Set"

    const-string v7, "ADAS/VoiceCruiseSpeedSet"

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array/range {v9 .. v105}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const/4 v7, 0x0

    const-string v8, "ADC_244/ACC_AWBActive"

    const-string v4, "ADC_244/ACC_AWBActive"

    const-string v5, "\u667a\u9a7e\u62a5\u6587 ADC_244 / ACC AWB \u6fc0\u6d3b\u72b6\u6001"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const/4 v13, 0x0

    const-string v14, "ADC_244/ACC_FCWLatentWarning"

    const-string v10, "ADC_244/ACC_FCWLatentWarning"

    const-string v11, "\u667a\u9a7e\u62a5\u6587 ADC_244 / ACC \u524d\u78b0\u6f5c\u5728\u9884\u8b66"

    const/4 v12, 0x0

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const/4 v8, 0x0

    const-string v9, "ADC_244/ACC_FCWPreWarning"

    const-string v5, "ADC_244/ACC_FCWPreWarning"

    const-string v6, "\u667a\u9a7e\u62a5\u6587 ADC_244 / ACC \u524d\u78b0\u9884\u8b66"

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v2, v3, v10}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_ADC_307(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const/4 v7, 0x0

    const-string v8, "ADC_31A/ACC_Voiceinfo"

    const-string v4, "ADC_31A/ACC_Voiceinfo"

    const-string v5, "ADC \u62a5\u6587 31A / ACC Voiceinfo"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_ADC_382(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x32000007

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "Ais/android-cmd"

    const-string v5, "\u667a\u80fd\u7cfb\u7edf / android cmd"

    const-string v8, "Ais/android-cmd"

    move-object v3, v2

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x3200000b

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v10, "Ais/AndroidCmd/AvmCloseMethod"

    const-string v11, "\u667a\u80fd\u7cfb\u7edf / Android \u547d\u4ee4 / AVM Close Method"

    const-string v14, "Ais/AndroidCmd/AvmCloseMethod"

    move-object v9, v3

    move-object v12, v13

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v10, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x32000009

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v5, "Ais/androidCmd/executeStatus"

    const-string v6, "\u667a\u80fd\u7cfb\u7edf / android Cmd / execute Status"

    const-string v9, "Ais/androidCmd/executeStatus"

    move-object v4, v10

    move-object v7, v8

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v5, 0x3200000a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v12, "Ais/AndroidCmd/PopupStatus"

    const-string v13, "\u667a\u80fd\u7cfb\u7edf / Android \u547d\u4ee4 / Popup Status"

    const-string v16, "Ais/AndroidCmd/PopupStatus"

    move-object v11, v4

    move-object v14, v15

    invoke-direct/range {v11 .. v16}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v2, v3, v10, v4}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_AmbLightAPP(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v3, 0x2b000007

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v4, "AMP/A2BStatus"

    const-string v5, "\u529f\u653e / A2B \u72b6\u6001"

    const-string v8, "AMP/A2BStatus"

    move-object v3, v2

    move-object v6, v7

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const-wide/32 v4, 0x7000033

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v10, "AMP/MuteStatus"

    const-string v11, "\u529f\u653e / Mute Status"

    const-string v14, "AMP/MuteStatus"

    move-object v9, v3

    move-object v12, v13

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_AMP_53B(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_APA(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_AVM(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;

    const/4 v7, 0x0

    const-string v8, "Avm/Slope_Trigger"

    const-string v4, "Avm/Slope_Trigger"

    const-string v5, "AVM / Slope Trigger"

    const/4 v6, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogFieldDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_AVMCalibration(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Battery(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_BodyInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_C385(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_245(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_2D2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_319(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_324(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_3BD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_CDC_507(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Chime(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_controlRadio(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_ControlScreen(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_custom_input_event_1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_custom_input_event_2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_custom_input_event_long_1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_custom_input_event_long_2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Diagnosis(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_DidControlRgbShow(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Display(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_DMS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Driving(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_DrivingInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_EnergyInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_EngineeringMode(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_FactoryTest(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Fault(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Fragrance(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Front(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_FuelBar(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GeneralSts(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GPS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_1C2(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_1E5(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_244(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_266(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_288(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_2A4(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_2AD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_2E1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_307(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_31A(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_352(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_36C(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_384(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_39A(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_3B1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_3B5(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_5F1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_GW_5FF(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_HUD(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_HUD_3E9(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_IC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_icdriving(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_icinput(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_IcTelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_ictelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Ictelltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_IcWarning(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Info(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Infotainment(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_IPC_POWER_VOLTAGE(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_KeyInput(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Light(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_List(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Media(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_MeiXing(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_MIC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_misc_service(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_music(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_music_req(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Navigation(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_PilotLamp(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Power(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_PowerOff(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_PsmTVMod(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_QuickSet(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_RainLightInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_RRS_2E1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Screen(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Sensor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_SoC(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_SOS(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_SunShade(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_SystemMonitor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_SystemSetting(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_TBox(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_TBOX_2F7(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Telltale(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_time_12_24(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_TURN_54B(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_TurnLight(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_uartrpc_svc(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_update(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Uuid(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VCU_1A1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VCU_2A1(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VCU_309(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_vehctrlSts(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Vehicle(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleBody(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleCharge(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleDoor(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleInfo(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleMaintenance(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleSeat(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleSettings(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleWheel(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_VehicleWindow(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;->access$fields_Warning(Lcom/deepalhome/launcher/util/carlog/DefaultVehicleLogRegistryGenerated;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method
