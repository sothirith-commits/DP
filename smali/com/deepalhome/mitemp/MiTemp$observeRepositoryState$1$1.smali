.class public final synthetic Lcom/deepalhome/mitemp/MiTemp$observeRepositoryState$1$1;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    iput p6, p0, Lcom/deepalhome/mitemp/MiTemp$observeRepositoryState$1$1;->$r8$classId:I

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iget v2, v0, Lcom/deepalhome/mitemp/MiTemp$observeRepositoryState$1$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, p2

    check-cast v2, Lkotlin/coroutines/Continuation;

    iget-object v0, v0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/widget/MiTempWidgetView;

    sget v2, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->$r8$clinit:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/widget/MiTempWidgetView;->refreshContent(Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v2, p1

    check-cast v2, Lcom/deepalhome/mitemp/MiThermometerUiState;

    move-object/from16 v3, p2

    check-cast v3, Lkotlin/coroutines/Continuation;

    iget-object v0, v0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/mitemp/MiTemp;

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    sget-object v3, Lcom/deepalhome/mitemp/MiTempReconnectLogic;->INSTANCE:Lcom/deepalhome/mitemp/MiTempReconnectLogic;

    sget-object v4, Lcom/deepalhome/mitemp/MiTemp;->lastConnectedAddress:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v5

    :goto_1
    if-eqz v4, :cond_2

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    sget-object v6, Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$1$1;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$1$1;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v6}, Lcom/deepalhome/mitemp/MiTemp;->updateDevice(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->manualDisconnectAddresses:Ljava/util/LinkedHashSet;

    iget-object v4, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    iget-object v6, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-eqz v0, :cond_14

    sget-object v7, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    iget-object v10, v0, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v11, v11, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_4
    move-object v9, v5

    :goto_2
    check-cast v9, Lcom/deepalhome/mitemp/MiTempDevice;

    const/4 v8, 0x0

    iget-object v11, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->batteryPercent:Ljava/lang/Integer;

    if-nez v6, :cond_6

    if-eqz v11, :cond_5

    goto :goto_3

    :cond_5
    move v12, v8

    goto :goto_4

    :cond_6
    :goto_3
    move v12, v1

    :goto_4
    new-instance v15, Lcom/deepalhome/mitemp/MiTempDevice;

    if-eqz v9, :cond_7

    iget-object v13, v9, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    move-object/from16 v16, v13

    goto :goto_5

    :cond_7
    move-object/from16 v16, v5

    :goto_5
    if-nez v11, :cond_8

    if-eqz v9, :cond_9

    iget-object v11, v9, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    :cond_8
    move-object/from16 v17, v11

    goto :goto_6

    :cond_9
    move-object/from16 v17, v5

    :goto_6
    if-nez v6, :cond_b

    if-eqz v9, :cond_a

    iget-object v11, v9, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    move-object/from16 v18, v11

    goto :goto_7

    :cond_a
    move-object/from16 v18, v5

    goto :goto_7

    :cond_b
    move-object/from16 v18, v6

    :goto_7
    if-eqz v12, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_8
    move-object/from16 v20, v9

    goto :goto_9

    :cond_c
    if-eqz v9, :cond_d

    iget-object v9, v9, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    goto :goto_8

    :cond_d
    move-object/from16 v20, v5

    :goto_9
    iget-object v14, v0, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    iget-object v0, v0, Lcom/deepalhome/mitemp/MiScanDevice;->name:Ljava/lang/String;

    iget-object v9, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    move-object v13, v15

    move-object v11, v15

    move-object v15, v0

    move-object/from16 v19, v9

    invoke-direct/range {v13 .. v20}, Lcom/deepalhome/mitemp/MiTempDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/deepalhome/mitemp/MiReading;Lcom/deepalhome/mitemp/MiConnectionStatus;Ljava/lang/Long;)V

    invoke-interface {v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v12, v12, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    iget-object v13, v11, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_b

    :cond_e
    add-int/2addr v8, v1

    goto :goto_a

    :cond_f
    const/4 v8, -0x1

    :goto_b
    if-ltz v8, :cond_10

    invoke-virtual {v0, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_10
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    invoke-static {v0}, Lcom/deepalhome/mitemp/MiTemp;->sortedDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->persistDevices()V

    invoke-interface {v3, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne v4, v0, :cond_13

    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->pendingManualConnectAddress:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_11

    invoke-static {v0, v5, v1, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_11
    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_12

    invoke-static {v0, v5, v1, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_12
    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    :cond_13
    sput-object v10, Lcom/deepalhome/mitemp/MiTemp;->lastConnectedAddress:Ljava/lang/String;

    goto :goto_d

    :cond_14
    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->pendingManualConnectAddress:Ljava/lang/String;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_15

    invoke-static {v0, v5, v1, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_15
    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->lastConnectedAddress:Ljava/lang/String;

    if-eqz v0, :cond_16

    sget-object v7, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    sget-object v8, Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp$syncFromRepositoryState$2$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Lcom/deepalhome/mitemp/MiTemp;->updateDevice(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-static {v0}, Lcom/deepalhome/mitemp/MiTemp;->requestAutoReconnect(Ljava/lang/String;)V

    :cond_16
    sput-object v5, Lcom/deepalhome/mitemp/MiTemp;->lastConnectedAddress:Ljava/lang/String;

    :goto_d
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/deepalhome/mitemp/MiTempPairingState$Scanning;

    if-eqz v3, :cond_1c

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    if-eqz v3, :cond_17

    goto :goto_f

    :cond_17
    iget-object v3, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->scanDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/deepalhome/mitemp/MiScanDevice;

    sget-object v9, Lcom/deepalhome/mitemp/MiTemp;->knownAddressesAtPairingStart:Ljava/util/Set;

    iget-object v8, v8, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v1

    if-eqz v8, :cond_18

    goto :goto_e

    :cond_19
    move-object v7, v5

    :goto_e
    check-cast v7, Lcom/deepalhome/mitemp/MiScanDevice;

    if-nez v7, :cond_1a

    goto :goto_f

    :cond_1a
    iget-object v3, v7, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    sput-object v3, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/deepalhome/mitemp/MiThermometerRepository;->connect(Ljava/lang/String;)Z

    new-instance v3, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;

    new-instance v15, Lcom/deepalhome/mitemp/MiTempDevice;

    sget-object v14, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v9, v7, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    iget-object v10, v7, Lcom/deepalhome/mitemp/MiScanDevice;->name:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v8, v15

    move-object v1, v15

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/deepalhome/mitemp/MiTempDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/deepalhome/mitemp/MiReading;Lcom/deepalhome/mitemp/MiConnectionStatus;Ljava/lang/Long;)V

    invoke-direct {v3, v1}, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;)V

    invoke-interface {v0, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1b

    const/4 v3, 0x1

    invoke-static {v1, v5, v3, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1b
    new-instance v10, Lcom/deepalhome/mitemp/MiTemp$discoverPairingTarget$1;

    const/4 v1, 0x2

    invoke-direct {v10, v1, v5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    sget-object v7, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    :cond_1c
    :goto_f
    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    if-nez v1, :cond_1d

    goto/16 :goto_11

    :cond_1d
    iget-object v2, v2, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-nez v2, :cond_1f

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/deepalhome/mitemp/MiTempPairingState$Connecting;

    if-nez v1, :cond_1e

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;

    if-eqz v1, :cond_25

    :cond_1e
    new-instance v1, Lcom/deepalhome/mitemp/MiTempPairingState$Failed;

    const-string v2, "Failed to connect to Xiaomi thermometer"

    invoke-direct {v1, v2}, Lcom/deepalhome/mitemp/MiTempPairingState$Failed;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_11

    :cond_1f
    iget-object v3, v2, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    sget-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-eq v4, v3, :cond_20

    goto/16 :goto_11

    :cond_20
    invoke-static {v1}, Lcom/deepalhome/mitemp/MiTemp;->latestSnapshot(Ljava/lang/String;)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object v3

    if-nez v3, :cond_21

    new-instance v3, Lcom/deepalhome/mitemp/MiTempDevice;

    sget-object v13, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v8, v2, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    iget-object v9, v2, Lcom/deepalhome/mitemp/MiScanDevice;->name:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v7, v3

    invoke-direct/range {v7 .. v14}, Lcom/deepalhome/mitemp/MiTempDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/deepalhome/mitemp/MiReading;Lcom/deepalhome/mitemp/MiConnectionStatus;Ljava/lang/Long;)V

    :cond_21
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;

    if-nez v2, :cond_24

    new-instance v2, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;

    invoke-direct {v2, v3}, Lcom/deepalhome/mitemp/MiTempPairingState$Preparing;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;)V

    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    iget-object v2, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v2, :cond_22

    const-string v2, "No active connection currently"

    invoke-virtual {v0, v2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    goto :goto_10

    :cond_22
    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v12, "readTemperature(Landroid/bluetooth/BluetoothGatt;)Z"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/deepalhome/mitemp/MiThermometerRepository;

    const-string v11, "readTemperature"

    const/16 v14, 0x10

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v7 .. v14}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v4, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->gattOperationQueue:Lcom/deepalhome/mitemp/GattOperationQueue;

    invoke-virtual {v4, v2, v3}, Lcom/deepalhome/mitemp/GattOperationQueue;->enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    new-instance v3, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;

    const-string v12, "readBattery(Landroid/bluetooth/BluetoothGatt;)Z"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/deepalhome/mitemp/MiThermometerRepository;

    const-string v11, "readBattery"

    const/16 v14, 0x11

    move-object v7, v3

    move-object v9, v0

    invoke-direct/range {v7 .. v14}, Lcom/deepalhome/launcher/util/CarInfoUtil$start$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v4, v2, v3}, Lcom/deepalhome/mitemp/GattOperationQueue;->enqueue(Landroid/bluetooth/BluetoothGatt;Lkotlin/jvm/functions/Function1;)V

    const-string v2, "Added to refresh reading task"

    invoke-virtual {v0, v2}, Lcom/deepalhome/mitemp/MiThermometerRepository;->appendLog(Ljava/lang/String;)V

    :goto_10
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->prepareTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_23

    const/4 v2, 0x1

    invoke-static {v0, v5, v2, v5}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_23
    new-instance v10, Lcom/deepalhome/mitemp/MiTemp$advancePairingState$1;

    invoke-direct {v10, v5, v1}, Lcom/deepalhome/mitemp/MiTemp$advancePairingState$1;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/String;)V

    sget-object v7, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->prepareTimeoutJob:Lkotlinx/coroutines/Job;

    :cond_24
    if-eqz v6, :cond_25

    invoke-static {v1}, Lcom/deepalhome/mitemp/MiTemp;->completePairing(Ljava/lang/String;)V

    :cond_25
    :goto_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
