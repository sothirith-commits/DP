.class public final Lcom/deepalhome/mitemp/MiTemp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

.field public static final _deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public static final _pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public static volatile appContext:Landroid/content/Context;

.field public static final deviceFlow:Lkotlinx/coroutines/flow/StateFlow;

.field public static knownAddressesAtPairingStart:Ljava/util/Set;

.field public static lastConnectedAddress:Ljava/lang/String;

.field public static manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

.field public static final manualDisconnectAddresses:Ljava/util/LinkedHashSet;

.field public static final pairingFlow:Lkotlinx/coroutines/flow/StateFlow;

.field public static pairingTargetAddress:Ljava/lang/String;

.field public static pairingTimeoutJob:Lkotlinx/coroutines/Job;

.field public static pendingManualConnectAddress:Ljava/lang/String;

.field public static prepareTimeoutJob:Lkotlinx/coroutines/Job;

.field public static reconnectJob:Lkotlinx/coroutines/Job;

.field public static volatile repository:Lcom/deepalhome/mitemp/MiThermometerRepository;

.field public static final scope:Lkotlinx/coroutines/CoroutineScope;

.field public static stateObserverJob:Lkotlinx/coroutines/Job;

.field public static volatile storage:Lcom/deepalhome/mitemp/MiTempDeviceStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/mitemp/MiTemp;

    invoke-direct {v0}, Lcom/deepalhome/mitemp/MiTemp;-><init>()V

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->knownAddressesAtPairingStart:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->manualDisconnectAddresses:Ljava/util/LinkedHashSet;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->deviceFlow:Lkotlinx/coroutines/flow/StateFlow;

    sget-object v0, Lcom/deepalhome/mitemp/MiTempPairingState$Idle;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPairingState$Idle;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->_pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->pairingFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$nextReconnectCandidate(Lcom/deepalhome/mitemp/MiTemp;Ljava/lang/String;)Lcom/deepalhome/mitemp/MiTempDevice;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v3, v2, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->manualDisconnectAddresses:Ljava/util/LinkedHashSet;

    iget-object v2, v2, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v2, v2, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    if-nez v1, :cond_5

    :cond_4
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    :cond_5
    return-object v1
.end method

.method public static completePairing(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiTemp;->latestSnapshot(Ljava/lang/String;)Lcom/deepalhome/mitemp/MiTempDevice;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->prepareTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    new-instance v0, Lcom/deepalhome/mitemp/MiTempPairingState$Success;

    invoke-direct {v0, p0}, Lcom/deepalhome/mitemp/MiTempPairingState$Success;-><init>(Lcom/deepalhome/mitemp/MiTempDevice;)V

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->_pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->persistDevices()V

    return-void
.end method

.method public static latestSnapshot(Ljava/lang/String;)Lcom/deepalhome/mitemp/MiTempDevice;
    .locals 5

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-nez p0, :cond_2

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v3, v3, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    sget-object v4, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    if-ne v3, v4, :cond_0

    move-object v1, v2

    :cond_1
    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    if-nez v1, :cond_5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v3, v3, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v1, v2

    :cond_4
    check-cast v1, Lcom/deepalhome/mitemp/MiTempDevice;

    :cond_5
    :goto_0
    return-object v1
.end method

.method public static persistDevices()V
    .locals 8

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->storage:Lcom/deepalhome/mitemp/MiTempDeviceStorage;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "devices"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/mitemp/MiTempDevice;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    const-string v6, "address"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "name"

    iget-object v6, v3, Lcom/deepalhome/mitemp/MiTempDevice;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->customName:Ljava/lang/String;

    if-nez v5, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_0
    const-string v6, "customName"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->batteryPercent:Ljava/lang/Integer;

    sget v6, Lcom/deepalhome/mitemp/MiTempDeviceStorage;->$r8$clinit:I

    const-string v6, "batteryPercent"

    if-nez v5, :cond_1

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_1
    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->connectionStatus:Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "connectionStatus"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, v3, Lcom/deepalhome/mitemp/MiTempDevice;->lastUpdatedAt:Ljava/lang/Long;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    :goto_2
    const-string v7, "lastUpdatedAt"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v3, v3, Lcom/deepalhome/mitemp/MiTempDevice;->latestReading:Lcom/deepalhome/mitemp/MiReading;

    if-eqz v3, :cond_4

    iget v5, v3, Lcom/deepalhome/mitemp/MiReading;->temperatureCelsius:F

    float-to-double v5, v5

    const-string v7, "temperatureCelsius"

    invoke-virtual {v4, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "humidityPercent"

    iget v6, v3, Lcom/deepalhome/mitemp/MiReading;->humidityPercent:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v3, v3, Lcom/deepalhome/mitemp/MiReading;->batteryPercent:Ljava/lang/Integer;

    const-string v5, "readingBatteryPercent"

    if-nez v3, :cond_3

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_4
    :goto_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_5
    iget-object v0, v0, Lcom/deepalhome/mitemp/MiTempDeviceStorage;->file:Ljava/io/File;

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v1, v2}, Lkotlin/io/FilesKt__FileReadWriteKt;->writeText(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiTemp.init() not called"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reconnect(Ljava/lang/String;)V
    .locals 9

    const-string v0, "address"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->manualDisconnectAddresses:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_2
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->connect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-object p0, Lcom/deepalhome/mitemp/MiTemp;->pendingManualConnectAddress:Ljava/lang/String;

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_3

    invoke-static {p0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    new-instance v6, Lcom/deepalhome/mitemp/MiTemp$startManualConnectTimeout$1;

    const/4 p0, 0x2

    invoke-direct {v6, p0, v2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    goto :goto_0

    :cond_4
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->pendingManualConnectAddress:Ljava/lang/String;

    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_5

    invoke-static {v3, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_5
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->manualConnectTimeoutJob:Lkotlinx/coroutines/Job;

    sget-object v2, Lcom/deepalhome/mitemp/MiTempReconnectLogic;->INSTANCE:Lcom/deepalhome/mitemp/MiTempReconnectLogic;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v0, v1

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/deepalhome/mitemp/MiTemp;->requestAutoReconnect(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static removeDevice(Ljava/lang/String;)V
    .locals 5

    const-string v0, "address"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->lastConnectedAddress:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    iget-object v0, v0, Lcom/deepalhome/mitemp/MiThermometerRepository;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v0, v0, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->disconnect()V

    :cond_2
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v4, v4, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->persistDevices()V

    return-void
.end method

.method public static requestAutoReconnect(Ljava/lang/String;)V
    .locals 9

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->appContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    :cond_1
    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;

    const/4 v1, 0x0

    invoke-direct {v6, p0, v0, v1}, Lcom/deepalhome/mitemp/MiTemp$requestAutoReconnect$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/mitemp/MiTemp;->reconnectJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;
    .locals 2

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->repository:Lcom/deepalhome/mitemp/MiThermometerRepository;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiTemp.init() not called"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sortedDevices(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$compareByDescending$1;

    invoke-direct {v0}, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$compareByDescending$1;-><init>()V

    new-instance v1, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    new-instance v0, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/mitemp/MiTemp$sortedDevices$$inlined$thenBy$1;-><init>(Ljava/util/Comparator;I)V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static stopPairing(Z)V
    .locals 7

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->pairingTimeoutJob:Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->prepareTimeoutJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->prepareTimeoutJob:Lkotlinx/coroutines/Job;

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;->stopScan()V

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->knownAddressesAtPairingStart:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v1

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiThermometerRepository;->state:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/mitemp/MiThermometerUiState;

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiThermometerUiState;->connectedDevice:Lcom/deepalhome/mitemp/MiScanDevice;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/deepalhome/mitemp/MiScanDevice;->address:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->requireRepository()Lcom/deepalhome/mitemp/MiThermometerRepository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/mitemp/MiThermometerRepository;->disconnect()V

    :cond_3
    sget-object v1, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v6, v6, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v1, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->persistDevices()V

    :cond_6
    sput-object v2, Lcom/deepalhome/mitemp/MiTemp;->pairingTargetAddress:Ljava/lang/String;

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->knownAddressesAtPairingStart:Ljava/util/Set;

    if-eqz p0, :cond_7

    sget-object p0, Lcom/deepalhome/mitemp/MiTemp;->_pairingFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v0, Lcom/deepalhome/mitemp/MiTempPairingState$Idle;->INSTANCE:Lcom/deepalhome/mitemp/MiTempPairingState$Idle;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static updateDevice(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/mitemp/MiTempDevice;

    iget-object v4, v4, Lcom/deepalhome/mitemp/MiTempDevice;->address:Ljava/lang/String;

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-gez v3, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/deepalhome/mitemp/MiTemp;->sortedDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/deepalhome/mitemp/MiTemp;->persistDevices()V

    return-void
.end method
