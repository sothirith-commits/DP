.class public final Lcom/deepalhome/tuotuotie/BleDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

.field public static final _deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public static final _eventFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

.field public static bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public static final connections:Ljava/util/LinkedHashMap;

.field public static final deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public static final devices:Ljava/util/ArrayList;

.field public static final eventFlow:Lkotlinx/coroutines/flow/SharedFlow;

.field public static reconnectJob:Lkotlinx/coroutines/Job;

.field public static scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

.field public static final scope:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-direct {v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;-><init>()V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connections:Ljava/util/LinkedHashMap;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0x40

    invoke-static {v3, v4, v1, v2, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->_eventFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->eventFlow:Lkotlinx/coroutines/flow/SharedFlow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$dispatchScanResult(Lcom/deepalhome/tuotuotie/BleDeviceManager;Landroid/bluetooth/le/ScanResult;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/tuotuotie/BleDevice;

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v0, "getAddress(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasConnectPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "BleDeviceManager"

    const-string v3, "Unknown"

    if-nez v0, :cond_1

    sget-object p1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1f

    if-lt v0, v4, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    goto :goto_0

    :cond_0
    const-string v0, "manifest bluetooth permissions"

    :goto_0
    const-string v4, "Failed to read scanned device name: missing permission "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {v2, v0, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v2, v3

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, p1

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to read scanned device name: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v6, 0x3c

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/tuotuotie/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/LinkedHashMap;I)V

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static stopScan$tuotuotie_release()V
    .locals 4

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v2, "BleDeviceManager"

    const-string v3, "Stop BLE scan"

    invoke-static {v1, v2, v3}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->stopScanSafely(Landroid/bluetooth/le/ScanCallback;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scanCallback:Lcom/deepalhome/tuotuotie/BleDeviceManager$startScan$2;

    :cond_0
    return-void
.end method

.method public static stopScanSafely(Landroid/bluetooth/le/ScanCallback;)V
    .locals 5

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->INSTANCE:Lcom/deepalhome/tuotuotie/BlePermissionHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BlePermissionHelper;->hasScanPermission(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BleDeviceManager"

    if-nez v0, :cond_1

    sget-object p0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    :goto_0
    const-string v2, "Skipping stop-scan: missing permission "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {v1, v0, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to stop BLE scan: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized connectDevice$tuotuotie_release(Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "address"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v3, v3, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;

    if-nez v1, :cond_2

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v1, "BleDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection failed: device not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/tuotuotie/BleConnection;

    if-eqz v3, :cond_4

    iget-object v0, v3, Lcom/deepalhome/tuotuotie/BleConnection;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-ne v0, v4, :cond_3

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v2, "BleDeviceManager"

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reusing existing connection object to reconnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/tuotuotie/BleConnection;->connect()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v4, "BleDeviceManager"

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    iget-object v3, v3, Lcom/deepalhome/tuotuotie/BleConnection;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping duplicate connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "), state="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, p1, v2}, Lcom/deepalhome/tuotuotie/BleLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_2
    new-instance v8, Lcom/deepalhome/tuotuotie/BleConnection;

    iget-object v3, v1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v4, v1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    new-instance v5, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;

    invoke-direct {v5, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;

    invoke-direct {v6, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$3;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$3;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/deepalhome/tuotuotie/BleConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$1;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$2;Lcom/deepalhome/tuotuotie/BleDeviceManager$connectDevice$connection$3;)V

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v2, "BleDeviceManager"

    iget-object v1, v1, Lcom/deepalhome/tuotuotie/BleDevice;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initiating device connection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/deepalhome/tuotuotie/BleConnection;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized disconnectDevice$tuotuotie_release(Ljava/lang/String;)V
    .locals 3

    const-string v0, "Disconnecting device: "

    monitor-enter p0

    :try_start_0
    const-string v1, "address"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v2, "BleDeviceManager"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connections:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BleConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->updateConnectionState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized emitDeviceSnapshot()V
    .locals 11

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v3, v4, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-static {v3}, Lkotlin/collections/MapsKt__MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-interface {v0, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionState$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleConnectionState;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "address"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->connections:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BleConnection;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/tuotuotie/BleConnection;->state:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/tuotuotie/BleConnectionState;

    if-nez v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v2, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;

    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDevice$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleDevice;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "address"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v2, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/deepalhome/tuotuotie/BleDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDevices$tuotuotie_release()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getPendingReconnectDevices()Ljava/util/ArrayList;
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getDevices$tuotuotie_release()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    sget-object v3, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    iget-object v2, v2, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getConnectionState$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const/4 v1, 0x3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final declared-synchronized removeDevice$tuotuotie_release(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "address"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->disconnectDevice$tuotuotie_release(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    new-instance v1, Lcom/deepalhome/tuotuotie/BleDeviceManager$removeDevice$removed$1;

    invoke-direct {v1, p1}, Lcom/deepalhome/tuotuotie/BleDeviceManager$removeDevice$removed$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final requestAutoReconnect$tuotuotie_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "triggerAddress"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "reason"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getPendingReconnectDevices()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    const-string v0, "BleDeviceManager"

    const-string v7, ", reason="

    if-eqz p0, :cond_0

    sget-object p0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Skipping auto-reconnect direct-connect loop: no pending device to connect, trigger="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->reconnectJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    sget-object p0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    sget-object v5, Lcom/deepalhome/tuotuotie/BleDeviceManager$requestAutoReconnect$1;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager$requestAutoReconnect$1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x1f

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Auto-reconnect direct-connect loop already running: trigger="

    const-string v3, ", pending="

    invoke-static {v2, p1, v7, p2, v3}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v4, Lcom/deepalhome/tuotuotie/BleDeviceManager$requestAutoReconnect$2;

    const/4 p0, 0x0

    invoke-direct {v4, p1, p2, v1, p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager$requestAutoReconnect$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->reconnectJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final declared-synchronized updateConnectionState(Lcom/deepalhome/tuotuotie/BleConnectionState;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v2, v2, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-gez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object p2, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v0, v2, Lcom/deepalhome/tuotuotie/BleDevice;->connectionState:Lcom/deepalhome/tuotuotie/BleConnectionState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, p1, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, p1

    :try_start_2
    invoke-static/range {v2 .. v8}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized upsertDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getConnectionState$tuotuotie_release(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleConnectionState;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/tuotuotie/BleDevice;

    iget-object v3, v3, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v4, p1, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method
